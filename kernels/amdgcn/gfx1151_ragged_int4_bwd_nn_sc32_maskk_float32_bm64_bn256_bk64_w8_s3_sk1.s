	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
	v_dual_mov_b32 v135, 0 :: v_dual_and_b32 v124, 15, v0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
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
	s_ashr_i32 s4, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s5, s5, 8
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s5, s4
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s6, s4
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s7, v1
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v126, 0
	s_mul_i32 s8, s8, s7
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v128, 0
	s_mul_hi_u32 s8, s7, s8
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	s_add_i32 s7, s7, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s7, s9, s7
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s7, s6
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s6
	s_cmp_ge_u32 s9, s6
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v134, 0
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s6
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v136, 0
	s_cselect_b32 s6, s10, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s7, s5
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s6, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s9, s7
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s8, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s8, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_and_b32 v142, 16, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_readfirstlane_b32 s9, v1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_b32_e32 v141, 0x70, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s6, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s6
	s_abs_i32 s6, s2
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s6, s9
	s_xor_b32 s9, s2, s5
	s_mul_i32 s10, s4, s7
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s6, s6, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s6, s7
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s6, s11, s6
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s4, s10, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s9
	s_sub_i32 s6, s4, s9
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s9, s8, 31
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s7, s6, s5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[4:5], s[8:9], 2
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s2, s2, s7
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s9, s6, 6
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s33, s2, 8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s28, s4
	s_addc_u32 s5, s29, s5
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, s9, v124
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s5, s[4:5], 0x0
	.loc	1 1466 43                       ; ragged.py:1466:43
	s_mul_i32 s6, s8, s34
	s_mov_b32 s29, 0
	s_add_i32 s28, s9, s6
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, 16, v2
	v_or_b32_e32 v3, 32, v2
	v_or_b32_e32 v4, 48, v2
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s4, s34, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s19, s34, v1
	v_cmp_gt_i32_e64 s2, s34, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e32 vcc_lo, s34, v4
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s10, s5, 1
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_lt_i32 s10, 2
	s_cbranch_scc1 .LBB0_8
