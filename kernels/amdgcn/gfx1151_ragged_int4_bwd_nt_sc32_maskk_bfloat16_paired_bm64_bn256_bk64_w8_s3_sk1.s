	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[28:29], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	v_lshlrev_b32_e32 v104, 1, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s28, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s29, 0xff
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
	s_ashr_i32 s26, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s7, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s7, s26
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s8, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s6
	s_mul_hi_u32 s8, s6, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s6, s9, s6
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s10, s6
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s6, s7
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s9, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s22, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s6
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s22, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s8, s2, s4
	s_load_b64 s[10:11], s[0:1], 0x20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s9
	s_mul_hi_u32 s4, s9, s5
	s_abs_i32 s5, s8
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s8, s7
	s_mul_i32 s12, s4, s6
	s_ashr_i32 s27, s9, 31
	s_sub_i32 s5, s5, s12
	s_add_i32 s9, s4, 1
	s_sub_i32 s12, s5, s6
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s12, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s6
	s_mov_b32 s6, 0
	s_cselect_b32 s4, s9, s4
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s23, s22, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s42, s4, s27
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[12:13], s[22:23], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, s42, s27
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s10, s10, s12
	s_addc_u32 s11, s11, s13
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s9, s5, s7
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s23, s[10:11], 0x0
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s4, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge11_crit_edge
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v7, 1, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 34 is_stmt 0                ; ragged.py:0:34
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr7
.LBB0_3:                                ; %Flow351
	s_load_b64 s[30:31], s[0:1], 0x28
	v_dual_mov_b32 v72, 0 :: v_dual_and_b32 v73, 15, v0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_mov_b32_e32 v137, 0
	s_sub_i32 s34, s8, s9
	s_lshl_b32 s35, s5, 6
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_mul_i32 s33, s22, s28
	s_cbranch_vccnz .LBB0_12
