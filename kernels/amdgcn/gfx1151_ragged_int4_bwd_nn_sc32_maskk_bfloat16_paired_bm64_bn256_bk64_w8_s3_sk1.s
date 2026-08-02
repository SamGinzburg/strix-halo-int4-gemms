	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
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
	v_lshlrev_b32_e32 v112, 1, v0
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
	s_ashr_i32 s9, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s9, s4
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
	s_mul_i32 s10, s6, s5
	s_sub_i32 s8, s8, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s8, s11, s8
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s10, s6
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s10, s9
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s6, s10
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3)
	s_cvt_u32_f32 s11, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s6, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s10
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s6, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_i32 s5, s5, s11
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s8, s2, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_hi_u32 s2, s11, s5
	s_abs_i32 s7, s8
	s_add_i32 s11, s11, s2
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s2, s7, s11
	s_xor_b32 s11, s8, s9
	s_mul_i32 s12, s2, s10
	s_ashr_i32 s13, s11, 31
	s_sub_i32 s7, s7, s12
	s_add_i32 s11, s2, 1
	s_sub_i32 s12, s7, s10
	s_cmp_ge_u32 s7, s10
	s_cselect_b32 s2, s11, s2
	s_cselect_b32 s7, s12, s7
	s_add_i32 s11, s2, 1
	s_cmp_ge_u32 s7, s10
	s_cselect_b32 s2, s11, s2
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s7, s6, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s2, s2, s13
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[10:11], s[6:7], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s2, s2, s13
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s10
	s_addc_u32 s5, s5, s11
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s9, s2, s9
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s7, s[4:5], 0x0
	s_mov_b32 s5, 0
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s7, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s4, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge9_crit_edge
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v7, 1, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 34 is_stmt 0                ; ragged.py:0:34
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr7
.LBB0_3:                                ; %Flow267
	s_load_b64 s[40:41], s[0:1], 0x28
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v81, 15, v0
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
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
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
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_mov_b32_e32 v145, 0
	s_sub_i32 s42, s8, s9
	s_lshl_b32 s43, s2, 6
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_mul_i32 s33, s6, s34
	s_cbranch_vccnz .LBB0_12
