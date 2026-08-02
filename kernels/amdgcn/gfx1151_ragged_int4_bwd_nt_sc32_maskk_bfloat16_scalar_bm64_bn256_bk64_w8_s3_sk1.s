	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[22:23], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s8, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v94, 15, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s22, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s23, 0xff
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
	s_ashr_i32 s37, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s36, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s36, s37
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
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s8, s36
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s6, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s6, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s8
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s6, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_i32 s5, s5, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s10, s2, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_hi_u32 s4, s9, s5
	s_abs_i32 s7, s10
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s7, s9
	s_xor_b32 s11, s10, s36
	s_mul_i32 s12, s9, s8
	s_ashr_i32 s38, s11, 31
	s_sub_i32 s7, s7, s12
	s_add_i32 s11, s9, 1
	s_sub_i32 s12, s7, s8
	s_cmp_ge_u32 s7, s8
	.loc	1 1466 43                       ; ragged.py:1466:43
	s_mul_i32 s29, s6, s22
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cselect_b32 s9, s11, s9
	s_cselect_b32 s7, s12, s7
	s_add_i32 s11, s9, 1
	s_cmp_ge_u32 s7, s8
	s_cselect_b32 s7, s11, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	s_xor_b32 s39, s7, s38
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s7, s6, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s11, s39, s38
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[8:9], s[6:7], 2
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s12, s11, s36
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s28, s11, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s7, s10, s12
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s8
	s_addc_u32 s5, s5, s9
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s28, v94
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s35, s[4:5], 0x0
	s_mov_b32 s8, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, 16, v1
	v_or_b32_e32 v3, 32, v1
	v_or_b32_e32 v4, 48, v1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s5, s22, v1
	v_cmp_gt_i32_e64 s4, s22, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s20, s22, v3
	v_cmp_gt_i32_e64 s19, s22, v4
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s27, s35, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s27, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge73_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s18, s28, s29
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s8, -1
                                        ; implicit-def: $sgpr18