; %bb.4:                                ; %.lr.ph10
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x38
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v2, s35, v73
	.loc	1 1309 36 is_stmt 0             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 2, v0
	v_dual_mov_b32 v137, 0 :: v_dual_lshlrev_b32 v4, 2, v0
	.loc	1 1314 26 is_stmt 1             ; ragged.py:1314:26
	s_lshr_b32 s16, s4, 31
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v5, 16, v2
	v_or_b32_e32 v6, 32, v2
	v_or_b32_e32 v7, 48, v2
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v2
	v_dual_mov_b32 v135, 0 :: v_dual_lshlrev_b32 v2, 4, v0
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s16, s4, s16
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s35, v1
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s36, s16, 1
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s16, s23, 31
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s5, s28, v6
	v_dual_mov_b32 v138, 0 :: v_dual_and_b32 v69, 12, v4
	v_dual_mov_b32 v133, 0 :: v_dual_and_b32 v2, 0x70, v2
	v_bfe_i32 v6, v0, 3, 1
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s37, s3, 4
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s3, s23, s16
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s28, v3
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_ashr_i32 s38, s3, 1
	s_add_i32 s3, s35, s33
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s28, v5
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v3, s3, v1
	v_bfe_i32 v5, v0, 5, 1
	v_and_or_b32 v140, 0x88, v6, v2
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[70:71], null, s24, v1, v[69:70]
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v1, s3, v73
	s_and_b32 s17, s9, 0xffff
	s_and_b32 s21, s11, 0xffff
	v_dual_mov_b32 v131, 0 :: v_dual_and_b32 v4, 0x37c, v4
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v5, 0x88, v5
	s_bitcmp1_b32 s23, 0
	v_dual_mov_b32 v129, 0 :: v_dual_and_b32 v148, 0x70, v2
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v2, 16, v1
	s_mul_i32 s26, s26, s22
	s_cselect_b32 s9, -1, 0
	s_mul_i32 s11, s3, s24
	s_sub_i32 s3, s27, s26
	v_xor_b32_e32 v142, v5, v4
	s_sub_i32 s3, s3, s42
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v4, 32, v1
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v5, 48, v1
	v_mul_lo_u32 v152, v1, s25
	v_mul_lo_u32 v153, v2, s25
	v_dual_mov_b32 v120, 0 :: v_dual_and_b32 v1, 0xf0, v0
	v_dual_mov_b32 v121, 0 :: v_dual_lshlrev_b32 v2, 5, v0
	s_mul_i32 s7, s7, s3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_lshl_or_b32 v134, s34, 8, v0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_mul_i32 s43, s29, s22
	s_lshl_b32 s3, s7, 8
	v_mul_lo_u32 v154, v4, s25
	v_dual_mov_b32 v119, 0 :: v_dual_lshlrev_b32 v4, 2, v1
	v_dual_mov_b32 v117, 0 :: v_dual_and_b32 v2, 32, v2
	s_add_i32 s3, s3, s43
	s_lshl_b32 s2, s2, 8
	v_mul_lo_u32 v141, v134, s24
	v_mul_lo_u32 v155, v5, s25
	v_add3_u32 v5, s3, s2, v0
	v_dual_mov_b32 v115, 0 :: v_dual_and_b32 v6, 28, v104
	v_add3_u32 v2, 0, v4, v2
	v_dual_mov_b32 v118, 0 :: v_dual_lshlrev_b32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v156, s24, v5
	v_mad_u64_u32 v[71:72], null, v3, s24, v[69:70]
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s6, s28, v7
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s4, s29, v134
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v139, 0, v73
	v_xor_b32_e32 v143, 8, v140
	v_or_b32_e32 v144, 0x300, v0
	v_or_b32_e32 v145, 0x700, v0
	v_or_b32_e32 v146, 0xb00, v0
	v_or_b32_e32 v147, 0xf00, v0
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v149, 13, v141
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v150, 14, v141
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v151, 15, v141
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v157, v2, v6
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v158, 0, v1
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v72, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s20, s10
	s_add_i32 s10, s36, -1
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 1468 43                       ; ragged.py:1468:43
	s_mul_i32 s39, s43, s24
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s40, s22, s25
	.loc	1 1421 13                       ; ragged.py:1421:13
	s_mov_b32 s41, 0
	s_mov_b32 s16, s8
	.loc	1 1421 19 is_stmt 0             ; ragged.py:1421:19
	s_lshr_b32 s42, s10, 4
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	s_mov_b32 s2, 0
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40 is_stmt 1             ; ragged.py:1512:40
	v_add_lshl_u32 v65, v152, s41, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s2, s41, s40
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v66, v153, s41, 1
	v_add_lshl_u32 v67, v154, s41, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s2, s2, s29
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v68, v155, s41, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v159, v134, s2, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	v_cndmask_b32_e64 v66, 0x80000000, v66, s1
	v_cndmask_b32_e64 v67, 0x80000000, v67, s5
	v_cndmask_b32_e64 v68, 0x80000000, v68, s6
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v159, 0x80000000, v159, s4
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x3
	buffer_load_u16 v65, v65, s[24:27], 0 offen
	buffer_load_u16 v66, v66, s[24:27], 0 offen
	buffer_load_u16 v67, v67, s[24:27], 0 offen
	buffer_load_u16 v68, v68, s[24:27], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v159, v159, s[12:15], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v161, v2
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
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
	s_add_i32 s3, s41, 1
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v71, 16, v71
	s_lshl_b32 s2, s3, 4
	s_cmp_lg_u32 s41, s42
	s_mov_b32 s41, s3
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
	v_dual_mul_f32 v61, v61, v1 :: v_dual_lshlrev_b32 v4, 16, v159
	v_dual_mul_f32 v57, v57, v1 :: v_dual_add_nc_u32 v156, 16, v156
	v_mul_f32_e32 v59, v59, v1
	v_dual_mul_f32 v62, v62, v1 :: v_dual_mul_f32 v41, v41, v2
	v_dual_mul_f32 v63, v63, v1 :: v_dual_mul_f32 v44, v44, v2
	v_dual_mul_f32 v64, v64, v1 :: v_dual_mul_f32 v43, v43, v2
	v_dual_mul_f32 v49, v49, v1 :: v_dual_mul_f32 v46, v46, v2
	v_dual_mul_f32 v50, v50, v1 :: v_dual_mul_f32 v45, v45, v2
	v_dual_mul_f32 v51, v51, v1 :: v_dual_mul_f32 v48, v48, v2
	v_dual_mul_f32 v52, v52, v1 :: v_dual_mul_f32 v47, v47, v2
	v_dual_mul_f32 v53, v53, v1 :: v_dual_mul_f32 v34, v34, v2
	v_dual_mul_f32 v54, v54, v1 :: v_dual_mul_f32 v33, v33, v2
	v_dual_mul_f32 v55, v55, v1 :: v_dual_mul_f32 v36, v36, v2
	v_dual_mul_f32 v56, v56, v1 :: v_dual_mul_f32 v35, v35, v2
	v_dual_mul_f32 v37, v37, v2 :: v_dual_mul_f32 v26, v26, v3
	v_dual_mul_f32 v38, v38, v2 :: v_dual_mul_f32 v25, v25, v3
	v_dual_mul_f32 v39, v39, v2 :: v_dual_mul_f32 v28, v28, v3
	v_dual_mul_f32 v40, v40, v2 :: v_dual_mul_f32 v27, v27, v3
	v_dual_mul_f32 v29, v29, v3 :: v_dual_mul_f32 v68, v11, v65
	v_dual_mul_f32 v30, v30, v3 :: v_dual_mul_f32 v159, v12, v65
	v_dual_mul_f32 v31, v31, v3 :: v_dual_mul_f32 v66, v9, v65
	v_dual_mul_f32 v32, v32, v3 :: v_dual_mul_f32 v67, v10, v65
	v_dual_mul_f32 v17, v17, v3 :: v_dual_mul_f32 v170, v15, v65
	v_dual_mul_f32 v18, v18, v3 :: v_dual_mul_f32 v171, v16, v65
	v_dual_mul_f32 v19, v19, v3 :: v_dual_mul_f32 v168, v13, v65
	v_dual_mul_f32 v20, v20, v3 :: v_dual_mul_f32 v169, v14, v65
	v_dual_mul_f32 v21, v21, v3 :: v_dual_mul_f32 v160, v160, v65
	v_dual_mul_f32 v22, v22, v3 :: v_dual_mul_f32 v161, v161, v65
	v_dual_mul_f32 v23, v23, v3 :: v_dual_mul_f32 v162, v162, v65
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
	v_mul_f32_e32 v164, v164, v65
	v_mul_f32_e32 v165, v165, v65
	v_mul_f32_e32 v166, v166, v65
	v_mul_f32_e32 v65, v167, v65
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v138, v57, v1 :: v_dual_fmac_f32 v131, v63, v7
	v_dual_fmac_f32 v137, v58, v2 :: v_dual_fmac_f32 v136, v59, v3
	v_fmac_f32_e32 v135, v60, v4
	v_dual_fmac_f32 v133, v61, v5 :: v_dual_fmac_f32 v130, v64, v8
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v132, v62, v6 :: v_dual_fmac_f32 v129, v49, v9
	v_dual_fmac_f32 v128, v50, v10 :: v_dual_fmac_f32 v127, v51, v11
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v126, v52, v12 :: v_dual_fmac_f32 v125, v53, v13
	v_dual_fmac_f32 v124, v54, v14 :: v_dual_fmac_f32 v123, v55, v15
	v_dual_fmac_f32 v122, v56, v16 :: v_dual_fmac_f32 v121, v41, v1
	v_dual_fmac_f32 v120, v42, v2 :: v_dual_fmac_f32 v119, v43, v3
	v_dual_fmac_f32 v118, v44, v4 :: v_dual_fmac_f32 v117, v45, v5
	v_dual_fmac_f32 v116, v46, v6 :: v_dual_fmac_f32 v115, v47, v7
	v_dual_fmac_f32 v114, v48, v8 :: v_dual_fmac_f32 v113, v33, v9
	v_dual_fmac_f32 v112, v34, v10 :: v_dual_fmac_f32 v111, v35, v11
	v_dual_fmac_f32 v110, v36, v12 :: v_dual_fmac_f32 v109, v37, v13
	v_dual_fmac_f32 v108, v38, v14 :: v_dual_fmac_f32 v107, v39, v15
	v_dual_fmac_f32 v106, v40, v16 :: v_dual_fmac_f32 v105, v25, v1
	v_dual_fmac_f32 v102, v27, v3 :: v_dual_fmac_f32 v103, v26, v2
	v_dual_fmac_f32 v100, v29, v5 :: v_dual_fmac_f32 v101, v28, v4
	v_dual_fmac_f32 v98, v31, v7 :: v_dual_fmac_f32 v99, v30, v6
	v_dual_fmac_f32 v96, v17, v9 :: v_dual_fmac_f32 v97, v32, v8
	v_dual_fmac_f32 v94, v19, v11 :: v_dual_fmac_f32 v95, v18, v10
	v_dual_fmac_f32 v92, v21, v13 :: v_dual_fmac_f32 v93, v20, v12
	v_dual_fmac_f32 v90, v23, v15 :: v_dual_fmac_f32 v91, v22, v14
	v_fmac_f32_e32 v86, v68, v3
	v_dual_fmac_f32 v89, v24, v16 :: v_dual_fmac_f32 v88, v66, v1
	v_dual_fmac_f32 v87, v67, v2 :: v_dual_fmac_f32 v84, v168, v5
	v_dual_fmac_f32 v85, v159, v4 :: v_dual_fmac_f32 v82, v170, v7
	v_dual_fmac_f32 v83, v169, v6 :: v_dual_fmac_f32 v80, v160, v9
	v_dual_fmac_f32 v81, v171, v8 :: v_dual_fmac_f32 v78, v162, v11
	v_dual_fmac_f32 v79, v161, v10 :: v_dual_fmac_f32 v76, v164, v13
	v_dual_fmac_f32 v77, v163, v12 :: v_dual_fmac_f32 v74, v166, v15
	v_fmac_f32_e32 v75, v165, v14
	v_fmac_f32_e32 v72, v65, v16
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s3, s38, s2
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
	s_and_b32 s7, s3, 16
	s_mov_b32 s3, s37
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s37, s7
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v57, 0
	s_mov_b32 s3, s37
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
	v_add_nc_u32_e32 v65, s3, v156
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v66, s3, v71
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v160, 0, v142
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s4
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_dual_cndmask_b32 v159, 0x80000000, v66 :: v_dual_add_nc_u32 v176, 0, v144
	v_add_nc_u32_e32 v163, 0, v140
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v175, 0, v0
	buffer_load_b128 v[65:68], v65, s[20:23], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	buffer_load_b32 v159, v159, s[16:19], 0 offen
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v180, v139, v148
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v171, 0, v143
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v177, 0, v145
	v_add_nc_u32_e32 v178, 0, v146
	v_add_nc_u32_e32 v179, 0, v147
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s3, s3, 16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s3, s7
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
	s_sub_i32 s7, s36, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s8, s7, 16
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s3, s8
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_add_i32 s22, s3, s2
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v65, 1, v69
	.loc	1 1485 30                       ; ragged.py:1485:30
	s_or_b32 s3, s22, 1
	s_or_b32 s7, s22, 2
	s_or_b32 s23, s22, 3
	s_or_b32 s47, s22, 4
	s_or_b32 s48, s22, 5
	s_or_b32 s49, s22, 6
	s_or_b32 s50, s22, 7
	s_or_b32 s51, s22, 8
	s_or_b32 s52, s22, 9
	s_or_b32 s53, s22, 10
	s_or_b32 s54, s22, 11
	s_or_b32 s55, s22, 12
	s_or_b32 s56, s22, 13
	s_or_b32 s57, s22, 14
	s_or_b32 s58, s22, 15
	.loc	1 1494 35                       ; ragged.py:1494:35
	s_sub_i32 s43, s3, s2
	s_sub_i32 s44, s7, s2
	s_sub_i32 s45, s23, s2
	s_sub_i32 s46, s47, s2
	s_sub_i32 s59, s48, s2
	s_sub_i32 s60, s49, s2
	s_sub_i32 s61, s50, s2
	s_sub_i32 s62, s51, s2
	s_sub_i32 s63, s52, s2
	s_sub_i32 s64, s53, s2
	s_sub_i32 s74, s54, s2
	s_sub_i32 s75, s55, s2
	s_sub_i32 s76, s56, s2
	s_sub_i32 s77, s57, s2
	s_sub_i32 s78, s58, s2
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	s_cmp_lt_i32 s43, s8
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v67, 2, v69
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s44, s8
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v68, 3, v69
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s45, s8
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v66, s22, v69
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s46, s8
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v65, s22, v65
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s59, s8
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v67, s22, v67
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s60, s8
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v68, s22, v68
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s61, s8
	.loc	1 1494 35 is_stmt 0             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v159, s2, v66
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s62, s8
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v160, s2, v65
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s63, s8
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v161, s2, v67
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s64, s8
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v162, s2, v68
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s74, s8
	v_cmp_gt_i32_e64 s2, s8, v159
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s75, s8
	.loc	1 1421 19 is_stmt 1             ; ragged.py:1421:19
	v_add_nc_u32_e32 v159, 1, v70
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s76, s8
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v163, 1, v141
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s77, s8
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v164, 2, v141
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s78, s8
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v169, 6, v141
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s59, -1, 0
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cmp_eq_u32 s22, s10
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v170, 7, v141
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s43, -1, 0
	s_cmp_eq_u32 s3, s10
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s3, s8, v160
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s44, -1, 0
	s_cmp_eq_u32 s7, s10
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v160, 2, v70
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s45, -1, 0
	s_cmp_eq_u32 s23, s10
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s7, s8, v161
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s46, -1, 0
	s_cmp_eq_u32 s47, s10
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s8, s8, v162
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s47, -1, 0
	s_cmp_eq_u32 s48, s10
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v161, 3, v70
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s48, -1, 0
	s_cmp_eq_u32 s49, s10
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v171, 8, v141
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s49, -1, 0
	s_cmp_eq_u32 s50, s10
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v172, 9, v141
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s50, -1, 0
	s_cmp_eq_u32 s51, s10
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v173, 10, v141
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s51, -1, 0
	s_cmp_eq_u32 s52, s10
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v174, 11, v141
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s52, -1, 0
	s_cmp_eq_u32 s53, s10
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v175, 12, v141
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s53, -1, 0
	s_cmp_eq_u32 s54, s10
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v189, 0, v142
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s54, -1, 0
	s_cmp_eq_u32 s55, s10
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v190, 0, v140
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s55, -1, 0
	s_cmp_eq_u32 s56, s10
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v192, 0, v0
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s56, -1, 0
	s_cmp_eq_u32 s57, s10
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v197, v139, v148
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s57, -1, 0
	s_cmp_eq_u32 s58, s10
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v191, 0, v143
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s58, -1, 0
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s23, s22, s11
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s2, vcc_lo, s2
	v_add_nc_u32_e32 v162, s23, v70
	v_add_nc_u32_e32 v159, s23, v159
	v_add_nc_u32_e32 v160, s23, v160
	v_add_nc_u32_e32 v161, s23, v161
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	s_add_i32 s22, s22, s39
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s2, vcc_lo, s3
	v_add_nc_u32_e32 v169, s22, v169
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s2, vcc_lo, s7
	v_add_nc_u32_e32 v170, s22, v170
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v160, 0x80000000, v160, s2
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s2, vcc_lo, s8
	v_add_nc_u32_e32 v171, s22, v171
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	s_clause 0x3
	buffer_load_u8 v165, v162, s[16:19], 0 offen
	buffer_load_u8 v166, v159, s[16:19], 0 offen
	buffer_load_u8 v167, v160, s[16:19], 0 offen
	buffer_load_u8 v168, v161, s[16:19], 0 offen
	.loc	1 1421 19 is_stmt 1             ; ragged.py:1421:19
	v_add_nc_u32_e32 v162, 3, v141
	v_add_nc_u32_e32 v160, s22, v163
	v_add_nc_u32_e32 v163, 4, v141
	v_add_nc_u32_e32 v161, s22, v164
	v_add_nc_u32_e32 v164, 5, v141
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s4, s73
	v_add_nc_u32_e32 v162, s22, v162
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	v_cndmask_b32_e64 v160, 0x80000000, v160, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s4, s72
	v_add_nc_u32_e32 v163, s22, v163
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s4, s71
	v_add_nc_u32_e32 v164, s22, v164
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v159, s22, v141
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s4, s70
	v_add_nc_u32_e32 v172, s22, v172
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v163, 0x80000000, v163, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s4, s69
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v159, 0x80000000, v159, s4
	v_cndmask_b32_e64 v164, 0x80000000, v164, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s4, s68
	v_add_nc_u32_e32 v173, s22, v173
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v169, 0x80000000, v169, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s4, s67
	v_add_nc_u32_e32 v174, s22, v174
	v_add_nc_u32_e32 v175, s22, v175
	v_add_nc_u32_e32 v176, s22, v149
	v_add_nc_u32_e32 v177, s22, v150
	v_add_nc_u32_e32 v178, s22, v151
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	v_cndmask_b32_e64 v170, 0x80000000, v170, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s4, s66
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
	s_and_b32 s2, s4, s65
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s10, v65
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v160, 0x80000000, v172, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s4, s64
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s8, s10, v68
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v161, 0x80000000, v173, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s4, s63
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s7, s10, v67
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v162, 0x80000000, v174, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s4, s62
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s3, s9
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v163, 0x80000000, v175, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s4, s61
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s8, s8, s9
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v164, 0x80000000, v176, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s4, s60
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s7, s7, s9
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v171, 0x80000000, v177, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s4, s59
	.loc	1 1499 38 is_stmt 1             ; ragged.py:1499:38
	v_add_nc_u32_e32 v193, 0, v144
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
	v_cmp_eq_u32_e64 s2, s10, v66
	.loc	1 1495 36 is_stmt 0             ; ragged.py:1495:36
	s_and_b32 s22, s43, s9
	s_and_b32 s23, s44, s9
	s_and_b32 s43, s45, s9
	s_and_b32 s45, s47, s9
	s_and_b32 s2, s2, s9
	s_and_b32 s44, s46, s9
	s_and_b32 s46, s48, s9
	s_and_b32 s47, s49, s9
	s_and_b32 s48, s50, s9
	s_and_b32 s49, s51, s9
	s_and_b32 s50, s52, s9
	s_and_b32 s51, s53, s9
	s_and_b32 s52, s54, s9
	s_and_b32 s53, s55, s9
	s_and_b32 s54, s56, s9
	s_and_b32 s55, s57, s9
	s_and_b32 s56, s58, s9
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
	v_cndmask_b16 v65.l, v165.l, v65.l, s2
	v_cndmask_b16 v65.h, v166.l, v65.h, s3
	v_cndmask_b16 v66.l, v167.l, v66.l, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v66.h, v168.l, v66.h, s8
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
	v_cndmask_b16 v171.l, v179.l, v67.l, s22
	v_cndmask_b16 v171.h, v180.l, v67.h, s23
	v_cndmask_b16 v172.l, v181.l, v68.l, s43
	v_cndmask_b16 v173.l, v183.l, v159.l, s45
	v_cndmask_b16 v172.h, v182.l, v68.h, s44
	v_cndmask_b16 v173.h, v184.l, v159.h, s46
	v_cndmask_b16 v174.l, v169.l, v160.l, s47
	v_cndmask_b16 v174.h, v170.l, v160.h, s48
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
	v_cndmask_b16 v175.l, v175.l, v161.l, s49
	v_cndmask_b16 v175.h, v176.l, v161.h, s50
	v_cndmask_b16 v176.l, v177.l, v162.l, s51
	v_cndmask_b16 v176.h, v178.l, v162.h, s52
	v_cndmask_b16 v177.l, v185.l, v163.l, s53
	v_cndmask_b16 v177.h, v186.l, v163.h, s54
	v_cndmask_b16 v178.l, v187.l, v164.l, s55
	v_cndmask_b16 v178.h, v188.l, v164.h, s56
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
.LBB0_11:                               ; %Flow350
	.loc	1 0 35 is_stmt 0                ; ragged.py:0:35
	v_mov_b32_e32 v7, v104