; %bb.4:                                ; %.lr.ph8
	s_load_b64 s[8:9], s[0:1], 0x38
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 2, v0
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v2, s43, v81
	v_dual_mov_b32 v145, 0 :: v_dual_lshlrev_b32 v4, 2, v0
	.loc	1 1424 23 is_stmt 1             ; ragged.py:1424:23
	s_lshl_b32 s45, s3, 4
	s_add_i32 s3, s43, s33
	s_load_b256 s[16:23], s[0:1], 0x0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v5, 16, v2
	v_or_b32_e32 v6, 32, v2
	v_or_b32_e32 v7, 48, v2
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v2
	v_dual_mov_b32 v143, 0 :: v_dual_and_b32 v66, 12, v4
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v2, s3, v1
	v_cmp_gt_i32_e64 s2, s34, v6
	v_bfe_i32 v6, v0, 5, 1
	v_cmp_gt_i32_e64 s1, s34, v5
	v_cmp_gt_i32_e64 s5, s34, v7
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[67:68], null, v2, s8, v[66:67]
	v_bfe_i32 v2, v0, 3, 1
	v_bfe_i32 v5, v0, 4, 1
	v_dual_mov_b32 v139, 0 :: v_dual_and_b32 v4, 0x37c, v4
	v_dual_mov_b32 v140, 0 :: v_dual_lshlrev_b32 v7, 4, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v137, 0 :: v_dual_and_b32 v2, 0x88, v2
	v_dual_mov_b32 v135, 0 :: v_dual_lshlrev_b32 v8, 3, v0
	v_dual_mov_b32 v136, 0 :: v_dual_and_b32 v9, 0x108, v6
	v_dual_mov_b32 v133, 0 :: v_dual_and_b32 v6, 0x88, v6
	v_dual_mov_b32 v138, 0 :: v_dual_and_b32 v5, 0x108, v5
	v_dual_mov_b32 v131, 0 :: v_dual_and_b32 v10, 0x70, v7
	v_dual_mov_b32 v129, 0 :: v_dual_and_b32 v8, 0x600, v8
	v_xor_b32_e32 v9, v2, v9
	v_xor_b32_e32 v153, v6, v4
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v6, s3, v81
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_lshl_or_b32 v65, s42, 8, v0
	v_xor_b32_e32 v5, v2, v5
	v_or_b32_e32 v154, v2, v10
	v_or3_b32 v156, v8, v9, v10
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v10, 16, v6
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v11, 32, v6
	v_dual_mov_b32 v119, 0 :: v_dual_and_b32 v12, 0xf0, v0
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v13, 5, v0
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[68:69], null, s8, v1, v[66:67]
	v_mad_u64_u32 v[69:70], null, s35, 3, v[65:66]
	v_mad_u64_u32 v[70:71], null, s35, 5, v[65:66]
	v_mad_u64_u32 v[71:72], null, s35, 6, v[65:66]
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s43, v1
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s10, s4, 31
	v_and_or_b32 v155, 0xe70, v7, v5
	v_lshrrev_b32_e32 v5, 1, v0
	v_mul_lo_u32 v161, v6, s9
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v6, 48, v6
	v_mul_lo_u32 v162, v10, s9
	v_mul_lo_u32 v163, v11, s9
	v_dual_mov_b32 v115, 0 :: v_dual_lshlrev_b32 v10, 2, v12
	v_dual_mov_b32 v126, 0 :: v_dual_and_b32 v11, 32, v13
	v_mad_u64_u32 v[72:73], null, s35, 7, v[65:66]
	v_mad_u64_u32 v[73:74], null, s35, 9, v[65:66]
	s_add_i32 s10, s4, s10
	v_mad_u64_u32 v[74:75], null, s35, 10, v[65:66]
	v_mad_u64_u32 v[75:76], null, s35, 11, v[65:66]
	s_ashr_i32 s44, s10, 1
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s10, s7, 31
	v_mad_u64_u32 v[76:77], null, s35, 12, v[65:66]
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v3
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v3, 0, v81
	v_xor_b32_e32 v1, 8, v155
	v_xor_b32_e32 v2, 8, v156
	v_or_b32_e32 v4, 0x300, v0
	v_or_b32_e32 v7, 0x700, v0
	v_or_b32_e32 v8, 0xb00, v0
	v_or_b32_e32 v9, 0xf00, v0
	v_dual_mov_b32 v132, 0 :: v_dual_and_b32 v5, 0x70, v5
	v_mul_lo_u32 v164, v6, s9
	v_dual_mov_b32 v113, 0 :: v_dual_and_b32 v6, 28, v112
	v_add3_u32 v10, 0, v10, v11
	v_dual_mov_b32 v124, 0 :: v_dual_lshlrev_b32 v11, 1, v12
	v_mad_u64_u32 v[77:78], null, s35, 13, v[65:66]
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s10, s7, s10
	v_mad_u64_u32 v[78:79], null, s35, 14, v[65:66]
	v_mad_u64_u32 v[79:80], null, s35, 15, v[65:66]
	s_ashr_i32 s46, s10, 1
	s_and_b32 s25, s17, 0xffff
	s_and_b32 s29, s19, 0xffff
	s_bitcmp1_b32 s7, 0
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s4, s35, v65
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v146, 1, v66
	v_or_b32_e32 v147, 2, v66
	v_or_b32_e32 v148, 3, v66
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v149, s35, v65
	v_lshl_add_u32 v150, s35, 1, v65
	v_lshl_add_u32 v151, s35, 2, v65
	v_lshl_add_u32 v152, s35, 3, v65
	v_xor_b32_e32 v157, 8, v154
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v158, 1, v68
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v159, 2, v68
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v160, 3, v68
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v165, 0, v1
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v166, 0, v2
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v167, 0, v0
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v168, 0, v4
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v169, 0, v7
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v170, 0, v8
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v171, 0, v9
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v172, v3, v5
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v173, v10, v6
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v174, 0, v11
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v83, 0
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v80, 0
	s_cselect_b32 s50, -1, 0
	s_add_i32 s51, s44, -1
	.loc	1 1470 43                       ; ragged.py:1470:43
	s_mul_i32 s47, s6, s8
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s48, s6, s9
	.loc	1 1421 13                       ; ragged.py:1421:13
	s_mov_b32 s49, 0
	s_mov_b32 s24, s16
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_mov_b32 s28, s18
	s_mul_i32 s52, s3, s8
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s37, s23, 0xffff
	s_mov_b32 s36, s22
	.loc	1 1421 19 is_stmt 0             ; ragged.py:1421:19
	s_lshr_b32 s53, s51, 4
	s_mov_b32 s3, 0
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40 is_stmt 1             ; ragged.py:1512:40
	v_add_lshl_u32 v175, v161, s49, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s3, s49, s48
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v176, v162, s49, 1
	v_add_lshl_u32 v177, v163, s49, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s3, s3, s35
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v178, v164, s49, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v179, v65, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v175, 0x80000000, v175, s0
	v_cndmask_b32_e64 v176, 0x80000000, v176, s1
	v_cndmask_b32_e64 v177, 0x80000000, v177, s2
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
	v_cndmask_b32_e64 v178, 0x80000000, v178, s5
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v179, 0x80000000, v179, s4
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x3
	buffer_load_u16 v175, v175, s[20:23], 0 offen
	buffer_load_u16 v176, v176, s[20:23], 0 offen
	buffer_load_u16 v177, v177, s[20:23], 0 offen
	buffer_load_u16 v178, v178, s[20:23], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v179, v179, s[36:39], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v180, v1
	v_cvt_f32_i32_e32 v181, v2
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
	v_cvt_f32_i32_e32 v182, v3
	v_cvt_f32_i32_e32 v183, v4
	v_cvt_f32_i32_e32 v184, v5
	v_cvt_f32_i32_e32 v185, v6
	v_cvt_f32_i32_e32 v186, v7
	v_cvt_f32_i32_e32 v187, v8
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s6, s49, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s3, s6, 4
	s_cmp_lg_u32 s49, s53
	s_mov_b32 s49, s6
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v2, 16, v176
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v42, v42, v2 :: v_dual_lshlrev_b32 v1, 16, v175
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v58, v58, v1 :: v_dual_lshlrev_b32 v175, 16, v178
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v59, v59, v1 :: v_dual_lshlrev_b32 v4, 16, v179
	v_mul_f32_e32 v57, v57, v1
	v_dual_mul_f32 v44, v44, v2 :: v_dual_lshlrev_b32 v3, 16, v177
	v_dual_mul_f32 v60, v60, v1 :: v_dual_mul_f32 v41, v41, v2
	v_dual_mul_f32 v61, v61, v1 :: v_dual_mul_f32 v46, v46, v2
	v_dual_mul_f32 v62, v62, v1 :: v_dual_mul_f32 v43, v43, v2
	v_dual_mul_f32 v63, v63, v1 :: v_dual_mul_f32 v48, v48, v2
	v_dual_mul_f32 v64, v64, v1 :: v_dual_mul_f32 v45, v45, v2
	v_dual_mul_f32 v49, v49, v1 :: v_dual_mul_f32 v34, v34, v2
	v_dual_mul_f32 v50, v50, v1 :: v_dual_mul_f32 v47, v47, v2
	v_dual_mul_f32 v51, v51, v1 :: v_dual_mul_f32 v36, v36, v2
	v_dual_mul_f32 v52, v52, v1 :: v_dual_mul_f32 v33, v33, v2
	v_dual_mul_f32 v53, v53, v1 :: v_dual_mul_f32 v38, v38, v2
	v_dual_mul_f32 v54, v54, v1 :: v_dual_mul_f32 v35, v35, v2
	v_dual_mul_f32 v55, v55, v1 :: v_dual_mul_f32 v40, v40, v2
	v_dual_mul_f32 v56, v56, v1 :: v_dual_mul_f32 v37, v37, v2
	v_dual_mul_f32 v39, v39, v2 :: v_dual_mul_f32 v26, v26, v3
	v_mul_f32_e32 v25, v25, v3
	v_mul_f32_e32 v27, v27, v3
	v_mul_f32_e32 v28, v28, v3
	v_mul_f32_e32 v29, v29, v3
	v_mul_f32_e32 v30, v30, v3
	v_mul_f32_e32 v31, v31, v3
	v_mul_f32_e32 v20, v20, v3
	v_mul_f32_e32 v22, v22, v3
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v173, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v176, v9, v175
	v_mul_f32_e32 v177, v10, v175
	v_mul_f32_e32 v178, v11, v175
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[5:8], v174 offset:16
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v179, v12, v175
	v_mul_f32_e32 v188, v13, v175
	v_mul_f32_e32 v189, v14, v175
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[9:12], v174 offset:512
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v190, v15, v175
	v_mul_f32_e32 v191, v16, v175
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[13:16], v174 offset:528
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v32, v32, v3
	v_mul_f32_e32 v17, v17, v3
	v_mul_f32_e32 v18, v18, v3
	v_mul_f32_e32 v19, v19, v3
	v_mul_f32_e32 v21, v21, v3
	v_mul_f32_e32 v23, v23, v3
	v_mul_f32_e32 v24, v24, v3
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[1:4], v174
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v181, v181, v175
	v_mul_f32_e32 v183, v183, v175
	v_mul_f32_e32 v185, v185, v175
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v141, v61, v5 :: v_dual_mul_f32 v180, v180, v175
	v_fmac_f32_e32 v107, v30, v6
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v140, v62, v6 :: v_dual_fmac_f32 v137, v49, v9
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v182, v182, v175 :: v_dual_fmac_f32 v105, v32, v8
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v133, v53, v13 :: v_dual_mul_f32 v184, v184, v175
	v_dual_fmac_f32 v103, v18, v10 :: v_dual_fmac_f32 v138, v64, v8
	v_dual_fmac_f32 v136, v50, v10 :: v_dual_fmac_f32 v139, v63, v7
	v_fmac_f32_e32 v104, v17, v9
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v134, v52, v12 :: v_dual_fmac_f32 v129, v41, v1
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v186, v186, v175 :: v_dual_fmac_f32 v101, v20, v12
	v_dual_mul_f32 v175, v187, v175 :: v_dual_fmac_f32 v114, v40, v16
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v145, v57, v1 :: v_dual_fmac_f32 v144, v58, v2
	v_dual_fmac_f32 v143, v59, v3 :: v_dual_fmac_f32 v108, v29, v5
	v_fmac_f32_e32 v142, v60, v4
	v_dual_fmac_f32 v132, v54, v14 :: v_dual_fmac_f32 v135, v51, v11
	v_fmac_f32_e32 v100, v21, v13
	v_fmac_f32_e32 v130, v56, v16
	v_fmac_f32_e32 v128, v42, v2
	v_dual_fmac_f32 v126, v44, v4 :: v_dual_fmac_f32 v125, v45, v5
	v_dual_fmac_f32 v124, v46, v6 :: v_dual_fmac_f32 v123, v47, v7
	v_fmac_f32_e32 v88, v180, v9
	v_dual_fmac_f32 v122, v48, v8 :: v_dual_fmac_f32 v121, v33, v9
	v_fmac_f32_e32 v120, v34, v10
	v_dual_fmac_f32 v118, v36, v12 :: v_dual_fmac_f32 v117, v37, v13
	v_dual_fmac_f32 v116, v38, v14 :: v_dual_fmac_f32 v119, v35, v11
	v_dual_fmac_f32 v84, v185, v14 :: v_dual_fmac_f32 v115, v39, v15
	v_fmac_f32_e32 v113, v25, v1
	v_fmac_f32_e32 v111, v26, v2
	v_dual_fmac_f32 v131, v55, v15 :: v_dual_fmac_f32 v96, v176, v1
	v_dual_fmac_f32 v110, v27, v3 :: v_dual_fmac_f32 v99, v22, v14
	v_fmac_f32_e32 v109, v28, v4
	v_dual_fmac_f32 v127, v43, v3 :: v_dual_fmac_f32 v92, v188, v5
	v_dual_fmac_f32 v106, v31, v7 :: v_dual_fmac_f32 v97, v24, v16
	v_dual_fmac_f32 v102, v19, v11 :: v_dual_fmac_f32 v95, v177, v2
	v_dual_fmac_f32 v98, v23, v15 :: v_dual_fmac_f32 v91, v189, v6
	v_dual_fmac_f32 v94, v178, v3 :: v_dual_fmac_f32 v93, v179, v4
	v_dual_fmac_f32 v90, v190, v7 :: v_dual_fmac_f32 v89, v191, v8
	v_dual_fmac_f32 v87, v181, v10 :: v_dual_fmac_f32 v86, v182, v11
	v_dual_fmac_f32 v85, v183, v12 :: v_dual_fmac_f32 v82, v186, v15
	v_dual_fmac_f32 v83, v184, v13 :: v_dual_fmac_f32 v80, v175, v16
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s6, s46, s3
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v1, s6, 0, 16
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s6, v1
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
	s_and_b32 s7, s6, 16
	s_mov_b32 s6, s45
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s45, s7
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v57, 0
	s_mov_b32 s6, s45
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
	.loc	1 1462 30 is_stmt 1             ; ragged.py:1462:30
	s_add_i32 s8, s6, s3
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s30, s26
	.loc	1 1472 46 is_stmt 0             ; ragged.py:1472:46
	s_add_i32 s9, s8, s47
	.loc	1 1471 46 is_stmt 1             ; ragged.py:1471:46
	v_add_nc_u32_e32 v175, s8, v67
	.loc	1 1472 46                       ; ragged.py:1472:46
	s_mul_i32 s9, s9, s35
	.loc	1 1472 38 is_stmt 0             ; ragged.py:1472:38
	s_mov_b32 s31, s27
	.loc	1 1472 46                       ; ragged.py:1472:46
	v_add_nc_u32_e32 v176, s9, v65
	v_add_nc_u32_e32 v177, s9, v149
	v_add_nc_u32_e32 v178, s9, v150
	v_add_nc_u32_e32 v179, s9, v69
	v_add_nc_u32_e32 v180, s9, v151
	v_add_nc_u32_e32 v181, s9, v70
	v_add_nc_u32_e32 v182, s9, v71
	v_add_nc_u32_e32 v183, s9, v72
	v_add_nc_u32_e32 v184, s9, v152
	v_add_nc_u32_e32 v185, s9, v73
	v_add_nc_u32_e32 v186, s9, v74
	v_add_nc_u32_e32 v187, s9, v75
	v_add_nc_u32_e32 v188, s9, v76
	v_add_nc_u32_e32 v189, s9, v77
	v_add_nc_u32_e32 v190, s9, v78
	v_add_nc_u32_e32 v191, s9, v79
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v176, 0x80000000, v176, s4
	v_cndmask_b32_e64 v177, 0x80000000, v177, s4
	v_cndmask_b32_e64 v178, 0x80000000, v178, s4
	v_cndmask_b32_e64 v179, 0x80000000, v179, s4
	.loc	1 1471 38 is_stmt 1             ; ragged.py:1471:38
	v_cndmask_b32_e32 v175, 0x80000000, v175, vcc_lo
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v180, 0x80000000, v180, s4
	v_cndmask_b32_e64 v181, 0x80000000, v181, s4
	v_cndmask_b32_e64 v182, 0x80000000, v182, s4
	v_cndmask_b32_e64 v183, 0x80000000, v183, s4
	v_cndmask_b32_e64 v184, 0x80000000, v184, s4
	v_cndmask_b32_e64 v185, 0x80000000, v185, s4
	v_cndmask_b32_e64 v186, 0x80000000, v186, s4
	v_cndmask_b32_e64 v187, 0x80000000, v187, s4
	v_cndmask_b32_e64 v188, 0x80000000, v188, s4
	v_cndmask_b32_e64 v189, 0x80000000, v189, s4
	v_cndmask_b32_e64 v190, 0x80000000, v190, s4
	v_cndmask_b32_e64 v191, 0x80000000, v191, s4
	s_clause 0xf
	buffer_load_u8 v195, v176, s[28:31], 0 offen
	buffer_load_u8 v193, v177, s[28:31], 0 offen
	buffer_load_u8 v197, v178, s[28:31], 0 offen
	buffer_load_u8 v192, v179, s[28:31], 0 offen
	buffer_load_u8 v196, v180, s[28:31], 0 offen
	buffer_load_u8 v194, v181, s[28:31], 0 offen
	buffer_load_u8 v198, v182, s[28:31], 0 offen
	buffer_load_u8 v199, v183, s[28:31], 0 offen
	buffer_load_u8 v200, v184, s[28:31], 0 offen
	buffer_load_u8 v201, v185, s[28:31], 0 offen
	buffer_load_u8 v202, v186, s[28:31], 0 offen
	buffer_load_u8 v203, v187, s[28:31], 0 offen
	buffer_load_u8 v204, v188, s[28:31], 0 offen
	buffer_load_u8 v205, v189, s[28:31], 0 offen
	buffer_load_u8 v206, v190, s[28:31], 0 offen
	buffer_load_u8 v207, v191, s[28:31], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	buffer_load_b32 v175, v175, s[24:27], 0 offen
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
	s_add_i32 s6, s6, 16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s6, s7
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
	v_wmma_i32_16x16x16_iu4 v[57:64], v[191:192], v[175:176], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[193:194], v[175:176], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[191:192], v[177:178], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[193:194], v[177:178], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[191:192], v[179:180], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[193:194], v[179:180], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[191:192], v[181:182], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[193:194], v[181:182], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[195:196], v[183:184], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[197:198], v[183:184], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[195:196], v[185:186], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[197:198], v[185:186], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[195:196], v[187:188], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[197:198], v[187:188], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[195:196], v[189:190], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[197:198], v[189:190], v[1:8] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s7, s44, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s9, s7, 16
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s6, s9
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_add_i32 s22, s6, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s13, s22, 1
	s_or_b32 s14, s22, 2
	s_or_b32 s15, s22, 3
	s_or_b32 s16, s22, 4
	s_or_b32 s17, s22, 5
	s_or_b32 s18, s22, 6
	s_or_b32 s19, s22, 7
	s_or_b32 s23, s22, 8
	s_or_b32 s30, s22, 9
	s_or_b32 s31, s22, 10
	s_or_b32 s38, s22, 11
	s_or_b32 s39, s22, 12
	s_or_b32 s54, s22, 13
	s_or_b32 s55, s22, 14
	s_or_b32 s56, s22, 15
	.loc	1 1494 35                       ; ragged.py:1494:35
	s_sub_i32 s10, s13, s3
	s_sub_i32 s11, s14, s3
	s_sub_i32 s12, s15, s3
	s_sub_i32 s57, s16, s3
	s_sub_i32 s58, s17, s3
	s_sub_i32 s59, s18, s3
	s_sub_i32 s60, s19, s3
	s_sub_i32 s61, s23, s3
	s_sub_i32 s62, s30, s3
	s_sub_i32 s63, s31, s3
	s_sub_i32 s64, s38, s3
	s_sub_i32 s65, s39, s3
	s_sub_i32 s66, s54, s3
	s_sub_i32 s67, s55, s3
	s_sub_i32 s68, s56, s3
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	s_cmp_lt_i32 s10, s9
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v175, s22, v66
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s11, s9
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v176, s22, v146
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s12, s9
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v177, s22, v147
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s57, s9
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v178, s22, v148
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s58, s9
	.loc	1 1494 35 is_stmt 0             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v179, s3, v175
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s59, s9
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v180, s3, v176
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s60, s9
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v181, s3, v177
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s61, s9
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v182, s3, v178
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s62, s9
	v_cmp_gt_i32_e64 s3, s9, v179
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s63, s9
	v_cmp_gt_i32_e64 s6, s9, v180
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s64, s9
	v_cmp_gt_i32_e64 s7, s9, v181
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s65, s9
	v_cmp_gt_i32_e64 s8, s9, v182
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s66, s9
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s10, s51, v176
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s67, s9
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s11, s51, v177
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s68, s9
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s9, s51, v175
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s85, -1, 0
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cmp_eq_u32 s22, s51
	v_cmp_eq_u32_e64 s12, s51, v178
	s_cselect_b32 s57, -1, 0
	s_cmp_eq_u32 s13, s51
	s_cselect_b32 s13, -1, 0
	s_cmp_eq_u32 s14, s51
	s_cselect_b32 s14, -1, 0
	s_cmp_eq_u32 s15, s51
	s_cselect_b32 s15, -1, 0
	s_cmp_eq_u32 s16, s51
	s_cselect_b32 s16, -1, 0
	s_cmp_eq_u32 s17, s51
	s_cselect_b32 s17, -1, 0
	s_cmp_eq_u32 s18, s51
	s_cselect_b32 s18, -1, 0
	s_cmp_eq_u32 s19, s51
	s_cselect_b32 s19, -1, 0
	s_cmp_eq_u32 s23, s51
	s_cselect_b32 s59, -1, 0
	s_cmp_eq_u32 s30, s51
	s_cselect_b32 s30, -1, 0
	s_cmp_eq_u32 s31, s51
	s_cselect_b32 s31, -1, 0
	s_cmp_eq_u32 s38, s51
	s_cselect_b32 s62, -1, 0
	s_cmp_eq_u32 s39, s51
	s_cselect_b32 s63, -1, 0
	s_cmp_eq_u32 s54, s51
	s_cselect_b32 s64, -1, 0
	s_cmp_eq_u32 s55, s51
	s_cselect_b32 s65, -1, 0
	s_cmp_eq_u32 s56, s51
	s_cselect_b32 s66, -1, 0
	.loc	1 1495 36 is_stmt 0             ; ragged.py:1495:36
	s_and_b32 s67, s9, s50
	.loc	1 1496 46 is_stmt 1             ; ragged.py:1496:46
	s_add_i32 s9, s22, s52
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s3
	v_add_nc_u32_e32 v175, s9, v68
	v_add_nc_u32_e32 v176, s9, v158
	s_and_b32 s6, vcc_lo, s6
	v_add_nc_u32_e32 v177, s9, v159
	s_and_b32 s7, vcc_lo, s7
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v175, 0x80000000, v175, s3
	v_add_nc_u32_e32 v178, s9, v160
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s8, vcc_lo, s8
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	s_add_i32 s22, s22, s47
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s60, s30, s50
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v179, v175, s[24:27], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v176, s6
	.loc	1 1497 46                       ; ragged.py:1497:46
	s_mul_i32 s22, s22, s35
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s61, s31, s50
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v176, s22, v149
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s4, s71
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	buffer_load_u8 v180, v175, s[24:27], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v177, s7
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	.loc	1 1497 46 is_stmt 0             ; ragged.py:1497:46
	v_add_nc_u32_e32 v181, s22, v150
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s6, s4, s72
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	buffer_load_u8 v177, v175, s[24:27], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v178, s8
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v182, s22, v69
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s7, s4, s73
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v183, s22, v151
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s8, s4, s74
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	buffer_load_u8 v178, v175, s[24:27], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v175, s22, v65
	v_add_nc_u32_e32 v184, s22, v70
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s9, s4, s75
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v185, s22, v71
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s68, s10, s50
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v175, 0x80000000, v175, s4
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s10, s4, s76
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v186, s22, v72
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s69, s11, s50
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s11, s4, s77
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	buffer_load_u8 v195, v175, s[28:31], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v176, s3
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v187, s22, v152
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s70, s12, s50
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s12, s4, s78
	.loc	1 1497 46 is_stmt 0             ; ragged.py:1497:46
	v_add_nc_u32_e32 v188, s22, v73
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v196, v175, s[28:31], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v181, s6
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s38, s13, s50
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s13, s4, s79
	.loc	1 1497 46 is_stmt 0             ; ragged.py:1497:46
	v_add_nc_u32_e32 v189, s22, v74
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s39, s14, s50
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v197, v175, s[28:31], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v182, s7
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s14, s4, s80
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v190, s22, v75
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s54, s15, s50
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s15, s4, s81
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	buffer_load_u8 v198, v175, s[28:31], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v183, s8
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v191, s22, v76
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s55, s16, s50
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s16, s4, s82
	.loc	1 1497 46 is_stmt 0             ; ragged.py:1497:46
	v_add_nc_u32_e32 v192, s22, v77
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v199, v175, s[28:31], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v184, s9
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s56, s17, s50
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s17, s4, s83
	.loc	1 1497 46 is_stmt 0             ; ragged.py:1497:46
	v_add_nc_u32_e32 v193, s22, v78
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s23, s57, s50
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v200, v175, s[28:31], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v185, s10
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s57, s18, s50
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s18, s4, s84
	.loc	1 1497 46 is_stmt 0             ; ragged.py:1497:46
	v_add_nc_u32_e32 v194, s22, v79
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s58, s19, s50
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v185, v175, s[28:31], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v186, s11
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s19, s4, s85
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s59, s59, s50
	s_and_b32 s62, s62, s50
	s_and_b32 s63, s63, s50
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v186, v175, s[28:31], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v187, s12
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s64, s64, s50
	s_and_b32 s65, s65, s50
	s_and_b32 s66, s66, s50
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v187, v175, s[28:31], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v188, s13
	buffer_load_u8 v188, v175, s[28:31], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v189, s14
	buffer_load_u8 v189, v175, s[28:31], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v190, s15
	buffer_load_u8 v190, v175, s[28:31], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v191, s16
	buffer_load_u8 v201, v175, s[28:31], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v192, s17
	buffer_load_u8 v202, v175, s[28:31], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v193, s18
	buffer_load_u8 v203, v175, s[28:31], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v194, s19
	buffer_load_u8 v204, v175, s[28:31], 0 offen
	.loc	1 1498 38                       ; ragged.py:1498:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1498 66 is_stmt 0             ; ragged.py:1498:66
	s_waitcnt vmcnt(19)
	v_and_b16 v175.l, v179.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v175.l, v179.l, v175.l, s67
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(18)
	v_and_b16 v175.h, v180.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v175.h, v180.l, v175.h, s68
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(17)
	v_and_b16 v176.l, v177.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_lshlrev_b16 v175.h, 8, v175.h
	v_cndmask_b16 v176.l, v177.l, v176.l, s69
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(16)
	v_and_b16 v176.h, v178.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v176.h, v178.l, v176.h, s70
	v_lshlrev_b16 v176.h, 8, v176.h
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(15)
	v_and_b16 v177.l, v195.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_or_b16 v176.h, v176.l, v176.h
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v191.l, v195.l, v177.l, s23
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(14)
	v_and_b16 v177.h, v196.l, 15
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_or_b16 v176.l, v175.l, v175.h
	v_add_nc_u32_e32 v175, 0, v153
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v191.h, v196.l, v177.h, s38
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(13)
	v_and_b16 v178.l, v197.l, 15
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	ds_store_b32 v175, v176
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v192.l, v197.l, v178.l, s39
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(12)
	v_and_b16 v178.h, v198.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v192.h, v198.l, v178.h, s54
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(11)
	v_and_b16 v179.l, v199.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v193.l, v199.l, v179.l, s55
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(10)
	v_and_b16 v179.h, v200.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v193.h, v200.l, v179.h, s56
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(9)
	v_and_b16 v180.l, v185.l, 15
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v179, 0, v154
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v194.l, v185.l, v180.l, s57
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(8)
	v_and_b16 v180.h, v186.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v194.h, v186.l, v180.h, s58
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(7)
	v_and_b16 v181.l, v187.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v195.l, v187.l, v181.l, s59
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(6)
	v_and_b16 v181.h, v188.l, 15
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v187, 0, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v195.h, v188.l, v181.h, s60
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(5)
	v_and_b16 v182.l, v189.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v196.l, v189.l, v182.l, s61
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(4)
	v_and_b16 v182.h, v190.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v196.h, v190.l, v182.h, s62
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(3)
	v_and_b16 v183.l, v201.l, 15
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	ds_load_2addr_b64 v[175:178], v179 offset1:32
	ds_load_2addr_b64 v[179:182], v179 offset0:64 offset1:96
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v197.l, v201.l, v183.l, s63
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(2)
	v_and_b16 v183.h, v202.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v197.h, v202.l, v183.h, s64
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(1)
	v_and_b16 v184.l, v203.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v198.l, v203.l, v184.l, s65
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v184.h, v204.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v198.h, v204.l, v184.h, s66
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
	v_wmma_i32_16x16x16_iu4 v[57:64], v[191:192], v[175:176], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[191:192], v[177:178], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[191:192], v[179:180], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[191:192], v[181:182], v[9:16] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[57:64], v[193:194], v[183:184], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[193:194], v[185:186], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[193:194], v[187:188], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[193:194], v[189:190], v[9:16] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[49:56], v[195:196], v[175:176], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v175, v172 offset:3456
	ds_load_u8 v176, v172 offset:3200
	v_wmma_i32_16x16x16_iu4 v[33:40], v[195:196], v[177:178], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[195:196], v[179:180], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[195:196], v[181:182], v[1:8] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[49:56], v[175:176], v[183:184], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[175:176], v[185:186], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[175:176], v[187:188], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[175:176], v[189:190], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %Flow266
	.loc	1 0 35 is_stmt 0                ; ragged.py:0:35
	v_mov_b32_e32 v7, v112