.LBB0_3:                                ; %Flow351
	s_load_b64 s[24:25], s[0:1], 0x28
	v_dual_mov_b32 v73, 0 :: v_dual_and_b32 v120, 0xf0, v0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_mov_b32_e32 v137, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_lshl_b32 s21, s7, 8
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.lr.ph72
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x38
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 2, v0
	v_dual_mov_b32 v137, 0 :: v_dual_lshlrev_b32 v2, 2, v0
	v_bfe_i32 v5, v0, 5, 1
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s0, s27, 31
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s28, v1
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s1, s35, 31
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s27, s27, s0
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s0, s35, s1
	v_dual_mov_b32 v134, 0 :: v_dual_and_b32 v69, 12, v2
	s_ashr_i32 s33, s0, 1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s22, v3
	v_dual_mov_b32 v132, 0 :: v_dual_lshlrev_b32 v3, 4, v0
	v_dual_mov_b32 v133, 0 :: v_dual_and_b32 v2, 0x37c, v2
	v_dual_mov_b32 v128, 0 :: v_dual_and_b32 v5, 0x88, v5
	s_add_i32 s18, s28, s29
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s7, s3, 4
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s27, s27, 1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s9, 0xffff
	s_and_b32 s9, s11, 0xffff
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v4, s18, v1
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v3, 0x70, v3
	v_bfe_i32 v6, v0, 3, 1
	v_xor_b32_e32 v142, v5, v2
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[70:71], null, s16, v1, v[69:70]
	s_bitcmp1_b32 s35, 0
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v1, s18, v94
	s_mul_i32 s37, s37, s6
	s_cselect_b32 s35, -1, 0
	s_sub_i32 s1, s38, s37
	v_and_or_b32 v140, 0x88, v6, v3
	s_sub_i32 s1, s1, s39
	v_dual_mov_b32 v131, 0 :: v_dual_and_b32 v148, 0x70, v2
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v5, 48, v1
	v_mul_lo_u32 v152, v1, s17
	v_dual_mov_b32 v114, 0 :: v_dual_lshlrev_b32 v1, 5, v0
	s_mul_i32 s36, s36, s1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v138, s21, v0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_mul_i32 s3, s23, s6
	s_lshl_b32 s1, s36, 8
	v_mul_lo_u32 v153, v2, s17
	v_mul_lo_u32 v154, v3, s17
	v_dual_mov_b32 v125, 0 :: v_dual_lshlrev_b32 v2, 2, v120
	v_dual_mov_b32 v112, 0 :: v_dual_lshlrev_b32 v3, 1, v0
	v_dual_mov_b32 v110, 0 :: v_dual_and_b32 v1, 32, v1
	s_add_i32 s1, s1, s3
	s_lshl_b32 s2, s2, 8
	v_mul_lo_u32 v141, v138, s16
	v_mul_lo_u32 v155, v5, s17
	v_add3_u32 v5, s1, s2, v0
	v_dual_mov_b32 v108, 0 :: v_dual_and_b32 v3, 28, v3
	v_add3_u32 v1, 0, v2, v1
	v_dual_mov_b32 v123, 0 :: v_dual_lshlrev_b32 v2, 1, v120
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v156, s16, v5
	v_mad_u64_u32 v[71:72], null, v4, s16, v[69:70]
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v139, 0, v94
	v_xor_b32_e32 v143, 8, v140
	v_or_b32_e32 v144, 0x300, v0
	v_or_b32_e32 v145, 0x700, v0
	v_or_b32_e32 v146, 0xb00, v0
	v_or_b32_e32 v147, 0xf00, v0
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v149, 13, v141
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v150, 14, v141
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v151, 15, v141
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v157, v1, v3
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v158, 0, v2
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v72, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v79, 0
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v75, 0
	v_mov_b32_e32 v73, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_add_i32 s40, s27, -1
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 1421 13 is_stmt 0             ; ragged.py:1421:13
	s_mov_b32 s26, 0
	.loc	1 1468 43 is_stmt 1             ; ragged.py:1468:43
	s_mul_i32 s22, s3, s16
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s34, s6, s17
	s_mov_b32 s28, s8
	s_mov_b32 s8, s10
	s_mul_i32 s41, s18, s16
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s17, s40, 4
	s_mov_b32 s36, s12
	s_mov_b32 s37, s13
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
	s_mov_b32 s1, 0
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s23, v138
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v65, v152, s26, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s1, s26, s34
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v66, v153, s26, 1
	v_add_lshl_u32 v67, v154, s26, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s1, s1, s23
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v68, v155, s26, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v159, v138, s1, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v65, 0x80000000, v65, s5
	v_cndmask_b32_e64 v66, 0x80000000, v66, s4
	v_cndmask_b32_e64 v67, 0x80000000, v67, s20
	v_cndmask_b32_e64 v68, 0x80000000, v68, s19
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_dual_cndmask_b32 v159, 0x80000000, v159 :: v_dual_add_nc_u32 v156, 16, v156
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x3
	buffer_load_u16 v65, v65, s[36:39], 0 offen
	buffer_load_u16 v66, v66, s[36:39], 0 offen
	buffer_load_u16 v67, v67, s[36:39], 0 offen
	buffer_load_u16 v68, v68, s[36:39], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v159, v159, s[12:15], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v161, v2
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
	s_add_i32 s2, s26, 1
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v71, 16, v71
	s_lshl_b32 s1, s2, 4
	s_cmp_lg_u32 s26, s17
	s_mov_b32 s26, s2
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v2, 16, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v42, v42, v2 :: v_dual_lshlrev_b32 v1, 16, v65
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v58, v58, v1 :: v_dual_lshlrev_b32 v3, 16, v67
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v60, v60, v1 :: v_dual_lshlrev_b32 v65, 16, v68
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v59, v59, v1 :: v_dual_lshlrev_b32 v4, 16, v159
	v_mul_f32_e32 v57, v57, v1
	v_dual_mul_f32 v61, v61, v1 :: v_dual_mul_f32 v44, v44, v2
	v_dual_mul_f32 v62, v62, v1 :: v_dual_mul_f32 v41, v41, v2
	v_dual_mul_f32 v63, v63, v1 :: v_dual_mul_f32 v46, v46, v2
	v_dual_mul_f32 v64, v64, v1 :: v_dual_mul_f32 v43, v43, v2
	v_dual_mul_f32 v49, v49, v1 :: v_dual_mul_f32 v48, v48, v2
	v_dual_mul_f32 v50, v50, v1 :: v_dual_mul_f32 v45, v45, v2
	v_dual_mul_f32 v51, v51, v1 :: v_dual_mul_f32 v34, v34, v2
	v_dual_mul_f32 v52, v52, v1 :: v_dual_mul_f32 v47, v47, v2
	v_dual_mul_f32 v53, v53, v1 :: v_dual_mul_f32 v36, v36, v2
	v_dual_mul_f32 v54, v54, v1 :: v_dual_mul_f32 v33, v33, v2
	v_dual_mul_f32 v55, v55, v1 :: v_dual_mul_f32 v38, v38, v2
	v_dual_mul_f32 v56, v56, v1 :: v_dual_mul_f32 v35, v35, v2
	v_dual_mul_f32 v37, v37, v2 :: v_dual_mul_f32 v26, v26, v3
	v_dual_mul_f32 v39, v39, v2 :: v_dual_mul_f32 v28, v28, v3
	v_dual_mul_f32 v40, v40, v2 :: v_dual_mul_f32 v25, v25, v3
	v_dual_mul_f32 v27, v27, v3 :: v_dual_mul_f32 v66, v9, v65
	v_dual_mul_f32 v29, v29, v3 :: v_dual_mul_f32 v68, v11, v65
	v_dual_mul_f32 v30, v30, v3 :: v_dual_mul_f32 v159, v12, v65
	v_dual_mul_f32 v31, v31, v3 :: v_dual_mul_f32 v168, v13, v65
	v_dual_mul_f32 v32, v32, v3 :: v_dual_mul_f32 v67, v10, v65
	v_dual_mul_f32 v17, v17, v3 :: v_dual_mul_f32 v170, v15, v65
	v_dual_mul_f32 v18, v18, v3 :: v_dual_mul_f32 v171, v16, v65
	v_dual_mul_f32 v19, v19, v3 :: v_dual_mul_f32 v160, v160, v65
	v_dual_mul_f32 v20, v20, v3 :: v_dual_mul_f32 v169, v14, v65
	v_dual_mul_f32 v21, v21, v3 :: v_dual_mul_f32 v162, v162, v65
	v_dual_mul_f32 v22, v22, v3 :: v_dual_mul_f32 v161, v161, v65
	v_dual_mul_f32 v23, v23, v3 :: v_dual_mul_f32 v164, v164, v65
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
	v_mul_f32_e32 v165, v165, v65
	v_mul_f32_e32 v166, v166, v65
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v65, v167, v65 :: v_dual_fmac_f32 v134, v60, v4
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v137, v57, v1 :: v_dual_fmac_f32 v132, v62, v6
	v_dual_fmac_f32 v136, v58, v2 :: v_dual_fmac_f32 v135, v59, v3
	v_dual_fmac_f32 v133, v61, v5 :: v_dual_fmac_f32 v130, v64, v8
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v131, v63, v7 :: v_dual_fmac_f32 v128, v50, v10
	v_dual_fmac_f32 v129, v49, v9 :: v_dual_fmac_f32 v126, v52, v12
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v127, v51, v11 :: v_dual_fmac_f32 v124, v54, v14
	v_dual_fmac_f32 v125, v53, v13 :: v_dual_fmac_f32 v122, v56, v16
	v_dual_fmac_f32 v123, v55, v15 :: v_dual_fmac_f32 v116, v45, v5
	v_dual_fmac_f32 v121, v41, v1 :: v_dual_fmac_f32 v118, v43, v3
	v_dual_fmac_f32 v119, v42, v2 :: v_dual_fmac_f32 v114, v47, v7
	v_dual_fmac_f32 v117, v44, v4 :: v_dual_fmac_f32 v112, v33, v9
	v_dual_fmac_f32 v115, v46, v6 :: v_dual_fmac_f32 v110, v35, v11
	v_dual_fmac_f32 v113, v48, v8 :: v_dual_fmac_f32 v108, v37, v13
	v_dual_fmac_f32 v111, v34, v10 :: v_dual_fmac_f32 v106, v39, v15
	v_dual_fmac_f32 v109, v36, v12 :: v_dual_fmac_f32 v104, v25, v1
	v_dual_fmac_f32 v107, v38, v14 :: v_dual_fmac_f32 v102, v27, v3
	v_dual_fmac_f32 v105, v40, v16 :: v_dual_fmac_f32 v100, v29, v5
	v_dual_fmac_f32 v103, v26, v2 :: v_dual_fmac_f32 v98, v31, v7
	v_dual_fmac_f32 v101, v28, v4 :: v_dual_fmac_f32 v96, v17, v9
	v_dual_fmac_f32 v99, v30, v6 :: v_dual_fmac_f32 v92, v20, v12
	v_dual_fmac_f32 v97, v32, v8 :: v_dual_fmac_f32 v90, v22, v14
	v_dual_fmac_f32 v95, v18, v10 :: v_dual_fmac_f32 v88, v24, v16
	v_dual_fmac_f32 v93, v19, v11 :: v_dual_fmac_f32 v82, v169, v6
	v_dual_fmac_f32 v91, v21, v13 :: v_dual_fmac_f32 v86, v67, v2
	v_dual_fmac_f32 v89, v23, v15 :: v_dual_fmac_f32 v78, v161, v10
	v_dual_fmac_f32 v87, v66, v1 :: v_dual_fmac_f32 v84, v159, v4
	v_dual_fmac_f32 v85, v68, v3 :: v_dual_fmac_f32 v80, v171, v8
	v_dual_fmac_f32 v83, v168, v5 :: v_dual_fmac_f32 v76, v163, v12
	v_dual_fmac_f32 v81, v170, v7 :: v_dual_fmac_f32 v74, v165, v14
	v_dual_fmac_f32 v79, v160, v9 :: v_dual_fmac_f32 v72, v65, v16
	v_fmac_f32_e32 v77, v162, v11
	v_fmac_f32_e32 v75, v164, v13
	v_fmac_f32_e32 v73, v166, v15
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s2, s33, s1
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v1, s2, 0, 16
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s2, v1
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
	s_and_b32 s3, s2, 16
	s_mov_b32 s2, s7
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s7, s3
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v57, 0
	s_mov_b32 s2, s7
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
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1472 38 is_stmt 1             ; ragged.py:1472:38
	v_add_nc_u32_e32 v65, s2, v156
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v66, s2, v71
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s10, s30
	s_mov_b32 s11, s31
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v163, 0, v140
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_dual_cndmask_b32 v65, 0x80000000, v65 :: v_dual_add_nc_u32 v160, 0, v142
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_cndmask_b32_e64 v159, 0x80000000, v66, s0
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v175, 0, v0
	v_add_nc_u32_e32 v180, v139, v148
	buffer_load_b128 v[65:68], v65, s[8:11], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	buffer_load_b32 v159, v159, s[28:31], 0 offen
	v_add_nc_u32_e32 v171, 0, v143
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v176, 0, v144
	v_add_nc_u32_e32 v177, 0, v145
	v_add_nc_u32_e32 v178, 0, v146
	v_add_nc_u32_e32 v179, 0, v147
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s2, s2, 16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s2, s3
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
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s3, s27, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s6, s3, 16
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s2, s6
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_add_i32 s10, s2, s1
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v65, 1, v69
	.loc	1 1485 30                       ; ragged.py:1485:30
	s_or_b32 s2, s10, 1
	s_or_b32 s3, s10, 2
	s_or_b32 s11, s10, 3
	s_or_b32 s45, s10, 4
	s_or_b32 s46, s10, 5
	s_or_b32 s47, s10, 6
	s_or_b32 s48, s10, 7
	s_or_b32 s49, s10, 8
	s_or_b32 s50, s10, 9
	s_or_b32 s51, s10, 10
	s_or_b32 s52, s10, 11
	s_or_b32 s53, s10, 12
	s_or_b32 s54, s10, 13
	s_or_b32 s55, s10, 14
	s_or_b32 s56, s10, 15
	.loc	1 1494 35                       ; ragged.py:1494:35
	s_sub_i32 s16, s2, s1
	s_sub_i32 s42, s3, s1
	s_sub_i32 s43, s11, s1
	s_sub_i32 s44, s45, s1
	s_sub_i32 s57, s46, s1
	s_sub_i32 s58, s47, s1
	s_sub_i32 s59, s48, s1
	s_sub_i32 s60, s49, s1
	s_sub_i32 s61, s50, s1
	s_sub_i32 s62, s51, s1
	s_sub_i32 s72, s52, s1
	s_sub_i32 s73, s53, s1
	s_sub_i32 s74, s54, s1
	s_sub_i32 s75, s55, s1
	s_sub_i32 s76, s56, s1
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	s_cmp_lt_i32 s16, s6
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v67, 2, v69
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s42, s6
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v68, 3, v69
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s43, s6
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v66, s10, v69
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s44, s6
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v65, s10, v65
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s57, s6
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v67, s10, v67
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s58, s6
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v68, s10, v68
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s59, s6
	.loc	1 1494 35 is_stmt 0             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v159, s1, v66
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s60, s6
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v160, s1, v65
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s61, s6
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v161, s1, v67
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s62, s6
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v162, s1, v68
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s72, s6
	v_cmp_gt_i32_e64 s1, s6, v159
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s73, s6
	.loc	1 1421 19 is_stmt 1             ; ragged.py:1421:19
	v_add_nc_u32_e32 v159, 1, v70
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s74, s6
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v163, 1, v141
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s75, s6
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v164, 2, v141
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s76, s6
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v169, 6, v141
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s57, -1, 0
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cmp_eq_u32 s10, s40
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v170, 7, v141
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s16, -1, 0
	s_cmp_eq_u32 s2, s40
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s2, s6, v160
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s42, -1, 0
	s_cmp_eq_u32 s3, s40
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v160, 2, v70
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s43, -1, 0
	s_cmp_eq_u32 s11, s40
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s3, s6, v161
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s44, -1, 0
	s_cmp_eq_u32 s45, s40
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s6, s6, v162
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s45, -1, 0
	s_cmp_eq_u32 s46, s40
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v161, 3, v70
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s46, -1, 0
	s_cmp_eq_u32 s47, s40
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v171, 8, v141
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s47, -1, 0
	s_cmp_eq_u32 s48, s40
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v172, 9, v141
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s48, -1, 0
	s_cmp_eq_u32 s49, s40
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v173, 10, v141
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s49, -1, 0
	s_cmp_eq_u32 s50, s40
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v174, 11, v141
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s50, -1, 0
	s_cmp_eq_u32 s51, s40
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v175, 12, v141
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s51, -1, 0
	s_cmp_eq_u32 s52, s40
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v189, 0, v142
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s52, -1, 0
	s_cmp_eq_u32 s53, s40
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v190, 0, v140
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s53, -1, 0
	s_cmp_eq_u32 s54, s40
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v192, 0, v0
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s54, -1, 0
	s_cmp_eq_u32 s55, s40
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v197, v139, v148
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s55, -1, 0
	s_cmp_eq_u32 s56, s40
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v191, 0, v143
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s56, -1, 0
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s11, s10, s41
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s1, s0, s1
	v_add_nc_u32_e32 v162, s11, v70
	v_add_nc_u32_e32 v159, s11, v159
	v_add_nc_u32_e32 v160, s11, v160
	v_add_nc_u32_e32 v161, s11, v161
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	s_add_i32 s10, s10, s22
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v162, 0x80000000, v162, s1
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s1, s0, s2
	v_add_nc_u32_e32 v169, s10, v169
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v159, 0x80000000, v159, s1
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s1, s0, s3
	v_add_nc_u32_e32 v170, s10, v170
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v160, 0x80000000, v160, s1
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s1, s0, s6
	v_add_nc_u32_e32 v171, s10, v171
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v161, 0x80000000, v161, s1
	s_clause 0x3
	buffer_load_u8 v165, v162, s[28:31], 0 offen
	buffer_load_u8 v166, v159, s[28:31], 0 offen
	buffer_load_u8 v167, v160, s[28:31], 0 offen
	buffer_load_u8 v168, v161, s[28:31], 0 offen
	.loc	1 1421 19 is_stmt 1             ; ragged.py:1421:19
	v_add_nc_u32_e32 v162, 3, v141
	v_add_nc_u32_e32 v160, s10, v163
	v_add_nc_u32_e32 v163, 4, v141
	v_add_nc_u32_e32 v161, s10, v164
	v_add_nc_u32_e32 v164, 5, v141
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s71
	v_add_nc_u32_e32 v162, s10, v162
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	v_cndmask_b32_e64 v160, 0x80000000, v160, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s70
	v_add_nc_u32_e32 v163, s10, v163
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v161, 0x80000000, v161, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s69
	v_add_nc_u32_e32 v164, s10, v164
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v159, s10, v141
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v162, 0x80000000, v162, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s68
	v_add_nc_u32_e32 v172, s10, v172
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v163, 0x80000000, v163, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s67
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e32 v159, 0x80000000, v159, vcc_lo
	v_cndmask_b32_e64 v164, 0x80000000, v164, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s66
	v_add_nc_u32_e32 v173, s10, v173
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v169, 0x80000000, v169, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s65
	v_add_nc_u32_e32 v174, s10, v174
	v_add_nc_u32_e32 v175, s10, v175
	v_add_nc_u32_e32 v176, s10, v149
	v_add_nc_u32_e32 v177, s10, v150
	v_add_nc_u32_e32 v178, s10, v151
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s10, s30
	s_mov_b32 s11, s31
	v_cndmask_b32_e64 v170, 0x80000000, v170, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s64
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x7
	buffer_load_u8 v179, v159, s[8:11], 0 offen
	buffer_load_u8 v180, v160, s[8:11], 0 offen
	buffer_load_u8 v181, v161, s[8:11], 0 offen
	buffer_load_u8 v182, v162, s[8:11], 0 offen
	buffer_load_u8 v183, v163, s[8:11], 0 offen
	buffer_load_u8 v184, v164, s[8:11], 0 offen
	buffer_load_u8 v169, v169, s[8:11], 0 offen
	buffer_load_u8 v170, v170, s[8:11], 0 offen
	v_cndmask_b32_e64 v159, 0x80000000, v171, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s63
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s2, s40, v65
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v160, 0x80000000, v172, s1
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s62
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s6, s40, v68
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v161, 0x80000000, v173, s1
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s61
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s40, v67
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v162, 0x80000000, v174, s1
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s60
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s2, s2, s35
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v163, 0x80000000, v175, s1
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s59
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s6, s6, s35
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v164, 0x80000000, v176, s1
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s58
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s3, s35
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v171, 0x80000000, v177, s1
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s57
	.loc	1 1499 38 is_stmt 1             ; ragged.py:1499:38
	v_add_nc_u32_e32 v193, 0, v144
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v172, 0x80000000, v178, s1
	s_clause 0x7
	buffer_load_u8 v175, v159, s[8:11], 0 offen
	buffer_load_u8 v176, v160, s[8:11], 0 offen
	buffer_load_u8 v177, v161, s[8:11], 0 offen
	buffer_load_u8 v178, v162, s[8:11], 0 offen
	buffer_load_u8 v185, v163, s[8:11], 0 offen
	buffer_load_u8 v186, v164, s[8:11], 0 offen
	buffer_load_u8 v187, v171, s[8:11], 0 offen
	buffer_load_u8 v188, v172, s[8:11], 0 offen
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s1, s40, v66
	.loc	1 1495 36 is_stmt 0             ; ragged.py:1495:36
	s_and_b32 s10, s16, s35
	s_and_b32 s11, s42, s35
	s_and_b32 s16, s43, s35
	s_and_b32 s43, s45, s35
	s_and_b32 s1, s1, s35
	s_and_b32 s42, s44, s35
	s_and_b32 s44, s46, s35
	s_and_b32 s45, s47, s35
	s_and_b32 s46, s48, s35
	s_and_b32 s47, s49, s35
	s_and_b32 s48, s50, s35
	s_and_b32 s49, s51, s35
	s_and_b32 s50, s52, s35
	s_and_b32 s51, s53, s35
	s_and_b32 s52, s54, s35
	s_and_b32 s53, s55, s35
	s_and_b32 s54, s56, s35
	.loc	1 1499 38 is_stmt 1             ; ragged.py:1499:38
	v_add_nc_u32_e32 v194, 0, v145
	v_add_nc_u32_e32 v195, 0, v146
	v_add_nc_u32_e32 v196, 0, v147
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
	v_cndmask_b16 v65.l, v165.l, v65.l, s1
	v_cndmask_b16 v65.h, v166.l, v65.h, s2
	v_cndmask_b16 v66.l, v167.l, v66.l, s3
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
	v_cndmask_b16 v171.l, v179.l, v67.l, s10
	v_cndmask_b16 v171.h, v180.l, v67.h, s11
	v_cndmask_b16 v172.l, v181.l, v68.l, s16
	v_cndmask_b16 v173.l, v183.l, v159.l, s43
	v_cndmask_b16 v172.h, v182.l, v68.h, s42
	v_cndmask_b16 v173.h, v184.l, v159.h, s44
	v_cndmask_b16 v174.l, v169.l, v160.l, s45
	v_cndmask_b16 v174.h, v170.l, v160.h, s46
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
	v_cndmask_b16 v175.l, v175.l, v161.l, s47
	v_cndmask_b16 v175.h, v176.l, v161.h, s48
	v_cndmask_b16 v176.l, v177.l, v162.l, s49
	v_cndmask_b16 v176.h, v178.l, v162.h, s50
	v_cndmask_b16 v177.l, v185.l, v163.l, s51
	v_cndmask_b16 v177.h, v186.l, v163.h, s52
	v_cndmask_b16 v178.l, v187.l, v164.l, s53
	v_cndmask_b16 v178.h, v188.l, v164.h, s54
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
	s_branch .LBB0_5