; %bb.1:                                ; %.lr.ph8
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x38
	s_load_b256 s[20:27], s[0:1], 0x0
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 2, v0
	v_dual_mov_b32 v145, 0 :: v_dual_lshlrev_b32 v2, 2, v0
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s0, s10, 31
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s1, s5, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s9, v1
	v_dual_mov_b32 v144, 0 :: v_dual_and_b32 v65, 12, v2
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v4, s28, v1
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s10, s10, s0
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s0, s5, s1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s34, v3
	v_bfe_i32 v3, v0, 3, 1
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s44, s3, 4
	v_dual_mov_b32 v139, 0 :: v_dual_and_b32 v2, 0x37c, v2
	v_dual_mov_b32 v138, 0 :: v_dual_lshlrev_b32 v5, 4, v0
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[66:67], null, v4, s6, v[65:66]
	v_bfe_i32 v4, v0, 5, 1
	v_dual_mov_b32 v136, 0 :: v_dual_and_b32 v3, 0x88, v3
	v_cmp_eq_u32_e64 s3, 0, v142
	v_dual_mov_b32 v134, 0 :: v_dual_lshlrev_b32 v7, 3, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v137, 0 :: v_dual_and_b32 v8, 0x108, v4
	v_dual_mov_b32 v135, 0 :: v_dual_and_b32 v4, 0x88, v4
	v_cndmask_b32_e64 v6, 0x108, 0, s3
	v_dual_mov_b32 v132, 0 :: v_dual_and_b32 v9, 0x70, v5
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v7, 0x600, v7
	v_xor_b32_e32 v8, v3, v8
	v_xor_b32_e32 v153, v4, v2
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v4, s28, v124
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v64, s33, v0
	v_xor_b32_e32 v6, v3, v6
	v_or_b32_e32 v154, v3, v9
	v_or3_b32 v156, v7, v8, v9
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v9, 16, v4
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v10, 32, v4
	v_dual_mov_b32 v122, 0 :: v_dual_and_b32 v11, 0xf0, v0
	v_dual_mov_b32 v121, 0 :: v_dual_lshlrev_b32 v12, 5, v0
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[67:68], null, s6, v1, v[65:66]
	v_mad_u64_u32 v[68:69], null, s35, 3, v[64:65]
	v_mad_u64_u32 v[69:70], null, s35, 5, v[64:65]
	v_mad_u64_u32 v[70:71], null, s35, 6, v[64:65]
	v_and_or_b32 v155, 0xe70, v5, v6
	v_mul_lo_u32 v161, v4, s7
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v4, 48, v4
	v_mul_lo_u32 v162, v9, s7
	v_mul_lo_u32 v163, v10, s7
	v_dual_mov_b32 v120, 0 :: v_dual_lshlrev_b32 v9, 2, v11
	v_dual_mov_b32 v119, 0 :: v_dual_lshlrev_b32 v10, 1, v0
	v_dual_mov_b32 v117, 0 :: v_dual_and_b32 v12, 32, v12
	v_mad_u64_u32 v[71:72], null, s35, 7, v[64:65]
	v_mad_u64_u32 v[72:73], null, s35, 9, v[64:65]
	v_mad_u64_u32 v[73:74], null, s35, 10, v[64:65]
	v_mad_u64_u32 v[74:75], null, s35, 11, v[64:65]
	v_mad_u64_u32 v[75:76], null, s35, 12, v[64:65]
	v_xor_b32_e32 v1, 8, v155
	v_xor_b32_e32 v2, 8, v156
	v_or_b32_e32 v3, 0x300, v0
	v_or_b32_e32 v5, 0x700, v0
	v_or_b32_e32 v6, 0xb00, v0
	v_or_b32_e32 v7, 0xf00, v0
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v8, 0, v141
	v_mul_lo_u32 v164, v4, s7
	v_dual_mov_b32 v115, 0 :: v_dual_and_b32 v4, 28, v10
	v_add3_u32 v9, 0, v9, v12
	v_dual_mov_b32 v113, 0 :: v_dual_lshlrev_b32 v10, 1, v11
	v_mad_u64_u32 v[76:77], null, s35, 13, v[64:65]
	v_mad_u64_u32 v[77:78], null, s35, 14, v[64:65]
	v_mad_u64_u32 v[78:79], null, s35, 15, v[64:65]
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s45, s10, 1
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_ashr_i32 s46, s0, 1
	s_and_b32 s37, s21, 0xffff
	s_and_b32 s21, s23, 0xffff
	s_bitcmp1_b32 s5, 0
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s35, v64
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v146, 1, v65
	v_or_b32_e32 v147, 2, v65
	v_or_b32_e32 v148, 3, v65
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v149, s35, v64
	v_lshl_add_u32 v150, s35, 1, v64
	v_lshl_add_u32 v151, s35, 2, v64
	v_lshl_add_u32 v152, s35, 3, v64
	v_xor_b32_e32 v157, 8, v154
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v158, 1, v67
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v159, 2, v67
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v160, 3, v67
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v165, 0, v1
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v166, 0, v2
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v167, 0, v0
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v168, 0, v3
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v169, 0, v5
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v170, 0, v6
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v171, 0, v7
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v172, v8, v124
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v173, v9, v4
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v174, 0, v10
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v79, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v82, 0
	s_cselect_b32 s48, -1, 0
	s_add_i32 s49, s45, -1
	.loc	1 1470 43                       ; ragged.py:1470:43
	s_mul_i32 s34, s8, s6
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s47, s8, s7
	s_mov_b32 s36, s20
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b32 s20, s22
	s_mul_i32 s50, s28, s6
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s41, s27, 0xffff
	s_mov_b32 s40, s26
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s51, s49, 4
	s_mov_b32 s3, 0
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v175, v161, s29, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s3, s29, s47
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v176, v162, s29, 1
	v_add_lshl_u32 v177, v163, s29, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s3, s3, s35
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v178, v164, s29, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v179, v64, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v175, 0x80000000, v175, s4
	v_cndmask_b32_e64 v176, 0x80000000, v176, s19
	v_cndmask_b32_e64 v177, 0x80000000, v177, s2
	s_mov_b32 s26, s38
	s_mov_b32 s27, s39
	v_cndmask_b32_e32 v178, 0x80000000, v178, vcc_lo
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v179, 0x80000000, v179, s0
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x3
	buffer_load_u16 v175, v175, s[24:27], 0 offen
	buffer_load_u16 v176, v176, s[24:27], 0 offen
	buffer_load_u16 v177, v177, s[24:27], 0 offen
	buffer_load_u16 v178, v178, s[24:27], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v179, v179, s[40:43], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v181, v1
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
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
	v_cvt_f32_i32_e32 v180, v0
	v_cvt_f32_i32_e32 v182, v2
	v_cvt_f32_i32_e32 v183, v3
	v_cvt_f32_i32_e32 v184, v4
	v_cvt_f32_i32_e32 v185, v5
	v_cvt_f32_i32_e32 v186, v6
	v_cvt_f32_i32_e32 v187, v7
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s5, s29, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s3, s5, 4
	s_cmp_lg_u32 s29, s51
	s_mov_b32 s29, s5
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v1, 16, v176
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v41, v41, v1 :: v_dual_lshlrev_b32 v0, 16, v175
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v57, v57, v0 :: v_dual_lshlrev_b32 v2, 16, v177
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v56, v56, v0 :: v_dual_lshlrev_b32 v175, 16, v178
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v58, v58, v0 :: v_dual_lshlrev_b32 v3, 16, v179
	v_dual_mul_f32 v59, v59, v0 :: v_dual_mul_f32 v40, v40, v1
	v_dual_mul_f32 v60, v60, v0 :: v_dual_mul_f32 v43, v43, v1
	v_dual_mul_f32 v61, v61, v0 :: v_dual_mul_f32 v42, v42, v1
	v_dual_mul_f32 v62, v62, v0 :: v_dual_mul_f32 v45, v45, v1
	v_dual_mul_f32 v63, v63, v0 :: v_dual_mul_f32 v44, v44, v1
	v_dual_mul_f32 v48, v48, v0 :: v_dual_mul_f32 v47, v47, v1
	v_dual_mul_f32 v49, v49, v0 :: v_dual_mul_f32 v46, v46, v1
	v_dual_mul_f32 v50, v50, v0 :: v_dual_mul_f32 v33, v33, v1
	v_dual_mul_f32 v51, v51, v0 :: v_dual_mul_f32 v32, v32, v1
	v_dual_mul_f32 v52, v52, v0 :: v_dual_mul_f32 v35, v35, v1
	v_dual_mul_f32 v53, v53, v0 :: v_dual_mul_f32 v34, v34, v1
	v_dual_mul_f32 v54, v54, v0 :: v_dual_mul_f32 v37, v37, v1
	v_dual_mul_f32 v55, v55, v0 :: v_dual_mul_f32 v36, v36, v1
	v_dual_mul_f32 v38, v38, v1 :: v_dual_mul_f32 v25, v25, v2
	v_dual_mul_f32 v39, v39, v1 :: v_dual_mul_f32 v24, v24, v2
	v_dual_mul_f32 v26, v26, v2 :: v_dual_mul_f32 v177, v9, v175
	v_dual_mul_f32 v27, v27, v2 :: v_dual_mul_f32 v176, v8, v175
	v_dual_mul_f32 v28, v28, v2 :: v_dual_mul_f32 v179, v11, v175
	v_dual_mul_f32 v29, v29, v2 :: v_dual_mul_f32 v178, v10, v175
	v_dual_mul_f32 v30, v30, v2 :: v_dual_mul_f32 v189, v13, v175
	v_dual_mul_f32 v31, v31, v2 :: v_dual_mul_f32 v188, v12, v175
	v_dual_mul_f32 v16, v16, v2 :: v_dual_mul_f32 v191, v15, v175
	v_dual_mul_f32 v17, v17, v2 :: v_dual_mul_f32 v190, v14, v175
	v_dual_mul_f32 v18, v18, v2 :: v_dual_mul_f32 v181, v181, v175
	v_dual_mul_f32 v19, v19, v2 :: v_dual_mul_f32 v180, v180, v175
	v_dual_mul_f32 v20, v20, v2 :: v_dual_mul_f32 v183, v183, v175
	v_dual_mul_f32 v21, v21, v2 :: v_dual_mul_f32 v182, v182, v175
	v_dual_mul_f32 v22, v22, v2 :: v_dual_mul_f32 v185, v185, v175
	v_dual_mul_f32 v23, v23, v2 :: v_dual_mul_f32 v184, v184, v175
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v173, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v174
	ds_load_b128 v[4:7], v174 offset:16
	ds_load_b128 v[8:11], v174 offset:512
	ds_load_b128 v[12:15], v174 offset:528
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v186, v186, v175
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v175, v187, v175 :: v_dual_fmac_f32 v144, v57, v1
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_fmac_f32_e32 v145, v56, v0
	v_dual_fmac_f32 v143, v58, v2 :: v_dual_fmac_f32 v140, v59, v3
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v139, v60, v4 :: v_dual_fmac_f32 v138, v61, v5
	v_dual_fmac_f32 v137, v62, v6 :: v_dual_fmac_f32 v136, v63, v7
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v135, v48, v8 :: v_dual_fmac_f32 v134, v49, v9
	v_dual_fmac_f32 v133, v50, v10 :: v_dual_fmac_f32 v132, v51, v11
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v131, v52, v12 :: v_dual_fmac_f32 v130, v53, v13
	v_dual_fmac_f32 v129, v54, v14 :: v_dual_fmac_f32 v128, v55, v15
	v_dual_fmac_f32 v127, v40, v0 :: v_dual_fmac_f32 v126, v41, v1
	v_dual_fmac_f32 v125, v42, v2 :: v_dual_fmac_f32 v122, v44, v4
	v_dual_fmac_f32 v123, v43, v3 :: v_dual_fmac_f32 v120, v46, v6
	v_dual_fmac_f32 v121, v45, v5 :: v_dual_fmac_f32 v118, v32, v8
	v_dual_fmac_f32 v119, v47, v7 :: v_dual_fmac_f32 v116, v34, v10
	v_dual_fmac_f32 v117, v33, v9 :: v_dual_fmac_f32 v114, v36, v12
	v_dual_fmac_f32 v115, v35, v11 :: v_dual_fmac_f32 v112, v38, v14
	v_dual_fmac_f32 v113, v37, v13 :: v_dual_fmac_f32 v110, v24, v0
	v_dual_fmac_f32 v111, v39, v15 :: v_dual_fmac_f32 v108, v26, v2
	v_dual_fmac_f32 v109, v25, v1 :: v_dual_fmac_f32 v106, v28, v4
	v_dual_fmac_f32 v107, v27, v3 :: v_dual_fmac_f32 v104, v30, v6
	v_dual_fmac_f32 v105, v29, v5 :: v_dual_fmac_f32 v102, v16, v8
	v_dual_fmac_f32 v103, v31, v7 :: v_dual_fmac_f32 v100, v18, v10
	v_dual_fmac_f32 v101, v17, v9 :: v_dual_fmac_f32 v98, v20, v12
	v_dual_fmac_f32 v99, v19, v11 :: v_dual_fmac_f32 v96, v22, v14
	v_dual_fmac_f32 v97, v21, v13 :: v_dual_fmac_f32 v94, v176, v0
	v_dual_fmac_f32 v95, v23, v15 :: v_dual_fmac_f32 v92, v178, v2
	v_dual_fmac_f32 v93, v177, v1 :: v_dual_fmac_f32 v90, v188, v4
	v_dual_fmac_f32 v91, v179, v3 :: v_dual_fmac_f32 v88, v190, v6
	v_dual_fmac_f32 v89, v189, v5 :: v_dual_fmac_f32 v86, v180, v8
	v_dual_fmac_f32 v87, v191, v7 :: v_dual_fmac_f32 v84, v182, v10
	v_dual_fmac_f32 v85, v181, v9 :: v_dual_fmac_f32 v80, v184, v12
	v_dual_fmac_f32 v81, v183, v11 :: v_dual_fmac_f32 v82, v186, v14
	v_fmac_f32_e32 v83, v185, v13
	v_fmac_f32_e32 v79, v175, v15
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_8
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s5, s46, s3
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v6, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v0, s5, 0, 16
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v2, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s5, v0
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
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	s_and_b32 s6, s5, 16
	s_mov_b32 s5, s44
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s44, s6
	s_cbranch_scc1 .LBB0_6