.LBB0_12:                               ; %._crit_edge11
	.loc	1 1532 33 is_stmt 1             ; ragged.py:1532:33
	v_bfe_u32 v1, v138, 16, 1
	v_bfe_u32 v2, v137, 16, 1
	v_bfe_u32 v3, v136, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v138, v138
	v_bfe_u32 v4, v135, 16, 1
	v_add3_u32 v1, v138, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v137, v137
	v_add3_u32 v2, v137, v2, 0x7fff
	v_cmp_o_f32_e64 s1, v136, v136
	v_add3_u32 v3, v136, v3, 0x7fff
	v_bfe_u32 v6, v132, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v4, v135, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v135, v135
	v_cndmask_b16 v3.l, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v133, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v3.h, s1
	v_add3_u32 v6, v132, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v132, v132
	v_cndmask_b16 v9.l, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v131, 16, 1
	v_add3_u32 v2, v133, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v133, v133
	v_cndmask_b16 v13.l, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v129, 16, 1
	v_add3_u32 v4, v131, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v131, v131
	v_cndmask_b16 v11.l, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v130, 16, 1
	v_add3_u32 v6, v129, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v129, v129
	v_cndmask_b16 v15.l, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v128, 16, 1
	v_add3_u32 v2, v130, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v130, v130
	v_cndmask_b16 v19.l, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v126, 16, 1
	v_add3_u32 v4, v128, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v128, v128
	v_cndmask_b16 v17.l, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v127, 16, 1
	v_add3_u32 v6, v126, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v126, v126
	v_cndmask_b16 v21.l, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v125, 16, 1
	v_add3_u32 v2, v127, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v127, v127
	v_cndmask_b16 v25.l, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v123, 16, 1
	v_add3_u32 v4, v125, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v125, v125
	v_cndmask_b16 v23.l, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v124, 16, 1
	v_add3_u32 v6, v123, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v123, v123
	v_cndmask_b16 v27.l, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v122, 16, 1
	v_add3_u32 v2, v124, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v124, v124
	v_cndmask_b16 v31.l, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v120, 16, 1
	v_add3_u32 v4, v122, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v122, v122
	v_cndmask_b16 v29.l, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v121, 16, 1
	v_add3_u32 v6, v120, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v120, v120
	v_cndmask_b16 v33.l, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v119, 16, 1
	v_add3_u32 v2, v121, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v121, v121
	v_cndmask_b16 v3.h, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v117, 16, 1
	v_add3_u32 v4, v119, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v119, v119
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v118, 16, 1
	v_add3_u32 v6, v117, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v117, v117
	v_cndmask_b16 v5.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v116, 16, 1
	v_add3_u32 v2, v118, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v118, v118
	v_cndmask_b16 v11.h, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v114, 16, 1
	v_add3_u32 v4, v116, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v116, v116
	v_cndmask_b16 v9.h, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v115, 16, 1
	v_add3_u32 v6, v114, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v114, v114
	v_cndmask_b16 v13.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v113, 16, 1
	v_add3_u32 v2, v115, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v115, v115
	v_cndmask_b16 v17.h, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v111, 16, 1
	v_add3_u32 v4, v113, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v113, v113
	v_cndmask_b16 v15.h, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v112, 16, 1
	v_add3_u32 v6, v111, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v111, v111
	v_cndmask_b16 v19.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v110, 16, 1
	v_add3_u32 v2, v112, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v112, v112
	v_cndmask_b16 v23.h, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v108, 16, 1
	v_add3_u32 v4, v110, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v110, v110
	v_cndmask_b16 v21.h, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v109, 16, 1
	v_add3_u32 v6, v108, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v108, v108
	v_cndmask_b16 v25.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v107, 16, 1
	v_add3_u32 v2, v109, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v109, v109
	v_cndmask_b16 v29.h, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v105, 16, 1
	v_add3_u32 v4, v107, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v107, v107
	v_cndmask_b16 v27.h, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v106, 16, 1
	v_add3_u32 v6, v105, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v105, v105
	v_cndmask_b16 v31.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v103, 16, 1
	v_add3_u32 v2, v106, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v106, v106
	v_bfe_u32 v10, v102, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v101, 16, 1
	v_add3_u32 v4, v103, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v103, v103
	v_bfe_u32 v12, v100, 16, 1
	v_cndmask_b16 v33.h, 0x7fff, v2.h, s0
	v_add3_u32 v10, v102, v10, 0x7fff
	v_cmp_o_f32_e64 s0, v102, v102
	v_bfe_u32 v14, v99, 16, 1
	v_add3_u32 v6, v101, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v101, v101
	v_bfe_u32 v16, v98, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v4.h, vcc_lo
	v_add3_u32 v12, v100, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	v_bfe_u32 v18, v97, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v10.h, s0
	v_add3_u32 v14, v99, v14, 0x7fff
	v_cmp_o_f32_e64 s0, v99, v99
	v_bfe_u32 v20, v96, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v6.h, s1
	v_add3_u32 v16, v98, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v98, v98
	v_bfe_u32 v22, v95, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, vcc_lo
	v_add3_u32 v18, v97, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v97, v97
	v_bfe_u32 v24, v94, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s0
	v_add3_u32 v20, v96, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v96, v96
	v_bfe_u32 v26, v93, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v16.h, s1
	v_add3_u32 v22, v95, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v95, v95
	v_bfe_u32 v28, v92, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, vcc_lo
	v_add3_u32 v24, v94, v24, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v94, v94
	v_bfe_u32 v30, v91, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s0
	v_add3_u32 v26, v93, v26, 0x7fff
	v_cmp_o_f32_e64 s0, v93, v93
	v_bfe_u32 v32, v90, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s1
	v_add3_u32 v28, v92, v28, 0x7fff
	v_cmp_o_f32_e64 s1, v92, v92
	v_bfe_u32 v34, v89, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, vcc_lo
	v_add3_u32 v30, v91, v30, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	v_bfe_u32 v35, v88, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s0
	v_add3_u32 v32, v90, v32, 0x7fff
	v_cmp_o_f32_e64 s0, v90, v90
	v_bfe_u32 v36, v87, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s1
	v_add3_u32 v34, v89, v34, 0x7fff
	v_cmp_o_f32_e64 s1, v89, v89
	v_bfe_u32 v37, v86, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, vcc_lo
	v_add3_u32 v35, v88, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v88, v88
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s0
	v_add3_u32 v36, v87, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v87, v87
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s1
	v_add3_u32 v37, v86, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v86, v86
	v_cndmask_b16 v2.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v85, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v84, 16, 1
	v_cndmask_b16 v6.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v83, 16, 1
	v_add3_u32 v35, v85, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	v_add3_u32 v36, v84, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v84, v84
	v_add3_u32 v37, v83, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v83, v83
	v_cndmask_b16 v10.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v82, 16, 1
	v_cndmask_b16 v12.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v81, 16, 1
	v_cndmask_b16 v14.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v80, 16, 1
	v_add3_u32 v35, v82, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	v_add3_u32 v36, v81, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v81, v81
	v_add3_u32 v37, v80, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v80, v80
	v_cndmask_b16 v16.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v79, 16, 1
	v_cndmask_b16 v18.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v78, 16, 1
	v_cndmask_b16 v20.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v77, 16, 1
	v_add3_u32 v35, v79, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v38, 3, v73
	v_lshlrev_b32_e32 v39, 6, v0
	v_and_b32_e32 v7, 0x1c0, v7
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v36, v78, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v78, v78
	v_add3_u32 v37, v77, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v77, v77
	v_cndmask_b16 v22.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v76, 16, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v41, 11, v73
	v_and_b32_e32 v39, 0x400, v39
	v_xor_b32_e32 v7, v38, v7
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v24.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v75, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v74, 16, 1
	v_bfe_u32 v40, v72, 16, 1
	v_add3_u32 v35, v76, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_or3_b32 v7, v41, v39, v7
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v36, v75, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v75, v75
	v_add3_u32 v37, v74, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v74, v74
	v_add3_u32 v38, v72, v40, 0x7fff
	v_cmp_o_f32_e64 s2, v72, v72
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_bfe_i32 v8, v0, 7, 1
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v28.h, 0x7fff, v35.h, vcc_lo
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_add_nc_u32_e32 v35, 0, v7
	v_and_b32_e32 v39, 0x7f, v0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v30.h, 0x7fff, v36.h, s0
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v36, v7, 8, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v32.h, 0x7fff, v37.h, s1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v37, v7, 16, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v34.h, 0x7fff, v38.h, s2
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v38, v7, 24, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b64 v35, v[1:2], v[19:20] offset1:1
	ds_store_2addr_stride64_b64 v36, v[3:4], v[21:22] offset1:1
	ds_store_2addr_stride64_b64 v37, v[5:6], v[23:24] offset1:1
	ds_store_2addr_stride64_b64 v38, v[9:10], v[25:26] offset1:1
	v_lshlrev_b32_e32 v1, 3, v39
	v_and_b32_e32 v2, 0x808, v8
	v_xad_u32 v3, v7, 32, 0
	v_xad_u32 v4, v7, 40, 0
	v_xad_u32 v5, v7, 48, 0
	v_xad_u32 v6, v7, 56, 0
	v_xor_b32_e32 v1, v2, v1
	ds_store_2addr_stride64_b64 v3, v[11:12], v[27:28] offset1:1
	ds_store_2addr_stride64_b64 v4, v[13:14], v[29:30] offset1:1
	ds_store_2addr_stride64_b64 v5, v[15:16], v[31:32] offset1:1
	ds_store_2addr_stride64_b64 v6, v[17:18], v[33:34] offset1:1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v0, 7, v0
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_add_nc_u32_e32 v2, 0, v1
	v_xad_u32 v3, 0x1010, v1, 0
	v_xad_u32 v4, 0x2020, v1, 0
	ds_load_2addr_stride64_b64 v[29:32], v2 offset1:2
	ds_load_2addr_stride64_b64 v[25:28], v3 offset1:2
	ds_load_2addr_stride64_b64 v[21:24], v4 offset1:2
	v_xad_u32 v2, 0x3030, v1, 0
	v_xad_u32 v3, 0x4040, v1, 0
	v_xad_u32 v4, 0x5050, v1, 0
	v_xad_u32 v5, 0x6060, v1, 0
	v_xad_u32 v1, 0x7070, v1, 0
	ds_load_2addr_stride64_b64 v[17:20], v2 offset1:2
	ds_load_2addr_stride64_b64 v[13:16], v3 offset1:2
	ds_load_2addr_stride64_b64 v[9:12], v4 offset1:2
	ds_load_2addr_stride64_b64 v[5:8], v5 offset1:2
	ds_load_2addr_stride64_b64 v[1:4], v1 offset1:2
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_lshr_b32 s0, s29, 31
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v33, s35, v0
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v0, s34, 7, v39
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_add_i32 s0, s29, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_ashr_i32 s1, s0, 1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1542 54                       ; ragged.py:1542:54
	v_cmp_gt_i32_e32 vcc_lo, s1, v0
	.loc	1 1542 33 is_stmt 0             ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17 is_stmt 1             ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_14