.LBB0_12:                               ; %._crit_edge9
	.loc	1 1532 33 is_stmt 1             ; ragged.py:1532:33
	v_bfe_u32 v1, v145, 16, 1
	v_bfe_u32 v2, v144, 16, 1
	v_bfe_u32 v3, v143, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v145, v145
	v_bfe_u32 v4, v142, 16, 1
	v_add3_u32 v1, v145, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v144, v144
	v_add3_u32 v2, v144, v2, 0x7fff
	v_cmp_o_f32_e64 s1, v143, v143
	v_add3_u32 v3, v143, v3, 0x7fff
	v_bfe_u32 v6, v140, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v4, v142, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v142, v142
	v_cndmask_b16 v3.l, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v141, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v3.h, s1
	v_add3_u32 v6, v140, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v140, v140
	v_cndmask_b16 v9.l, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v139, 16, 1
	v_add3_u32 v2, v141, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v141, v141
	v_cndmask_b16 v13.l, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v137, 16, 1
	v_add3_u32 v4, v139, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v139, v139
	v_cndmask_b16 v11.l, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v138, 16, 1
	v_add3_u32 v6, v137, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v137, v137
	v_cndmask_b16 v15.l, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v136, 16, 1
	v_add3_u32 v2, v138, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v138, v138
	v_cndmask_b16 v19.l, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v134, 16, 1
	v_add3_u32 v4, v136, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v136, v136
	v_cndmask_b16 v17.l, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v135, 16, 1
	v_add3_u32 v6, v134, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v134, v134
	v_cndmask_b16 v21.l, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v133, 16, 1
	v_add3_u32 v2, v135, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v135, v135
	v_cndmask_b16 v25.l, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v131, 16, 1
	v_add3_u32 v4, v133, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v133, v133
	v_cndmask_b16 v23.l, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v132, 16, 1
	v_add3_u32 v6, v131, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v131, v131
	v_cndmask_b16 v27.l, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v130, 16, 1
	v_add3_u32 v2, v132, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v132, v132
	v_cndmask_b16 v31.l, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v128, 16, 1
	v_add3_u32 v4, v130, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v130, v130
	v_cndmask_b16 v29.l, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v129, 16, 1
	v_add3_u32 v6, v128, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v128, v128
	v_cndmask_b16 v33.l, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v127, 16, 1
	v_add3_u32 v2, v129, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v129, v129
	v_cndmask_b16 v3.h, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v125, 16, 1
	v_add3_u32 v4, v127, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v127, v127
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v126, 16, 1
	v_add3_u32 v6, v125, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v125, v125
	v_cndmask_b16 v5.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v124, 16, 1
	v_add3_u32 v2, v126, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v126, v126
	v_cndmask_b16 v11.h, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v122, 16, 1
	v_add3_u32 v4, v124, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v124, v124
	v_cndmask_b16 v9.h, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v123, 16, 1
	v_add3_u32 v6, v122, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v122, v122
	v_cndmask_b16 v13.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v121, 16, 1
	v_add3_u32 v2, v123, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v123, v123
	v_cndmask_b16 v17.h, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v119, 16, 1
	v_add3_u32 v4, v121, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v121, v121
	v_cndmask_b16 v15.h, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v120, 16, 1
	v_add3_u32 v6, v119, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v119, v119
	v_cndmask_b16 v19.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v118, 16, 1
	v_add3_u32 v2, v120, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v120, v120
	v_cndmask_b16 v23.h, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v116, 16, 1
	v_add3_u32 v4, v118, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v118, v118
	v_cndmask_b16 v21.h, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v117, 16, 1
	v_add3_u32 v6, v116, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v116, v116
	v_cndmask_b16 v25.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v115, 16, 1
	v_add3_u32 v2, v117, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v117, v117
	v_cndmask_b16 v29.h, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v113, 16, 1
	v_add3_u32 v4, v115, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v115, v115
	v_cndmask_b16 v27.h, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v114, 16, 1
	v_add3_u32 v6, v113, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v113, v113
	v_cndmask_b16 v31.h, 0x7fff, v4.h, vcc_lo
	v_bfe_u32 v4, v111, 16, 1
	v_add3_u32 v2, v114, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v114, v114
	v_bfe_u32 v10, v110, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v109, 16, 1
	v_add3_u32 v4, v111, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v111, v111
	v_bfe_u32 v12, v108, 16, 1
	v_cndmask_b16 v33.h, 0x7fff, v2.h, s0
	v_add3_u32 v10, v110, v10, 0x7fff
	v_cmp_o_f32_e64 s0, v110, v110
	v_bfe_u32 v14, v107, 16, 1
	v_add3_u32 v6, v109, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v109, v109
	v_bfe_u32 v16, v106, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v4.h, vcc_lo
	v_add3_u32 v12, v108, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v108, v108
	v_bfe_u32 v18, v105, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v10.h, s0
	v_add3_u32 v14, v107, v14, 0x7fff
	v_cmp_o_f32_e64 s0, v107, v107
	v_bfe_u32 v20, v104, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v6.h, s1
	v_add3_u32 v16, v106, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v106, v106
	v_bfe_u32 v22, v103, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, vcc_lo
	v_add3_u32 v18, v105, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	v_bfe_u32 v24, v102, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s0
	v_add3_u32 v20, v104, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v104, v104
	v_bfe_u32 v26, v101, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v16.h, s1
	v_add3_u32 v22, v103, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v103, v103
	v_bfe_u32 v28, v100, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, vcc_lo
	v_add3_u32 v24, v102, v24, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v102, v102
	v_bfe_u32 v30, v99, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s0
	v_add3_u32 v26, v101, v26, 0x7fff
	v_cmp_o_f32_e64 s0, v101, v101
	v_bfe_u32 v32, v98, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s1
	v_add3_u32 v28, v100, v28, 0x7fff
	v_cmp_o_f32_e64 s1, v100, v100
	v_bfe_u32 v34, v97, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, vcc_lo
	v_add3_u32 v30, v99, v30, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v99, v99
	v_bfe_u32 v35, v96, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s0
	v_add3_u32 v32, v98, v32, 0x7fff
	v_cmp_o_f32_e64 s0, v98, v98
	v_bfe_u32 v36, v95, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s1
	v_add3_u32 v34, v97, v34, 0x7fff
	v_cmp_o_f32_e64 s1, v97, v97
	v_bfe_u32 v37, v94, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, vcc_lo
	v_add3_u32 v35, v96, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v96, v96
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s0
	v_add3_u32 v36, v95, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v95, v95
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s1
	v_add3_u32 v37, v94, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v94, v94
	v_cndmask_b16 v2.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v93, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v92, 16, 1
	v_cndmask_b16 v6.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v91, 16, 1
	v_add3_u32 v35, v93, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v93, v93
	v_add3_u32 v36, v92, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v92, v92
	v_add3_u32 v37, v91, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v91, v91
	v_cndmask_b16 v10.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v90, 16, 1
	v_cndmask_b16 v12.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v89, 16, 1
	v_cndmask_b16 v14.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v88, 16, 1
	v_add3_u32 v35, v90, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	v_add3_u32 v36, v89, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v89, v89
	v_add3_u32 v37, v88, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v88, v88
	v_cndmask_b16 v16.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v87, 16, 1
	v_cndmask_b16 v18.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v86, 16, 1
	v_cndmask_b16 v20.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v85, 16, 1
	v_add3_u32 v35, v87, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v87, v87
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v38, 3, v81
	v_lshlrev_b32_e32 v39, 6, v0
	v_and_b32_e32 v7, 0x1c0, v7
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v36, v86, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v86, v86
	v_add3_u32 v37, v85, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v85, v85
	v_cndmask_b16 v22.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v83, 16, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v41, 11, v81
	v_and_b32_e32 v39, 0x400, v39
	v_xor_b32_e32 v7, v38, v7
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v24.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v84, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v82, 16, 1
	v_bfe_u32 v40, v80, 16, 1
	v_add3_u32 v35, v83, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_or3_b32 v7, v41, v39, v7
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v36, v84, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v84, v84
	v_add3_u32 v37, v82, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v82, v82
	v_add3_u32 v38, v80, v40, 0x7fff
	v_cmp_o_f32_e64 s2, v80, v80
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
	s_lshr_b32 s0, s35, 31
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v33, s43, v0
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v0, s42, 7, v39
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_add_i32 s0, s35, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_ashr_i32 s1, s0, 1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v33
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_14:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 2, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_16:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 4, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_18:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 6, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_20:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 8, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_22:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 10, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_24:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 12, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_26:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 14, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_28:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v34, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v34
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
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
	v_cmp_gt_i32_e64 s0, s34, v29
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
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
	v_cmp_gt_i32_e64 s0, s34, v25
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
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
	v_cmp_gt_i32_e64 s0, s34, v21
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
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
	v_cmp_gt_i32_e64 s0, s34, v17
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
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
	v_cmp_gt_i32_e64 s0, s34, v13
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
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
	v_cmp_gt_i32_e64 s0, s34, v9
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
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
	v_cmp_gt_i32_e64 s0, s34, v5
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
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
	v_cmp_gt_i32_e64 s0, s34, v1
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v1, off
.LBB0_46:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v1, off
.LBB0_48:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v1, off
.LBB0_50:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 38, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v1, off
.LBB0_52:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 40, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v1, off
.LBB0_54:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 42, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v1, off
.LBB0_56:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 44, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v1, off
.LBB0_58:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 46, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
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
	v_add_co_u32 v34, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s41, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v1, off
.LBB0_60:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 48, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
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
	v_add_co_u32 v29, s0, s40, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v30, null, s41, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[29:30], v1, off
.LBB0_62:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 50, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
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
	v_add_co_u32 v25, s0, s40, v29
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v26, null, s41, v30, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[25:26], v1, off
.LBB0_64:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 52, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
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
	v_add_co_u32 v21, s0, s40, v25
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v22, null, s41, v26, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[21:22], v1, off
.LBB0_66:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 54, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
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
	v_add_co_u32 v17, s0, s40, v21
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s41, v22, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[17:18], v1, off
.LBB0_68:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 56, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
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
	v_add_co_u32 v13, s0, s40, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s41, v18, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[13:14], v1, off
.LBB0_70:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 58, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
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
	v_add_co_u32 v9, s0, s40, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s41, v14, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[9:10], v1, off
.LBB0_72:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 60, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
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
	v_add_co_u32 v5, s0, s40, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s41, v10, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[5:6], v1, off
.LBB0_74:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 62, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
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
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_sgpr 86
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 210
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 86
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13080
; TotalNumSgprs: 88
; NumVgprs: 210
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 88
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     88
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.kd
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