; %bb.4:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v56, 0
	s_mov_b32 s5, s44
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v57, v56
	v_mov_b32_e32 v58, v56
	v_mov_b32_e32 v59, v56
	v_mov_b32_e32 v60, v56
	v_mov_b32_e32 v61, v56
	v_mov_b32_e32 v62, v56
	v_mov_b32_e32 v63, v56
	v_mov_b32_e32 v48, v56
	v_mov_b32_e32 v49, v56
	v_mov_b32_e32 v50, v56
	v_mov_b32_e32 v51, v56
	v_mov_b32_e32 v52, v56
	v_mov_b32_e32 v53, v56
	v_mov_b32_e32 v54, v56
	v_mov_b32_e32 v55, v56
	v_mov_b32_e32 v40, v56
	v_mov_b32_e32 v41, v56
	v_mov_b32_e32 v42, v56
	v_mov_b32_e32 v43, v56
	v_mov_b32_e32 v44, v56
	v_mov_b32_e32 v45, v56
	v_mov_b32_e32 v46, v56
	v_mov_b32_e32 v47, v56
	v_mov_b32_e32 v32, v56
	v_mov_b32_e32 v33, v56
	v_mov_b32_e32 v34, v56
	v_mov_b32_e32 v35, v56
	v_mov_b32_e32 v36, v56
	v_mov_b32_e32 v37, v56
	v_mov_b32_e32 v38, v56
	v_mov_b32_e32 v39, v56
	v_mov_b32_e32 v24, v56
	v_mov_b32_e32 v25, v56
	v_mov_b32_e32 v26, v56
	v_mov_b32_e32 v27, v56
	v_mov_b32_e32 v28, v56
	v_mov_b32_e32 v29, v56
	v_mov_b32_e32 v30, v56
	v_mov_b32_e32 v31, v56
	v_mov_b32_e32 v16, v56
	v_mov_b32_e32 v17, v56
	v_mov_b32_e32 v18, v56
	v_mov_b32_e32 v19, v56
	v_mov_b32_e32 v20, v56
	v_mov_b32_e32 v21, v56
	v_mov_b32_e32 v22, v56
	v_mov_b32_e32 v23, v56
	v_mov_b32_e32 v8, v56
	v_mov_b32_e32 v9, v56
	v_mov_b32_e32 v10, v56
	v_mov_b32_e32 v11, v56
	v_mov_b32_e32 v12, v56
	v_mov_b32_e32 v13, v56
	v_mov_b32_e32 v14, v56
	v_mov_b32_e32 v15, v56
	v_mov_b32_e32 v0, v56
	v_mov_b32_e32 v1, v56
	v_mov_b32_e32 v2, v56
	v_mov_b32_e32 v3, v56
	v_mov_b32_e32 v4, v56
	v_mov_b32_e32 v5, v56
	v_mov_b32_e32 v6, v56
	v_mov_b32_e32 v7, v56