; %bb.13:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s33, v33
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v36, v29, v31, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, v34, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_14:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 2, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_16
; %bb.15:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v36, v25, v27, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, v34, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_16:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 4, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_18
; %bb.17:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v36, v21, v23, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, v34, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_18:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 6, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_20
; %bb.19:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v17, v19, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, v34, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_20:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 8, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_22
; %bb.21:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v36, v13, v15, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, v34, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_22:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 10, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_24
; %bb.23:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v9, v11, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, v34, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_24:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 12, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_26
; %bb.25:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v36, v5, v7, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, v34, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_26:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 14, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_28
; %bb.27:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v1, v3, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_28:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v34
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_30
; %bb.29:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v29, v29, v31, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, v34, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v29, off
.LBB0_30:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v29, 18, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v29
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_32
; %bb.31:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v29, s33, v29
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v25, v25, v27, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, v29, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v25, off
.LBB0_32:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(6)
	v_or_b32_e32 v25, 20, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v25
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_34
; %bb.33:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v25, s33, v25
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v21, v21, v23, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, v25, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v21, off
.LBB0_34:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v21, 22, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v21
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_36
; %bb.35:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v21, s33, v21
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v17, v19, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, v21, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v17, off
.LBB0_36:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(4)
	v_or_b32_e32 v17, 24, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v17
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_38
; %bb.37:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v17, s33, v17
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v13, v13, v15, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, v17, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v13, off
.LBB0_38:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v13, 26, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v13
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_40
; %bb.39:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v13, s33, v13
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v9, v11, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, v13, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v9, off
.LBB0_40:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(2)
	v_or_b32_e32 v9, 28, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v9
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_42
; %bb.41:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v9, s33, v9
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v5, v5, v7, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, v9, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v5, off
.LBB0_42:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(1)
	v_or_b32_e32 v5, 30, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v5
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_44
; %bb.43:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v5, s33, v5
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v5, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v1, v3, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v1, off
.LBB0_44:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v1, 32, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_46
; %bb.45:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s33, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v30, v32, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v1, off
.LBB0_46:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_48
; %bb.47:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s33, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v26, v28, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v1, off
.LBB0_48:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_50
; %bb.49:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s33, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v22, v24, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v1, off
.LBB0_50:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 38, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_52
; %bb.51:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s33, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v18, v20, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v1, off
.LBB0_52:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 40, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_54
; %bb.53:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s33, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v14, v16, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v1, off
.LBB0_54:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 42, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_56
; %bb.55:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s33, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v10, v12, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v1, off
.LBB0_56:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 44, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_58
; %bb.57:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s33, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v6, v8, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v1, off
.LBB0_58:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 46, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_60
; %bb.59:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s33, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v2, v4, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v1, off
.LBB0_60:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 48, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_62
; %bb.61:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s33, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v30, v32, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v29, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v30, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[29:30], v1, off
.LBB0_62:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 50, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_64
; %bb.63:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s33, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[29:30], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v26, v28, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v30, 31, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[29:30], 2, v[29:30]
	v_add_co_u32 v25, s0, s30, v29
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v26, null, s31, v30, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[25:26], v1, off
.LBB0_64:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 52, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_66
; %bb.65:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s33, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[25:26], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v22, v24, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v26, 31, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[25:26], 2, v[25:26]
	v_add_co_u32 v21, s0, s30, v25
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v22, null, s31, v26, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[21:22], v1, off
.LBB0_66:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 54, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_68
; %bb.67:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s33, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[21:22], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v18, v20, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v22, 31, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[21:22], 2, v[21:22]
	v_add_co_u32 v17, s0, s30, v21
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s31, v22, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v1, off
.LBB0_68:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 56, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_70
; %bb.69:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s33, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[17:18], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v14, v16, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v13, s0, s30, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s31, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[13:14], v1, off
.LBB0_70:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 58, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_72
; %bb.71:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s33, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[13:14], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v10, v12, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v9, s0, s30, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s31, v14, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[9:10], v1, off
.LBB0_72:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 60, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_74
; %bb.73:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s33, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v6, v8, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v5, s0, s30, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s31, v10, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[5:6], v1, off
.LBB0_74:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 62, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_76
; %bb.75:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s33, v1
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v2, v2, v4, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[0:1], null, v1, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s30, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s31, v1, vcc_lo
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[0:1], v2, off
.LBB0_76:
	.loc	1 1276 5 is_stmt 1              ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_sgpr 79
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 203
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 79
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13096
; TotalNumSgprs: 81
; NumVgprs: 203
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 81
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     81
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.kd
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