.LBB0_11:                               ; %._crit_edge73
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v13, 1, v120
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v22, v137, 16, 1
	v_bfe_u32 v23, v136, 16, 1
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	s_mul_i32 s2, s18, s23
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v24, v135, 16, 1
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_or_b32_e32 v6, 0x85, v13
	v_or_b32_e32 v4, 0x87, v13
	v_or_b32_e32 v5, 0x86, v13
	v_or_b32_e32 v7, 0x84, v13
	v_or_b32_e32 v8, 0x83, v13
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v3, s21, v6
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v14, 6, v13
	v_or_b32_e32 v9, 0x82, v13
	v_or_b32_e32 v10, 0x81, v13
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s21, v4
	v_or_b32_e32 v2, s21, v5
	v_or_b32_e32 v11, s21, v7
	v_or_b32_e32 v12, s21, v8
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s23, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s21, v14
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s23, v1
	v_cmp_gt_i32_e64 s0, s23, v2
	v_cmp_gt_i32_e64 s6, s23, v11
	v_cmp_gt_i32_e64 s7, s23, v12
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s21, v9
	v_or_b32_e32 v2, s21, v10
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v11, 0x80, v13
	v_or_b32_e32 v12, 7, v13
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s23, v3
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v3, s23, v94
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s23, v1
	v_cmp_gt_i32_e64 s9, s23, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s21, v11
	v_or_b32_e32 v2, s21, v12
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v15, 5, v13
	v_or_b32_e32 v16, 4, v13
	v_or_b32_e32 v17, 3, v13
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s10, s23, v1
	v_cmp_gt_i32_e64 s11, s23, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s21, v15
	v_or_b32_e32 v2, s21, v16
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v18, 2, v13
	v_or_b32_e32 v19, 1, v13
	.loc	1 1545 26 is_stmt 1             ; ragged.py:1545:26
	v_add3_u32 v3, s2, s21, v3
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add3_u32 v22, v137, v22, 0x7fff
	v_cmp_o_f32_e64 s2, v137, v137
	v_add3_u32 v23, v136, v23, 0x7fff
	v_cmp_o_f32_e64 s3, v136, v136
	v_bfe_u32 v25, v134, 16, 1
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s23, v1
	v_cmp_gt_i32_e64 s14, s23, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s21, v17
	v_or_b32_e32 v2, s21, v18
	v_or_b32_e32 v20, s21, v19
	v_or_b32_e32 v21, s21, v13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v24, v135, v24, 0x7fff
	v_cmp_o_f32_e64 s21, v135, v135
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s2
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s3
	v_bfe_u32 v23, v133, 16, 1
	v_bfe_u32 v26, v132, 16, 1
	v_add3_u32 v25, v134, v25, 0x7fff
	v_cmp_o_f32_e64 s2, v134, v134
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s21
	v_add3_u32 v23, v133, v23, 0x7fff
	v_cmp_o_f32_e64 s3, v133, v133
	v_add3_u32 v26, v132, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v132, v132
	v_cndmask_b16 v24.h, 0x7fff, v25.h, s2
	v_bfe_u32 v25, v131, 16, 1
	v_bfe_u32 v27, v130, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s3
	v_cndmask_b16 v23.h, 0x7fff, v26.h, s21
	v_bfe_u32 v26, v129, 16, 1
	v_add3_u32 v25, v131, v25, 0x7fff
	v_cmp_o_f32_e64 s2, v131, v131
	v_add3_u32 v27, v130, v27, 0x7fff
	v_cmp_o_f32_e64 s3, v130, v130
	v_bfe_u32 v28, v128, 16, 1
	v_add3_u32 v26, v129, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v129, v129
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s2
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s3
	v_bfe_u32 v27, v127, 16, 1
	v_bfe_u32 v29, v126, 16, 1
	v_add3_u32 v28, v128, v28, 0x7fff
	v_cmp_o_f32_e64 s2, v128, v128
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s21
	v_add3_u32 v27, v127, v27, 0x7fff
	v_cmp_o_f32_e64 s3, v127, v127
	v_add3_u32 v29, v126, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v126, v126
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s2
	v_bfe_u32 v28, v125, 16, 1
	v_bfe_u32 v30, v124, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s3
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s21
	v_bfe_u32 v29, v123, 16, 1
	v_add3_u32 v28, v125, v28, 0x7fff
	v_cmp_o_f32_e64 s2, v125, v125
	v_add3_u32 v30, v124, v30, 0x7fff
	v_cmp_o_f32_e64 s3, v124, v124
	v_bfe_u32 v31, v122, 16, 1
	v_add3_u32 v29, v123, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v123, v123
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s2
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s3
	v_bfe_u32 v30, v121, 16, 1
	v_bfe_u32 v32, v119, 16, 1
	v_add3_u32 v31, v122, v31, 0x7fff
	v_cmp_o_f32_e64 s2, v122, v122
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s21
	v_add3_u32 v30, v121, v30, 0x7fff
	v_cmp_o_f32_e64 s3, v121, v121
	v_add3_u32 v32, v119, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v119, v119
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s2
	v_bfe_u32 v31, v118, 16, 1
	v_bfe_u32 v33, v117, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s3
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s21
	v_bfe_u32 v32, v116, 16, 1
	v_add3_u32 v31, v118, v31, 0x7fff
	v_cmp_o_f32_e64 s2, v118, v118
	v_add3_u32 v33, v117, v33, 0x7fff
	v_cmp_o_f32_e64 s3, v117, v117
	v_bfe_u32 v34, v115, 16, 1
	v_add3_u32 v32, v116, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v116, v116
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s2
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s3
	v_bfe_u32 v33, v114, 16, 1
	v_bfe_u32 v35, v113, 16, 1
	v_add3_u32 v34, v115, v34, 0x7fff
	v_cmp_o_f32_e64 s2, v115, v115
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s21
	v_add3_u32 v33, v114, v33, 0x7fff
	v_cmp_o_f32_e64 s3, v114, v114
	v_add3_u32 v35, v113, v35, 0x7fff
	v_cmp_o_f32_e64 s21, v113, v113
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s2
	v_bfe_u32 v34, v112, 16, 1
	v_bfe_u32 v36, v111, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s3
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s21
	v_bfe_u32 v35, v110, 16, 1
	v_add3_u32 v34, v112, v34, 0x7fff
	v_cmp_o_f32_e64 s2, v112, v112
	v_add3_u32 v36, v111, v36, 0x7fff
	v_cmp_o_f32_e64 s3, v111, v111
	v_bfe_u32 v37, v109, 16, 1
	v_add3_u32 v35, v110, v35, 0x7fff
	v_cmp_o_f32_e64 s21, v110, v110
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s2
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s3
	v_bfe_u32 v36, v108, 16, 1
	v_bfe_u32 v38, v107, 16, 1
	v_add3_u32 v37, v109, v37, 0x7fff
	v_cmp_o_f32_e64 s2, v109, v109
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s21
	v_add3_u32 v36, v108, v36, 0x7fff
	v_cmp_o_f32_e64 s3, v108, v108
	v_add3_u32 v38, v107, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v107, v107
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s2
	v_bfe_u32 v37, v106, 16, 1
	v_bfe_u32 v39, v105, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s3
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s21
	v_bfe_u32 v38, v104, 16, 1
	v_add3_u32 v37, v106, v37, 0x7fff
	v_cmp_o_f32_e64 s2, v106, v106
	v_add3_u32 v39, v105, v39, 0x7fff
	v_cmp_o_f32_e64 s3, v105, v105
	v_bfe_u32 v40, v103, 16, 1
	v_add3_u32 v38, v104, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v104, v104
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s2
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s3
	v_bfe_u32 v39, v102, 16, 1
	v_bfe_u32 v41, v101, 16, 1
	v_add3_u32 v40, v103, v40, 0x7fff
	v_cmp_o_f32_e64 s2, v103, v103
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s21
	v_add3_u32 v39, v102, v39, 0x7fff
	v_cmp_o_f32_e64 s3, v102, v102
	v_add3_u32 v41, v101, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v101, v101
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s2
	v_bfe_u32 v40, v100, 16, 1
	v_bfe_u32 v42, v99, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s3
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s21
	v_bfe_u32 v41, v98, 16, 1
	v_add3_u32 v40, v100, v40, 0x7fff
	v_cmp_o_f32_e64 s2, v100, v100
	v_add3_u32 v42, v99, v42, 0x7fff
	v_cmp_o_f32_e64 s3, v99, v99
	v_bfe_u32 v43, v97, 16, 1
	v_add3_u32 v41, v98, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v98, v98
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s2
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s3
	v_bfe_u32 v42, v96, 16, 1
	v_bfe_u32 v44, v95, 16, 1
	v_add3_u32 v43, v97, v43, 0x7fff
	v_cmp_o_f32_e64 s2, v97, v97
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s21
	v_add3_u32 v42, v96, v42, 0x7fff
	v_cmp_o_f32_e64 s3, v96, v96
	v_add3_u32 v44, v95, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v95, v95
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s2
	v_bfe_u32 v43, v93, 16, 1
	v_bfe_u32 v45, v92, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s3
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s21
	v_bfe_u32 v44, v91, 16, 1
	v_add3_u32 v43, v93, v43, 0x7fff
	v_cmp_o_f32_e64 s2, v93, v93
	v_add3_u32 v45, v92, v45, 0x7fff
	v_cmp_o_f32_e64 s3, v92, v92
	v_bfe_u32 v46, v90, 16, 1
	v_add3_u32 v44, v91, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v91, v91
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s2
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s3
	v_bfe_u32 v45, v89, 16, 1
	v_bfe_u32 v47, v88, 16, 1
	v_add3_u32 v46, v90, v46, 0x7fff
	v_cmp_o_f32_e64 s2, v90, v90
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s21
	v_add3_u32 v45, v89, v45, 0x7fff
	v_cmp_o_f32_e64 s3, v89, v89
	v_add3_u32 v47, v88, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v88, v88
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s2
	v_bfe_u32 v46, v87, 16, 1
	v_bfe_u32 v48, v86, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s3
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s21
	v_bfe_u32 v47, v85, 16, 1
	v_add3_u32 v46, v87, v46, 0x7fff
	v_cmp_o_f32_e64 s2, v87, v87
	v_add3_u32 v48, v86, v48, 0x7fff
	v_cmp_o_f32_e64 s3, v86, v86
	v_bfe_u32 v49, v84, 16, 1
	v_add3_u32 v47, v85, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v85, v85
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s2
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s3
	v_bfe_u32 v48, v83, 16, 1
	v_bfe_u32 v50, v82, 16, 1
	v_add3_u32 v49, v84, v49, 0x7fff
	v_cmp_o_f32_e64 s2, v84, v84
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s21
	v_add3_u32 v48, v83, v48, 0x7fff
	v_cmp_o_f32_e64 s3, v83, v83
	v_add3_u32 v50, v82, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v82, v82
	v_cndmask_b16 v47.h, 0x7fff, v49.h, s2
	v_bfe_u32 v49, v81, 16, 1
	v_bfe_u32 v51, v80, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s3
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s21
	v_bfe_u32 v50, v79, 16, 1
	v_add3_u32 v49, v81, v49, 0x7fff
	v_cmp_o_f32_e64 s2, v81, v81
	v_add3_u32 v51, v80, v51, 0x7fff
	v_cmp_o_f32_e64 s3, v80, v80
	v_add3_u32 v50, v79, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v79, v79
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s2
	v_bfe_u32 v52, v78, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s3
	v_bfe_u32 v51, v77, 16, 1
	v_bfe_u32 v53, v76, 16, 1
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s21
	v_add3_u32 v52, v78, v52, 0x7fff
	v_cmp_o_f32_e64 s2, v78, v78
	v_add3_u32 v51, v77, v51, 0x7fff
	v_cmp_o_f32_e64 s3, v77, v77
	v_add3_u32 v53, v76, v53, 0x7fff
	v_cmp_o_f32_e64 s21, v76, v76
	v_bfe_u32 v54, v75, 16, 1
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s2
	v_cndmask_b16 v51.l, 0x7fff, v51.h, s3
	v_bfe_u32 v52, v74, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s21
	v_add3_u32 v53, v75, v54, 0x7fff
	v_bfe_u32 v54, v73, 16, 1
	v_bfe_u32 v55, v72, 16, 1
	v_cmp_o_f32_e64 s2, v75, v75
	v_add3_u32 v52, v74, v52, 0x7fff
	v_cmp_o_f32_e64 s3, v74, v74
	v_add3_u32 v54, v73, v54, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s21, v73, v73
	v_add3_u32 v55, v72, v55, 0x7fff
	v_cmp_o_f32_e64 s22, v72, v72
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s15, s23, v1
	v_cmp_gt_i32_e64 s16, s23, v2
	v_cmp_gt_i32_e64 s17, s23, v20
	v_cmp_gt_i32_e64 s18, s23, v21
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v21, s23, 4, v3
	v_lshl_add_u32 v20, s23, 5, v3
	v_mad_u64_u32 v[1:2], null, s23, 48, v[3:4]
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cndmask_b16 v52.l, 0x7fff, v53.h, s2
	v_cmp_eq_u32_e64 s2, 0, v0
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s3
	v_cndmask_b16 v0.l, 0x7fff, v54.h, s21
	v_cndmask_b16 v0.h, 0x7fff, v55.h, s22
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add_lshl_u32 v3, v3, v13, 1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b32_e32 v54, 0x5410
	v_cndmask_b32_e64 v53, v23, v22, s2
	v_cndmask_b32_e64 v22, v22, v23, s2
	v_cndmask_b32_e64 v23, v25, v24, s2
	v_cndmask_b32_e64 v24, v24, v25, s2
	v_cndmask_b32_e64 v25, v28, v26, s2
	v_cndmask_b32_e64 v26, v26, v28, s2
	v_cndmask_b32_e64 v28, v29, v27, s2
	v_cndmask_b32_e64 v27, v27, v29, s2
	v_cndmask_b32_e64 v29, v32, v30, s2
	v_cndmask_b32_e64 v30, v30, v32, s2
	v_cndmask_b32_e64 v32, v33, v31, s2
	v_cndmask_b32_e64 v31, v31, v33, s2
	v_cndmask_b32_e64 v33, v36, v34, s2
	v_cndmask_b32_e64 v34, v34, v36, s2
	v_cndmask_b32_e64 v36, v37, v35, s2
	v_cndmask_b32_e64 v35, v35, v37, s2
	v_cndmask_b32_e64 v37, v40, v38, s2
	v_cndmask_b32_e64 v38, v38, v40, s2
	v_cndmask_b32_e64 v40, v41, v39, s2
	v_cndmask_b32_e64 v39, v39, v41, s2
	v_cndmask_b32_e64 v41, v44, v42, s2
	v_cndmask_b32_e64 v42, v42, v44, s2
	v_cndmask_b32_e64 v44, v45, v43, s2
	v_cndmask_b32_e64 v43, v43, v45, s2
	v_cndmask_b32_e64 v45, v48, v46, s2
	v_cndmask_b32_e64 v46, v46, v48, s2
	v_cndmask_b32_e64 v48, v49, v47, s2
	v_cndmask_b32_e64 v47, v47, v49, s2
	v_cndmask_b32_e64 v49, v52, v50, s2
	v_cndmask_b32_e64 v50, v50, v52, s2
	v_cndmask_b32_e64 v52, v0, v51, s2
	v_mov_b32_e32 v55, 0x7632
	v_cndmask_b32_e64 v0, v51, v0, s2
	v_add_nc_u32_e32 v85, 4, v3
	v_cndmask_b32_e64 v51, 0x1054, v54, s2
	s_mov_b32 s3, 0x76543210
	v_cndmask_b32_e64 v54, 0x3276, v55, s2
	v_permlanex16_b32 v22, v22, s3, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v84, 2, v3
	v_lshl_or_b32 v51, v51, 8, v51
	v_mov_b16_e32 v2.h, 0
	v_lshl_or_b32 v54, v54, 8, v54
	v_permlanex16_b32 v24, v24, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v51, 0x540054, v51
	v_permlanex16_b32 v27, v27, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x760076, v54
	v_permlanex16_b32 v30, v30, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s3, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v51, v51, 4, v51
	v_permlanex16_b32 v34, v34, s3, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v54, v54, 4, v54
	v_permlanex16_b32 v35, v35, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v38, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v51, 0x5040504, v51
	v_permlanex16_b32 v39, v39, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v42, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v43, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v46, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v47, v47, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v50, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s3, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v22, v53, v51
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s2, s5, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v22, v22, v53, v54
	v_cndmask_b32_e64 v86, 0x80000000, v3, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v53, v24, v23, v51
	v_cndmask_b32_e64 v84, 0x80000000, v84, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v23, v24, v23, v54
	v_perm_b32 v24, v26, v25, v51
	v_perm_b32 v25, v26, v25, v54
	v_perm_b32 v26, v27, v28, v51
	v_perm_b32 v27, v27, v28, v54
	v_perm_b32 v28, v30, v29, v51
	v_perm_b32 v29, v30, v29, v54
	v_perm_b32 v30, v31, v32, v51
	v_perm_b32 v31, v31, v32, v54
	v_perm_b32 v32, v34, v33, v51
	v_perm_b32 v33, v34, v33, v54
	v_perm_b32 v34, v35, v36, v51
	v_perm_b32 v35, v35, v36, v54
	v_perm_b32 v36, v38, v37, v51
	v_perm_b32 v37, v38, v37, v54
	v_perm_b32 v38, v39, v40, v51
	v_perm_b32 v39, v39, v40, v54
	v_perm_b32 v40, v42, v41, v51
	v_perm_b32 v41, v42, v41, v54
	v_perm_b32 v42, v43, v44, v51
	v_perm_b32 v43, v43, v44, v54
	v_perm_b32 v44, v46, v45, v51
	v_perm_b32 v45, v46, v45, v54
	v_perm_b32 v46, v47, v48, v51
	v_perm_b32 v47, v47, v48, v54
	v_perm_b32 v48, v50, v49, v51
	v_perm_b32 v49, v50, v49, v54
	v_perm_b32 v50, v0, v52, v51
	v_mov_b16_e32 v51.l, v55.h
	v_mov_b16_e32 v51.h, v2.h
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	v_cndmask_b32_e64 v85, 0x80000000, v85, s2
	buffer_store_b16 v55, v86, s[24:27], 0 offen
	v_add_nc_u32_e32 v55, 6, v3
	v_mov_b16_e32 v2.l, v22.h
	s_clause 0x1
	buffer_store_b16 v51, v84, s[24:27], 0 offen
	buffer_store_b16 v22, v85, s[24:27], 0 offen
	v_add_nc_u32_e32 v22, 8, v3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_nc_u32_e32 v84, 12, v3
	v_cndmask_b32_e64 v51, 0x80000000, v55, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_nc_u32_e32 v55, 10, v3
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v0, v0, v52, v54
	v_mov_b16_e32 v52.h, v2.h
	v_mov_b16_e32 v54.h, v2.h
	v_mov_b16_e32 v56.h, v2.h
	v_mov_b16_e32 v57.h, v2.h
	v_mov_b16_e32 v58.h, v2.h
	v_mov_b16_e32 v59.h, v2.h
	v_mov_b16_e32 v60.h, v2.h
	v_mov_b16_e32 v61.h, v2.h
	v_mov_b16_e32 v62.h, v2.h
	v_mov_b16_e32 v63.h, v2.h
	v_mov_b16_e32 v64.h, v2.h
	v_mov_b16_e32 v65.h, v2.h
	v_mov_b16_e32 v66.h, v2.h
	v_mov_b16_e32 v67.h, v2.h
	v_mov_b16_e32 v68.h, v2.h
	v_mov_b16_e32 v69.h, v2.h
	v_mov_b16_e32 v70.h, v2.h
	v_mov_b16_e32 v71.h, v2.h
	v_mov_b16_e32 v72.h, v2.h
	v_mov_b16_e32 v73.h, v2.h
	v_mov_b16_e32 v74.h, v2.h
	v_mov_b16_e32 v75.h, v2.h
	v_mov_b16_e32 v76.h, v2.h
	v_mov_b16_e32 v77.h, v2.h
	v_mov_b16_e32 v78.h, v2.h
	v_mov_b16_e32 v79.h, v2.h
	v_mov_b16_e32 v80.h, v2.h
	v_mov_b16_e32 v81.h, v2.h
	v_mov_b16_e32 v82.h, v2.h
	v_mov_b16_e32 v83.h, v2.h
	s_clause 0x1
	buffer_store_b16 v2, v51, s[24:27], 0 offen
	buffer_store_b16 v53, v22, s[24:27], 0 offen
	v_add_nc_u32_e32 v2, 14, v3
	v_cndmask_b32_e64 v55, 0x80000000, v55, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v54.l, v53.h
	v_add_nc_u32_e32 v22, 0x100, v3
	v_cndmask_b32_e64 v84, 0x80000000, v84, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v52.l, v23.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v54, v55, s[24:27], 0 offen
	buffer_store_b16 v23, v84, s[24:27], 0 offen
	v_add_nc_u32_e32 v23, 0x102, v3
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	v_add_nc_u32_e32 v51, 0x104, v3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v52, v2, s[24:27], 0 offen
	buffer_store_b16 v24, v22, s[24:27], 0 offen
	v_add_nc_u32_e32 v2, 0x106, v3
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v57.l, v24.h
	v_add_nc_u32_e32 v22, 0x108, v3
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v56.l, v25.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v57, v23, s[24:27], 0 offen
	buffer_store_b16 v25, v51, s[24:27], 0 offen
	v_add_nc_u32_e32 v23, 0x10a, v3
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	v_add_nc_u32_e32 v24, 0x10c, v3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v56, v2, s[24:27], 0 offen
	buffer_store_b16 v26, v22, s[24:27], 0 offen
	v_add_nc_u32_e32 v2, 0x10e, v3
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v21, v13, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s5, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v59.l, v26.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v58.l, v27.h
	v_add_lshl_u32 v22, v21, v19, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	s_clause 0x1
	buffer_store_b16 v59, v23, s[24:27], 0 offen
	buffer_store_b16 v27, v24, s[24:27], 0 offen
	v_add_lshl_u32 v23, v21, v18, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v58, v2, s[24:27], 0 offen
	buffer_store_b16 v28, v3, s[24:27], 0 offen
	v_add_lshl_u32 v2, v21, v17, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v61.l, v28.h
	v_add_lshl_u32 v3, v21, v16, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v60.l, v29.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v61, v22, s[24:27], 0 offen
	buffer_store_b16 v29, v23, s[24:27], 0 offen
	v_add_lshl_u32 v22, v21, v15, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_add_lshl_u32 v23, v21, v14, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v60, v2, s[24:27], 0 offen
	buffer_store_b16 v30, v3, s[24:27], 0 offen
	v_add_lshl_u32 v2, v21, v12, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v63.l, v30.h
	v_add_lshl_u32 v3, v21, v11, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v62.l, v31.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v63, v22, s[24:27], 0 offen
	buffer_store_b16 v31, v23, s[24:27], 0 offen
	v_add_lshl_u32 v22, v21, v10, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_add_lshl_u32 v23, v21, v9, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v62, v2, s[24:27], 0 offen
	buffer_store_b16 v32, v3, s[24:27], 0 offen
	v_add_lshl_u32 v2, v21, v8, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v65.l, v32.h
	v_add_lshl_u32 v3, v21, v7, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v64.l, v33.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v65, v22, s[24:27], 0 offen
	buffer_store_b16 v33, v23, s[24:27], 0 offen
	v_add_lshl_u32 v22, v21, v6, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_add_lshl_u32 v23, v21, v5, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v64, v2, s[24:27], 0 offen
	buffer_store_b16 v34, v3, s[24:27], 0 offen
	v_add_lshl_u32 v2, v21, v4, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v20, v13, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s4, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v67.l, v34.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s20, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v66.l, v35.h
	v_add_lshl_u32 v21, v20, v19, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	s_clause 0x1
	buffer_store_b16 v67, v22, s[24:27], 0 offen
	buffer_store_b16 v35, v23, s[24:27], 0 offen
	v_add_lshl_u32 v22, v20, v18, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s20, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v66, v2, s[24:27], 0 offen
	buffer_store_b16 v36, v3, s[24:27], 0 offen
	v_add_lshl_u32 v2, v20, v17, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s20, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v69.l, v36.h
	v_add_lshl_u32 v3, v20, v16, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s20, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v68.l, v37.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s20, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v69, v21, s[24:27], 0 offen
	buffer_store_b16 v37, v22, s[24:27], 0 offen
	v_add_lshl_u32 v21, v20, v15, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_add_lshl_u32 v22, v20, v14, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s20, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v68, v2, s[24:27], 0 offen
	buffer_store_b16 v38, v3, s[24:27], 0 offen
	v_add_lshl_u32 v2, v20, v12, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s20, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v71.l, v38.h
	v_add_lshl_u32 v3, v20, v11, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s20, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v70.l, v39.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s20, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v71, v21, s[24:27], 0 offen
	buffer_store_b16 v39, v22, s[24:27], 0 offen
	v_add_lshl_u32 v21, v20, v10, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_add_lshl_u32 v22, v20, v9, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s20, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v70, v2, s[24:27], 0 offen
	buffer_store_b16 v40, v3, s[24:27], 0 offen
	v_add_lshl_u32 v2, v20, v8, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s20, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v73.l, v40.h
	v_add_lshl_u32 v3, v20, v7, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s20, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v72.l, v41.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s20, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v73, v21, s[24:27], 0 offen
	buffer_store_b16 v41, v22, s[24:27], 0 offen
	v_add_lshl_u32 v21, v20, v6, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_add_lshl_u32 v22, v20, v5, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s20, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v72, v2, s[24:27], 0 offen
	buffer_store_b16 v42, v3, s[24:27], 0 offen
	v_add_lshl_u32 v2, v20, v4, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s20, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v13, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s20, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v74.l, v43.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s19, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v75.l, v42.h
	v_add_lshl_u32 v13, v1, v19, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_add_lshl_u32 v18, v1, v18, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s19, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x3
	buffer_store_b16 v75, v21, s[24:27], 0 offen
	buffer_store_b16 v43, v22, s[24:27], 0 offen
	buffer_store_b16 v74, v2, s[24:27], 0 offen
	buffer_store_b16 v44, v3, s[24:27], 0 offen
	v_add_lshl_u32 v2, v1, v17, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s19, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v77.l, v44.h
	v_add_lshl_u32 v3, v1, v16, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s19, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v76.l, v45.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s19, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v77, v13, s[24:27], 0 offen
	buffer_store_b16 v45, v18, s[24:27], 0 offen
	v_add_lshl_u32 v13, v1, v15, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_add_lshl_u32 v14, v1, v14, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s19, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v76, v2, s[24:27], 0 offen
	buffer_store_b16 v46, v3, s[24:27], 0 offen
	v_add_lshl_u32 v2, v1, v12, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s19, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v11, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s19, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v78.l, v47.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s19, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v79.l, v46.h
	v_add_lshl_u32 v10, v1, v10, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_add_lshl_u32 v9, v1, v9, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s19, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x3
	buffer_store_b16 v79, v13, s[24:27], 0 offen
	buffer_store_b16 v47, v14, s[24:27], 0 offen
	buffer_store_b16 v78, v2, s[24:27], 0 offen
	buffer_store_b16 v48, v3, s[24:27], 0 offen
	v_add_lshl_u32 v2, v1, v8, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s19, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v7, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s19, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v6, v1, v6, 1
	v_add_lshl_u32 v5, v1, v5, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s19, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v1, v4, 1
	v_mov_b16_e32 v80.l, v49.h
	v_mov_b16_e32 v81.l, v48.h
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s19, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s19, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v83.l, v50.h
	v_cndmask_b32_e64 v4, 0x80000000, v6, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, s19, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_mov_b16_e32 v82.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x6
	buffer_store_b16 v81, v10, s[24:27], 0 offen
	buffer_store_b16 v49, v9, s[24:27], 0 offen
	buffer_store_b16 v80, v2, s[24:27], 0 offen
	buffer_store_b16 v50, v3, s[24:27], 0 offen
	buffer_store_b16 v83, v4, s[24:27], 0 offen
	buffer_store_b16 v0, v5, s[24:27], 0 offen
	buffer_store_b16 v82, v1, s[24:27], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_sgpr 77
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 203
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 77
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12872
; TotalNumSgprs: 79
; NumVgprs: 203
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 79
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     79
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.kd
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