.LBB0_5:                                ; %.lr.ph
                                        ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1462 30 is_stmt 1             ; ragged.py:1462:30
	s_add_i32 s7, s5, s3
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s22, s38
	.loc	1 1472 46 is_stmt 0             ; ragged.py:1472:46
	s_add_i32 s8, s7, s34
	.loc	1 1471 46 is_stmt 1             ; ragged.py:1471:46
	v_add_nc_u32_e32 v175, s7, v66
	.loc	1 1472 46                       ; ragged.py:1472:46
	s_mul_i32 s8, s8, s35
	.loc	1 1472 38 is_stmt 0             ; ragged.py:1472:38
	s_mov_b32 s23, s39
	.loc	1 1472 46                       ; ragged.py:1472:46
	v_add_nc_u32_e32 v176, s8, v64
	v_add_nc_u32_e32 v177, s8, v149
	v_add_nc_u32_e32 v178, s8, v150
	v_add_nc_u32_e32 v179, s8, v68
	v_add_nc_u32_e32 v180, s8, v151
	v_add_nc_u32_e32 v181, s8, v69
	v_add_nc_u32_e32 v182, s8, v70
	v_add_nc_u32_e32 v183, s8, v71
	v_add_nc_u32_e32 v184, s8, v152
	v_add_nc_u32_e32 v185, s8, v72
	v_add_nc_u32_e32 v186, s8, v73
	v_add_nc_u32_e32 v187, s8, v74
	v_add_nc_u32_e32 v188, s8, v75
	v_add_nc_u32_e32 v189, s8, v76
	v_add_nc_u32_e32 v190, s8, v77
	v_add_nc_u32_e32 v191, s8, v78
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v176, 0x80000000, v176, s0
	v_cndmask_b32_e64 v177, 0x80000000, v177, s0
	v_cndmask_b32_e64 v178, 0x80000000, v178, s0
	v_cndmask_b32_e64 v179, 0x80000000, v179, s0
	.loc	1 1471 38 is_stmt 1             ; ragged.py:1471:38
	v_cndmask_b32_e64 v175, 0x80000000, v175, s1
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v180, 0x80000000, v180, s0
	v_cndmask_b32_e64 v181, 0x80000000, v181, s0
	v_cndmask_b32_e64 v182, 0x80000000, v182, s0
	v_cndmask_b32_e64 v183, 0x80000000, v183, s0
	v_cndmask_b32_e64 v184, 0x80000000, v184, s0
	v_cndmask_b32_e64 v185, 0x80000000, v185, s0
	v_cndmask_b32_e64 v186, 0x80000000, v186, s0
	v_cndmask_b32_e64 v187, 0x80000000, v187, s0
	v_cndmask_b32_e64 v188, 0x80000000, v188, s0
	v_cndmask_b32_e64 v189, 0x80000000, v189, s0
	v_cndmask_b32_e64 v190, 0x80000000, v190, s0
	v_cndmask_b32_e64 v191, 0x80000000, v191, s0
	s_clause 0xf
	buffer_load_u8 v195, v176, s[20:23], 0 offen
	buffer_load_u8 v193, v177, s[20:23], 0 offen
	buffer_load_u8 v197, v178, s[20:23], 0 offen
	buffer_load_u8 v192, v179, s[20:23], 0 offen
	buffer_load_u8 v196, v180, s[20:23], 0 offen
	buffer_load_u8 v194, v181, s[20:23], 0 offen
	buffer_load_u8 v198, v182, s[20:23], 0 offen
	buffer_load_u8 v199, v183, s[20:23], 0 offen
	buffer_load_u8 v200, v184, s[20:23], 0 offen
	buffer_load_u8 v201, v185, s[20:23], 0 offen
	buffer_load_u8 v202, v186, s[20:23], 0 offen
	buffer_load_u8 v203, v187, s[20:23], 0 offen
	buffer_load_u8 v204, v188, s[20:23], 0 offen
	buffer_load_u8 v205, v189, s[20:23], 0 offen
	buffer_load_u8 v206, v190, s[20:23], 0 offen
	buffer_load_u8 v207, v191, s[20:23], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	buffer_load_b32 v175, v175, s[36:39], 0 offen
	v_add_nc_u32_e32 v176, 0, v153
	v_add_nc_u32_e32 v179, 0, v154
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v208, 0, v155
	v_add_nc_u32_e32 v209, 0, v156
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v187, 0, v157
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s5, s5, 16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s5, s6
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt vmcnt(13)
	v_lshlrev_b16 v192.h, 8, v193.l
	v_lshlrev_b16 v192.l, 8, v192.l
	s_waitcnt vmcnt(11)
	v_lshlrev_b16 v191.h, 8, v194.l
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b16 v195.l, v195.l, v192.h
	s_waitcnt vmcnt(9)
	v_lshlrev_b16 v191.l, 8, v199.l
	v_or_b16 v195.h, v197.l, v192.l
	s_waitcnt vmcnt(7)
	v_lshlrev_b16 v194.h, 8, v201.l
	v_or_b16 v196.l, v196.l, v191.h
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v194.l, 8, v203.l
	v_or_b16 v196.h, v198.l, v191.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v193.h, 8, v205.l
	v_or_b16 v191.l, v200.l, v194.h
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v193.l, 8, v207.l
	v_or_b16 v191.h, v202.l, v194.l
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(0)
	ds_store_b32 v176, v175
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_or_b16 v192.l, v204.l, v193.h
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt lgkmcnt(0)
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_or_b16 v192.h, v206.l, v193.l
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_barrier
	ds_load_2addr_b64 v[175:178], v179 offset1:32
	ds_load_2addr_b64 v[179:182], v179 offset0:64 offset1:96
	ds_load_2addr_b64 v[183:186], v187 offset1:32
	ds_load_2addr_b64 v[187:190], v187 offset0:64 offset1:96
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v208, v[195:196]
	ds_store_b64 v165, v[191:192]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[191:194], v209 offset1:4
	ds_load_2addr_stride64_b64 v[195:198], v166 offset1:4
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[191:192], v[175:176], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[193:194], v[175:176], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[191:192], v[177:178], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[193:194], v[177:178], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[191:192], v[179:180], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[193:194], v[179:180], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[191:192], v[181:182], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[193:194], v[181:182], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[195:196], v[183:184], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[197:198], v[183:184], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[195:196], v[185:186], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[197:198], v[185:186], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[195:196], v[187:188], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[197:198], v[187:188], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[195:196], v[189:190], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[197:198], v[189:190], v[0:7] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s6, s45, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s8, s6, 16
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s5, s8
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_2
; %bb.7:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_add_i32 s22, s5, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s12, s22, 1
	s_or_b32 s13, s22, 2
	s_or_b32 s14, s22, 3
	s_or_b32 s15, s22, 4
	s_or_b32 s16, s22, 5
	s_or_b32 s17, s22, 6
	s_or_b32 s18, s22, 7
	s_or_b32 s23, s22, 8
	s_or_b32 s26, s22, 9
	s_or_b32 s27, s22, 10
	s_or_b32 s42, s22, 11
	s_or_b32 s43, s22, 12
	s_or_b32 s52, s22, 13
	s_or_b32 s53, s22, 14
	s_or_b32 s54, s22, 15
	.loc	1 1494 35                       ; ragged.py:1494:35
	s_sub_i32 s9, s12, s3
	s_sub_i32 s10, s13, s3
	s_sub_i32 s11, s14, s3
	s_sub_i32 s55, s15, s3
	s_sub_i32 s56, s16, s3
	s_sub_i32 s57, s17, s3
	s_sub_i32 s58, s18, s3
	s_sub_i32 s59, s23, s3
	s_sub_i32 s60, s26, s3
	s_sub_i32 s61, s27, s3
	s_sub_i32 s62, s42, s3
	s_sub_i32 s63, s43, s3
	s_sub_i32 s64, s52, s3
	s_sub_i32 s65, s53, s3
	s_sub_i32 s66, s54, s3
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	s_cmp_lt_i32 s9, s8
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v175, s22, v65
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s10, s8
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v176, s22, v146
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s11, s8
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v177, s22, v147
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s55, s8
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v178, s22, v148
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s56, s8
	.loc	1 1494 35 is_stmt 0             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v179, s3, v175
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s57, s8
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v180, s3, v176
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s58, s8
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v181, s3, v177
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s59, s8
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v182, s3, v178
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s60, s8
	v_cmp_gt_i32_e64 s3, s8, v179
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s61, s8
	v_cmp_gt_i32_e64 s5, s8, v180
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s62, s8
	v_cmp_gt_i32_e64 s6, s8, v181
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s63, s8
	v_cmp_gt_i32_e64 s7, s8, v182
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s64, s8
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s9, s49, v176
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s65, s8
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s10, s49, v177
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s66, s8
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s8, s49, v175
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s82, -1, 0
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cmp_eq_u32 s22, s49
	v_cmp_eq_u32_e64 s11, s49, v178
	s_cselect_b32 s55, -1, 0
	s_cmp_eq_u32 s12, s49
	s_cselect_b32 s12, -1, 0
	s_cmp_eq_u32 s13, s49
	s_cselect_b32 s13, -1, 0
	s_cmp_eq_u32 s14, s49
	s_cselect_b32 s14, -1, 0
	s_cmp_eq_u32 s15, s49
	s_cselect_b32 s15, -1, 0
	s_cmp_eq_u32 s16, s49
	s_cselect_b32 s16, -1, 0
	s_cmp_eq_u32 s17, s49
	s_cselect_b32 s17, -1, 0
	s_cmp_eq_u32 s18, s49
	s_cselect_b32 s18, -1, 0
	s_cmp_eq_u32 s23, s49
	s_cselect_b32 s23, -1, 0
	s_cmp_eq_u32 s26, s49
	s_cselect_b32 s57, -1, 0
	s_cmp_eq_u32 s27, s49
	s_cselect_b32 s58, -1, 0
	s_cmp_eq_u32 s42, s49
	s_cselect_b32 s59, -1, 0
	s_cmp_eq_u32 s43, s49
	s_cselect_b32 s60, -1, 0
	s_cmp_eq_u32 s52, s49
	s_cselect_b32 s61, -1, 0
	s_cmp_eq_u32 s53, s49
	s_cselect_b32 s62, -1, 0
	s_cmp_eq_u32 s54, s49
	s_cselect_b32 s63, -1, 0
	.loc	1 1495 36 is_stmt 0             ; ragged.py:1495:36
	s_and_b32 s64, s8, s48
	.loc	1 1496 46 is_stmt 1             ; ragged.py:1496:46
	s_add_i32 s8, s22, s50
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, s1, s3
	v_add_nc_u32_e32 v175, s8, v67
	v_add_nc_u32_e32 v176, s8, v158
	s_and_b32 s5, s1, s5
	v_add_nc_u32_e32 v177, s8, v159
	s_and_b32 s6, s1, s6
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v175, 0x80000000, v175, s3
	v_add_nc_u32_e32 v178, s8, v160
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s7, s1, s7
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	s_add_i32 s22, s22, s34
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s56, s23, s48
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v179, v175, s[36:39], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v176, s5
	.loc	1 1497 46                       ; ragged.py:1497:46
	s_mul_i32 s22, s22, s35
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s0, s68
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v176, s22, v149
	v_add_nc_u32_e32 v181, s22, v150
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	buffer_load_u8 v180, v175, s[36:39], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v177, s6
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v182, s22, v68
	v_add_nc_u32_e32 v183, s22, v151
	v_add_nc_u32_e32 v184, s22, v69
	v_add_nc_u32_e32 v185, s22, v70
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v177, v175, s[36:39], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v178, s7
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v186, s22, v71
	v_add_nc_u32_e32 v187, s22, v152
	v_add_nc_u32_e32 v188, s22, v72
	v_add_nc_u32_e32 v189, s22, v73
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v178, v175, s[36:39], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v175, s22, v64
	v_add_nc_u32_e32 v190, s22, v74
	v_add_nc_u32_e32 v191, s22, v75
	v_add_nc_u32_e32 v192, s22, v76
	v_add_nc_u32_e32 v193, s22, v77
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	v_cndmask_b32_e64 v175, 0x80000000, v175, s0
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v194, s22, v78
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s22, s38
	s_mov_b32 s23, s39
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s5, s0, s69
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v195, v175, s[20:23], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v176, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s6, s0, s70
	s_and_b32 s7, s0, s71
	s_and_b32 s8, s0, s72
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s65, s9, s48
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v196, v175, s[20:23], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v181, s5
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s9, s0, s73
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s66, s10, s48
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s10, s0, s74
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s67, s11, s48
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v197, v175, s[20:23], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v182, s6
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s11, s0, s75
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s27, s12, s48
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s12, s0, s76
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s42, s13, s48
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v198, v175, s[20:23], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v183, s7
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s13, s0, s77
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s43, s14, s48
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s14, s0, s78
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s52, s15, s48
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v199, v175, s[20:23], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v184, s8
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s15, s0, s79
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s53, s16, s48
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s16, s0, s80
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s54, s17, s48
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v200, v175, s[20:23], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v185, s9
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s17, s0, s81
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s26, s55, s48
	s_and_b32 s55, s18, s48
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s18, s0, s82
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	buffer_load_u8 v185, v175, s[20:23], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v186, s10
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s57, s57, s48
	s_and_b32 s58, s58, s48
	s_and_b32 s59, s59, s48
	s_and_b32 s60, s60, s48
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v186, v175, s[20:23], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v187, s11
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s61, s61, s48
	s_and_b32 s62, s62, s48
	s_and_b32 s63, s63, s48
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v187, v175, s[20:23], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v188, s12
	buffer_load_u8 v188, v175, s[20:23], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v189, s13
	buffer_load_u8 v189, v175, s[20:23], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v190, s14
	buffer_load_u8 v190, v175, s[20:23], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v191, s15
	buffer_load_u8 v201, v175, s[20:23], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v192, s16
	buffer_load_u8 v202, v175, s[20:23], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v193, s17
	buffer_load_u8 v203, v175, s[20:23], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v194, s18
	buffer_load_u8 v204, v175, s[20:23], 0 offen
	.loc	1 1498 38                       ; ragged.py:1498:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1498 66 is_stmt 0             ; ragged.py:1498:66
	s_waitcnt vmcnt(19)
	v_and_b16 v175.l, v179.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v175.l, v179.l, v175.l, s64
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(18)
	v_and_b16 v175.h, v180.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v175.h, v180.l, v175.h, s65
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(17)
	v_and_b16 v176.l, v177.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_lshlrev_b16 v175.h, 8, v175.h
	v_cndmask_b16 v176.l, v177.l, v176.l, s66
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(16)
	v_and_b16 v176.h, v178.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v176.h, v178.l, v176.h, s67
	v_lshlrev_b16 v176.h, 8, v176.h
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(15)
	v_and_b16 v177.l, v195.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_or_b16 v176.h, v176.l, v176.h
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v191.l, v195.l, v177.l, s26
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(14)
	v_and_b16 v177.h, v196.l, 15
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_or_b16 v176.l, v175.l, v175.h
	v_add_nc_u32_e32 v175, 0, v153
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v191.h, v196.l, v177.h, s27
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(13)
	v_and_b16 v178.l, v197.l, 15
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	ds_store_b32 v175, v176
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v192.l, v197.l, v178.l, s42
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(12)
	v_and_b16 v178.h, v198.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v192.h, v198.l, v178.h, s43
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(11)
	v_and_b16 v179.l, v199.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v193.l, v199.l, v179.l, s52
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(10)
	v_and_b16 v179.h, v200.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v193.h, v200.l, v179.h, s53
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(9)
	v_and_b16 v180.l, v185.l, 15
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v179, 0, v154
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v194.l, v185.l, v180.l, s54
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(8)
	v_and_b16 v180.h, v186.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v194.h, v186.l, v180.h, s55
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(7)
	v_and_b16 v181.l, v187.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v195.l, v187.l, v181.l, s56
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(6)
	v_and_b16 v181.h, v188.l, 15
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v187, 0, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v195.h, v188.l, v181.h, s57
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(5)
	v_and_b16 v182.l, v189.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v196.l, v189.l, v182.l, s58
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(4)
	v_and_b16 v182.h, v190.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v196.h, v190.l, v182.h, s59
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(3)
	v_and_b16 v183.l, v201.l, 15
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	ds_load_2addr_b64 v[175:178], v179 offset1:32
	ds_load_2addr_b64 v[179:182], v179 offset0:64 offset1:96
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v197.l, v201.l, v183.l, s60
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(2)
	v_and_b16 v183.h, v202.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v197.h, v202.l, v183.h, s61
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(1)
	v_and_b16 v184.l, v203.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v198.l, v203.l, v184.l, s62
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v184.h, v204.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v198.h, v204.l, v184.h, s63
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	ds_load_2addr_b64 v[183:186], v187 offset1:32
	ds_load_2addr_b64 v[187:190], v187 offset0:64 offset1:96
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v167, v191
	ds_store_b8_d16_hi v167, v191 offset:256
	ds_store_b8 v167, v192 offset:512
	ds_store_b8_d16_hi v168, v192
	ds_store_b8 v167, v193 offset:1024
	ds_store_b8_d16_hi v167, v193 offset:1280
	ds_store_b8 v167, v194 offset:1536
	ds_store_b8_d16_hi v169, v194
	ds_store_b8 v167, v195 offset:2048
	ds_store_b8_d16_hi v167, v195 offset:2304
	ds_store_b8 v167, v196 offset:2560
	ds_store_b8_d16_hi v170, v196
	ds_store_b8 v167, v197 offset:3072
	ds_store_b8_d16_hi v167, v197 offset:3328
	ds_store_b8 v167, v198 offset:3584
	ds_store_b8_d16_hi v171, v198
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v191, v172 offset:1280
	ds_load_u8 v192, v172 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v192, v191, 0xc0c0004
	ds_load_u8 v192, v172 offset:1792
	ds_load_u8 v193, v172 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v192, v193, v192, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v192, v192, 16, v191
	ds_load_u8 v191, v172 offset:256
	ds_load_u8 v193, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v193, v191, 0xc0c0004
	ds_load_u8 v193, v172 offset:768
	ds_load_u8 v194, v172 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v193, v194, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v191, v193, 16, v191
	ds_load_u8 v193, v172 offset:3328
	ds_load_u8 v194, v172 offset:3072
	v_wmma_i32_16x16x16_iu4 v[56:63], v[191:192], v[175:176], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[191:192], v[177:178], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[191:192], v[179:180], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[191:192], v[181:182], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v193, v194, v193, 0xc0c0004
	ds_load_u8 v194, v172 offset:3840
	ds_load_u8 v195, v172 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v194, v195, v194, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v194, v194, 16, v193
	ds_load_u8 v193, v172 offset:2304
	ds_load_u8 v195, v172 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v193, v195, v193, 0xc0c0004
	ds_load_u8 v195, v172 offset:2816
	ds_load_u8 v196, v172 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v195, v196, v195, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v193, v195, 16, v193
	ds_load_u8 v195, v172 offset:1408
	ds_load_u8 v196, v172 offset:1152
	v_wmma_i32_16x16x16_iu4 v[56:63], v[193:194], v[183:184], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[193:194], v[185:186], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[193:194], v[187:188], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[193:194], v[189:190], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v195, v196, v195, 0xc0c0004
	ds_load_u8 v196, v172 offset:1920
	ds_load_u8 v197, v172 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v196, v197, v196, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v196, v196, 16, v195
	ds_load_u8 v195, v172 offset:384
	ds_load_u8 v197, v172 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v195, v197, v195, 0xc0c0004
	ds_load_u8 v197, v172 offset:896
	ds_load_u8 v198, v172 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v197, v198, v197, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v195, v197, 16, v195
	v_wmma_i32_16x16x16_iu4 v[48:55], v[195:196], v[175:176], v[48:55] neg_lo:[1,1,0]
	ds_load_u8 v175, v172 offset:3456
	ds_load_u8 v176, v172 offset:3200
	v_wmma_i32_16x16x16_iu4 v[32:39], v[195:196], v[177:178], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[195:196], v[179:180], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[195:196], v[181:182], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	ds_load_u8 v176, v172 offset:3968
	ds_load_u8 v197, v172 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v197, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v176, 16, v175
	ds_load_u8 v175, v172 offset:2432
	ds_load_u8 v197, v172 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v197, v175, 0xc0c0004
	ds_load_u8 v197, v172 offset:2944
	ds_load_u8 v198, v172 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v197, v198, v197, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v175, v197, 16, v175
	v_wmma_i32_16x16x16_iu4 v[48:55], v[175:176], v[183:184], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[175:176], v[185:186], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[175:176], v[187:188], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[175:176], v[189:190], v[0:7] neg_lo:[1,1,0]
	s_branch .LBB0_2
.LBB0_8:                                ; %._crit_edge9
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v0, 4, v142
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s28, s28, s35
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	s_and_b32 s21, s31, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_or_b32_e32 v3, v0, v141
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
	v_or_b32_e32 v11, s33, v7
	v_or_b32_e32 v12, s33, v8
	v_or_b32_e32 v2, s33, v6
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v15, 12, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s33, v4
	v_or_b32_e32 v1, s33, v5
	v_or_b32_e32 v13, s33, v9
	v_or_b32_e32 v14, s33, v10
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s6, s35, v11
	v_cmp_gt_i32_e64 s7, s35, v12
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v11, 0x80, v3
	v_or_b32_e32 v12, 14, v3
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s5, s35, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s33, v15
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s35, v0
	v_cmp_gt_i32_e64 s1, s35, v1
	v_cmp_gt_i32_e64 s8, s35, v13
	v_cmp_gt_i32_e64 s9, s35, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s33, v11
	v_or_b32_e32 v1, s33, v12
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v13, 10, v3
	v_or_b32_e32 v14, 8, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s35, v2
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v2, s35, v124
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s10, s35, v0
	v_cmp_gt_i32_e64 s11, s35, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s33, v13
	v_or_b32_e32 v1, s33, v14
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v16, 6, v3
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v17, 4, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v21, s33, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s35, v0
	v_cmp_gt_i32_e64 s14, s35, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s33, v16
	v_or_b32_e32 v20, s33, v18
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v0, s28, s33, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v19, s33, v17
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
	buffer_store_b32 v145, v22, s[20:23], 0 offen
	buffer_store_b32 v144, v23, s[20:23], 0 offen
	buffer_store_b32 v143, v21, s[20:23], 0 offen
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
	buffer_store_b32 v140, v2, s[20:23], 0 offen
	buffer_store_b32 v139, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v0, v12, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v0, v11, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v138, v22, s[20:23], 0 offen
	buffer_store_b32 v137, v23, s[20:23], 0 offen
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
	buffer_store_b32 v136, v2, s[20:23], 0 offen
	buffer_store_b32 v135, v21, s[20:23], 0 offen
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
	buffer_store_b32 v134, v22, s[20:23], 0 offen
	buffer_store_b32 v133, v23, s[20:23], 0 offen
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
	buffer_store_b32 v132, v2, s[20:23], 0 offen
	buffer_store_b32 v131, v21, s[20:23], 0 offen
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
	buffer_store_b32 v130, v22, s[20:23], 0 offen
	buffer_store_b32 v129, v23, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v128, v0, s[20:23], 0 offen
	buffer_store_b32 v127, v2, s[20:23], 0 offen
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
	buffer_store_b32 v126, v21, s[20:23], 0 offen
	buffer_store_b32 v125, v22, s[20:23], 0 offen
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
	buffer_store_b32 v123, v0, s[20:23], 0 offen
	buffer_store_b32 v122, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v12, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v19, v11, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v121, v21, s[20:23], 0 offen
	buffer_store_b32 v120, v22, s[20:23], 0 offen
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
	buffer_store_b32 v119, v0, s[20:23], 0 offen
	buffer_store_b32 v118, v2, s[20:23], 0 offen
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
	buffer_store_b32 v117, v21, s[20:23], 0 offen
	buffer_store_b32 v116, v22, s[20:23], 0 offen
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
	buffer_store_b32 v115, v0, s[20:23], 0 offen
	buffer_store_b32 v114, v2, s[20:23], 0 offen
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
	s_and_b32 s3, s2, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v113, v21, s[20:23], 0 offen
	buffer_store_b32 v112, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v111, v0, s[20:23], 0 offen
	buffer_store_b32 v110, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v14, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v109, v19, s[20:23], 0 offen
	buffer_store_b32 v108, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v15, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v107, v0, s[20:23], 0 offen
	buffer_store_b32 v106, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v105, v19, s[20:23], 0 offen
	buffer_store_b32 v104, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v103, v0, s[20:23], 0 offen
	buffer_store_b32 v102, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v101, v19, s[20:23], 0 offen
	buffer_store_b32 v100, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	s_clause 0x1
	buffer_store_b32 v99, v0, s[20:23], 0 offen
	buffer_store_b32 v98, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v4, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v20, v5, 2
	v_add_lshl_u32 v2, v1, v3, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s1
	s_and_b32 s2, s2, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, vcc_lo, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v17, v1, v17, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, vcc_lo, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v97, v19, s[20:23], 0 offen
	buffer_store_b32 v96, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, vcc_lo, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v95, v0, s[20:23], 0 offen
	buffer_store_b32 v94, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_add_lshl_u32 v0, v1, v16, 2
	v_add_lshl_u32 v2, v1, v14, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, vcc_lo, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v93, v3, s[20:23], 0 offen
	buffer_store_b32 v92, v17, s[20:23], 0 offen
	v_add_lshl_u32 v3, v1, v13, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, vcc_lo, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v13, v1, v15, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, vcc_lo, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v91, v0, s[20:23], 0 offen
	buffer_store_b32 v90, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, vcc_lo, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v0, v1, v12, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_add_lshl_u32 v2, v1, v11, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, vcc_lo, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v89, v3, s[20:23], 0 offen
	buffer_store_b32 v88, v13, s[20:23], 0 offen
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
	buffer_store_b32 v87, v0, s[20:23], 0 offen
	buffer_store_b32 v86, v2, s[20:23], 0 offen
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
	buffer_store_b32 v85, v3, s[20:23], 0 offen
	buffer_store_b32 v84, v9, s[20:23], 0 offen
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
	buffer_store_b32 v81, v0, s[20:23], 0 offen
	buffer_store_b32 v80, v2, s[20:23], 0 offen
	buffer_store_b32 v83, v3, s[20:23], 0 offen
	buffer_store_b32 v82, v4, s[20:23], 0 offen
	buffer_store_b32 v79, v1, s[20:23], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 210
		.amdhsa_next_free_sgpr 83
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 210
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 83
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9252
; TotalNumSgprs: 85
; NumVgprs: 210
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 85
; NumVGPRsForWavesPerEU: 210
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     85
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     210
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
