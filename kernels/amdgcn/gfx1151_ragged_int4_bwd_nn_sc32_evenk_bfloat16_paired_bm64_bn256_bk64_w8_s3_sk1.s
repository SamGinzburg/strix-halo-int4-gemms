	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[28:29], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s8, s2
	v_lshlrev_b32_e32 v112, 1, v0
	v_and_b32_e32 v113, 0x7f, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
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
	s_ashr_i32 s4, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s10, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s10, s4
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
	s_sub_i32 s11, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s11, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s8, s10
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s6, s8
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s20, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s8
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s20, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3)
	s_mul_i32 s7, s5, s6
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s5, s2, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_hi_u32 s2, s6, s7
	s_abs_i32 s4, s5
	s_add_i32 s2, s6, s2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_mul_hi_u32 s2, s4, s2
	s_xor_b32 s9, s5, s10
	s_mul_i32 s11, s2, s8
	s_ashr_i32 s12, s9, 31
	s_sub_i32 s4, s4, s11
	s_add_i32 s9, s2, 1
	s_sub_i32 s11, s4, s8
	s_cmp_ge_u32 s4, s8
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s4, s11, s4
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s4, s8
	s_mov_b32 s4, 0
	s_cselect_b32 s2, s9, s2
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s21, s20, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s2, s2, s12
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[8:9], s[20:21], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s2, s2, s12
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s8
	s_addc_u32 s7, s7, s9
	s_load_b32 s21, s[6:7], 0x0
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s2, s10
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s21, s21, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s21, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge8_crit_edge
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v1, 1, v0
	v_and_b32_e32 v32, 0x7f, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 34 is_stmt 0                ; ragged.py:0:34
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr32
.LBB0_3:                                ; %Flow247
	s_load_b64 s[30:31], s[0:1], 0x28
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v81, 0x80, v0
	v_dual_mov_b32 v82, 0 :: v_dual_and_b32 v65, 15, v0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s10, 0, v81
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v114, 0
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
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	s_sub_i32 s33, s5, s6
	s_lshl_b32 s36, s2, 6
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mul_i32 s11, s20, s28
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.preheader.lr.ph
	s_load_b64 s[34:35], s[0:1], 0x38
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_lshl_or_b32 v66, s33, 8, v0
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s3, s3, 4
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, s36, v65
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s24, s21, 1
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s36, v1
	s_cmp_lt_i32 s3, 16
	s_load_b256 s[12:19], s[0:1], 0x0
	s_cselect_b32 s39, -1, 0
	s_add_i32 s25, s36, s11
	v_or_b32_e32 v7, 16, v3
	v_or_b32_e32 v5, 16, v2
	v_or_b32_e32 v6, 32, v2
	v_or_b32_e32 v10, 48, v2
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s4, s28, v2
	v_cmp_gt_i32_e64 s1, s28, v7
	v_dual_mov_b32 v143, 0 :: v_dual_lshlrev_b32 v2, 4, v0
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v7, s25, v65
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[67:68], null, s34, v1, v[65:66]
	v_dual_mov_b32 v145, 0 :: v_dual_and_b32 v4, 0xf0, v0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v8, 32, v3
	v_or_b32_e32 v9, 48, v3
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v3
	v_dual_mov_b32 v141, 0 :: v_dual_and_b32 v2, 0x70, v2
	v_bfe_i32 v3, v0, 3, 1
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v11, 16, v7
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v12, 32, v7
	v_dual_mov_b32 v138, 0 :: v_dual_lshlrev_b32 v13, 5, v0
	v_mad_u64_u32 v[68:69], null, s34, 48, v[67:68]
	v_mad_u64_u32 v[69:70], null, s29, 3, v[66:67]
	v_mad_u64_u32 v[70:71], null, s29, 5, v[66:67]
	v_mad_u64_u32 v[71:72], null, s29, 6, v[66:67]
	v_cmp_gt_i32_e64 s5, s28, v5
	v_cmp_gt_i32_e64 s6, s28, v6
	v_cndmask_b32_e64 v5, 0x88, 0, s10
	v_and_or_b32 v152, 0x88, v3, v2
	v_lshrrev_b32_e32 v6, 1, v0
	v_mul_lo_u32 v154, v7, s35
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v7, 48, v7
	v_mul_lo_u32 v155, v11, s35
	v_mul_lo_u32 v156, v12, s35
	v_dual_mov_b32 v134, 0 :: v_dual_lshlrev_b32 v11, 2, v4
	v_dual_mov_b32 v135, 0 :: v_dual_and_b32 v12, 32, v13
	v_mad_u64_u32 v[72:73], null, s29, 7, v[66:67]
	v_mad_u64_u32 v[73:74], null, s29, 9, v[66:67]
	v_mad_u64_u32 v[74:75], null, s29, 10, v[66:67]
	v_mad_u64_u32 v[75:76], null, s29, 11, v[66:67]
	v_mad_u64_u32 v[76:77], null, s29, 12, v[66:67]
	v_cmp_gt_i32_e64 s2, s28, v8
	v_cmp_gt_i32_e64 s9, s28, v9
	v_cmp_gt_i32_e64 s7, s28, v10
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v1, 0, v65
	v_xor_b32_e32 v2, v5, v113
	v_xor_b32_e32 v3, 8, v152
	v_or_b32_e32 v5, 0x300, v0
	v_or_b32_e32 v8, 0x700, v0
	v_or_b32_e32 v9, 0xb00, v0
	v_or_b32_e32 v10, 0xf00, v0
	v_dual_mov_b32 v139, 0 :: v_dual_and_b32 v6, 0x70, v6
	v_mul_lo_u32 v157, v7, s35
	v_dual_mov_b32 v132, 0 :: v_dual_and_b32 v7, 28, v112
	v_add3_u32 v11, 0, v11, v12
	v_dual_mov_b32 v133, 0 :: v_dual_lshlrev_b32 v4, 1, v4
	v_mad_u64_u32 v[77:78], null, s29, 13, v[66:67]
	v_mad_u64_u32 v[78:79], null, s29, 14, v[66:67]
	v_mad_u64_u32 v[79:80], null, s29, 15, v[66:67]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s29, v66
	v_lshl_add_u32 v147, s34, 4, v67
	v_lshl_add_u32 v148, s34, 5, v67
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v149, s29, v66
	v_lshl_add_u32 v150, s29, 1, v66
	v_lshl_add_u32 v151, s29, 2, v66
	v_lshl_add_u32 v153, s29, 3, v66
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v158, 0, v2
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v159, 0, v3
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v160, 0, v0
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v161, 0, v5
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v162, 0, v8
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v163, 0, v9
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v164, 0, v10
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v165, v1, v6
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v166, v11, v7
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v167, 0, v4
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_mov_b32_e32 v80, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_add_i32 s24, s24, -1
	.loc	1 1435 43                       ; ragged.py:1435:43
	s_mul_i32 s37, s20, s34
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s38, s20, s35
	s_mov_b32 s40, 0
	s_mul_i32 s41, s25, s34
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s20, s12
	s_and_b32 s13, s15, 0xffff
	s_mov_b32 s12, s14
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s10, s24, 4
	s_mov_b32 s24, s16
	s_mov_b32 s25, s17
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	s_mov_b32 s34, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v33, v154, s40, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s14, s40, s38
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v34, v155, s40, 1
	v_add_lshl_u32 v35, v156, s40, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s14, s14, s29
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v36, v157, s40, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v37, v66, s14, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v33, 0x80000000, v33, s4
	v_cndmask_b32_e64 v34, 0x80000000, v34, s5
	v_cndmask_b32_e64 v35, 0x80000000, v35, s6
	v_cndmask_b32_e64 v36, 0x80000000, v36, s7
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v37, 0x80000000, v37, s8
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x3
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	buffer_load_u16 v34, v34, s[24:27], 0 offen
	buffer_load_u16 v35, v35, s[24:27], 0 offen
	buffer_load_u16 v36, v36, s[24:27], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v37, v37, s[16:19], 0 offen
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s14, s40, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s34, s14, 4
	s_cmp_lg_u32 s40, s10
	s_mov_b32 s40, s14
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v54, v182, v34 :: v_dual_lshlrev_b32 v33, 16, v33
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v38, v199, v33 :: v_dual_lshlrev_b32 v35, 16, v35
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v41, v196, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_mul_f32_e32 v39, v198, v33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v56, v180, v34 :: v_dual_lshlrev_b32 v37, 16, v37
	v_dual_mul_f32 v40, v197, v33 :: v_dual_mul_f32 v53, v183, v34
	v_dual_mul_f32 v42, v195, v33 :: v_dual_mul_f32 v55, v181, v34
	v_dual_mul_f32 v43, v194, v33 :: v_dual_mul_f32 v60, v176, v34
	v_dual_mul_f32 v44, v193, v33 :: v_dual_mul_f32 v57, v179, v34
	v_dual_mul_f32 v45, v192, v33 :: v_dual_mul_f32 v58, v178, v34
	v_dual_mul_f32 v46, v191, v33 :: v_dual_mul_f32 v59, v177, v34
	v_dual_mul_f32 v47, v190, v33 :: v_dual_mul_f32 v64, v172, v34
	v_dual_mul_f32 v48, v189, v33 :: v_dual_mul_f32 v61, v175, v34
	v_dual_mul_f32 v49, v188, v33 :: v_dual_mul_f32 v62, v174, v34
	v_dual_mul_f32 v50, v187, v33 :: v_dual_mul_f32 v63, v173, v34
	v_mul_f32_e32 v51, v186, v33
	v_dual_mul_f32 v52, v185, v33 :: v_dual_mul_f32 v171, v171, v34
	v_dual_mul_f32 v33, v184, v33 :: v_dual_mul_f32 v170, v170, v34
	v_dual_mul_f32 v169, v169, v34 :: v_dual_mul_f32 v32, v32, v35
	v_dual_mul_f32 v34, v168, v34 :: v_dual_mul_f32 v31, v31, v35
	v_mul_f32_e32 v16, v16, v36
	v_dual_mul_f32 v30, v30, v35 :: v_dual_mul_f32 v15, v15, v36
	v_dual_mul_f32 v29, v29, v35 :: v_dual_mul_f32 v184, v11, v36
	v_mul_f32_e32 v168, v28, v35
	v_dual_mul_f32 v172, v27, v35 :: v_dual_mul_f32 v183, v12, v36
	v_dual_mul_f32 v173, v26, v35 :: v_dual_mul_f32 v182, v13, v36
	v_dual_mul_f32 v174, v25, v35 :: v_dual_mul_f32 v7, v7, v36
	v_dual_mul_f32 v175, v24, v35 :: v_dual_mul_f32 v10, v10, v36
	v_dual_mul_f32 v176, v23, v35 :: v_dual_mul_f32 v9, v9, v36
	v_dual_mul_f32 v177, v22, v35 :: v_dual_mul_f32 v8, v8, v36
	v_dual_mul_f32 v178, v21, v35 :: v_dual_mul_f32 v3, v3, v36
	v_dual_mul_f32 v179, v20, v35 :: v_dual_mul_f32 v6, v6, v36
	v_dual_mul_f32 v180, v19, v35 :: v_dual_mul_f32 v5, v5, v36
	v_dual_mul_f32 v181, v18, v35 :: v_dual_mul_f32 v4, v4, v36
	v_dual_mul_f32 v35, v17, v35 :: v_dual_mul_f32 v2, v2, v36
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v166, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v167
	ds_load_b128 v[21:24], v167 offset:16
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v37, v14, v36
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[11:14], v167 offset:512
	ds_load_b128 v[25:28], v167 offset:528
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v1, v1, v36 :: v_dual_fmac_f32 v146, v38, v17
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v145, v39, v18 :: v_dual_fmac_f32 v144, v40, v19
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v143, v41, v20 :: v_dual_fmac_f32 v142, v42, v21
	v_dual_fmac_f32 v141, v43, v22 :: v_dual_fmac_f32 v140, v44, v23
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v139, v45, v24 :: v_dual_fmac_f32 v138, v46, v11
	v_dual_fmac_f32 v137, v47, v12 :: v_dual_fmac_f32 v136, v48, v13
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v135, v49, v14 :: v_dual_fmac_f32 v134, v50, v25
	v_dual_fmac_f32 v133, v51, v26 :: v_dual_fmac_f32 v132, v52, v27
	v_dual_fmac_f32 v131, v33, v28 :: v_dual_fmac_f32 v128, v55, v19
	v_dual_fmac_f32 v130, v53, v17 :: v_dual_fmac_f32 v129, v54, v18
	v_dual_fmac_f32 v127, v56, v20 :: v_dual_fmac_f32 v126, v57, v21
	v_dual_fmac_f32 v125, v58, v22 :: v_dual_fmac_f32 v124, v59, v23
	v_dual_fmac_f32 v123, v60, v24 :: v_dual_fmac_f32 v122, v61, v11
	v_dual_fmac_f32 v121, v62, v12 :: v_dual_fmac_f32 v120, v63, v13
	v_dual_fmac_f32 v119, v64, v14 :: v_dual_fmac_f32 v118, v171, v25
	v_dual_fmac_f32 v117, v170, v26 :: v_dual_fmac_f32 v116, v169, v27
	v_dual_fmac_f32 v115, v34, v28 :: v_dual_fmac_f32 v114, v32, v17
	v_dual_fmac_f32 v111, v31, v18 :: v_dual_fmac_f32 v110, v30, v19
	v_dual_fmac_f32 v109, v29, v20 :: v_dual_fmac_f32 v108, v168, v21
	v_dual_fmac_f32 v107, v172, v22 :: v_dual_fmac_f32 v106, v173, v23
	v_dual_fmac_f32 v105, v174, v24 :: v_dual_fmac_f32 v104, v175, v11
	v_dual_fmac_f32 v103, v176, v12 :: v_dual_fmac_f32 v102, v177, v13
	v_dual_fmac_f32 v101, v178, v14 :: v_dual_fmac_f32 v100, v179, v25
	v_dual_fmac_f32 v99, v180, v26 :: v_dual_fmac_f32 v98, v181, v27
	v_dual_fmac_f32 v97, v35, v28 :: v_dual_fmac_f32 v96, v16, v17
	v_dual_fmac_f32 v95, v15, v18 :: v_dual_fmac_f32 v94, v37, v19
	v_dual_fmac_f32 v93, v182, v20 :: v_dual_fmac_f32 v92, v183, v21
	v_dual_fmac_f32 v91, v184, v22 :: v_dual_fmac_f32 v90, v10, v23
	v_dual_fmac_f32 v89, v9, v24 :: v_dual_fmac_f32 v88, v8, v11
	v_dual_fmac_f32 v87, v7, v12 :: v_dual_fmac_f32 v86, v6, v13
	v_dual_fmac_f32 v85, v5, v14 :: v_dual_fmac_f32 v82, v2, v27
	v_dual_fmac_f32 v83, v4, v25 :: v_dual_fmac_f32 v84, v3, v26
	v_fmac_f32_e32 v80, v1, v28
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
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v199, 0
	.loc	1 1426 27 is_stmt 1             ; ragged.py:1426:27
	s_and_not1_b32 vcc_lo, exec_lo, s39
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_mov_b32 s35, s3
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
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1427 30 is_stmt 1             ; ragged.py:1427:30
	s_add_i32 s14, s35, s34
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1436 46                       ; ragged.py:1436:46
	s_add_i32 s15, s14, s41
	.loc	1 1437 46                       ; ragged.py:1437:46
	s_add_i32 s14, s14, s37
	v_add_nc_u32_e32 v168, s15, v67
	s_mul_i32 s14, s14, s29
	v_add_nc_u32_e32 v169, s15, v147
	v_add_nc_u32_e32 v172, s14, v66
	v_add_nc_u32_e32 v173, s14, v149
	v_add_nc_u32_e32 v170, s15, v148
	v_add_nc_u32_e32 v171, s15, v68
	v_add_nc_u32_e32 v174, s14, v150
	.loc	1 1437 38 is_stmt 0             ; ragged.py:1437:38
	v_cndmask_b32_e64 v172, 0x80000000, v172, s8
	.loc	1 1437 46                       ; ragged.py:1437:46
	v_add_nc_u32_e32 v175, s14, v69
	v_add_nc_u32_e32 v176, s14, v151
	v_add_nc_u32_e32 v177, s14, v70
	v_add_nc_u32_e32 v178, s14, v71
	v_add_nc_u32_e32 v179, s14, v72
	v_add_nc_u32_e32 v180, s14, v153
	v_add_nc_u32_e32 v181, s14, v73
	v_add_nc_u32_e32 v182, s14, v74
	v_add_nc_u32_e32 v183, s14, v75
	v_add_nc_u32_e32 v184, s14, v76
	v_add_nc_u32_e32 v185, s14, v77
	v_add_nc_u32_e32 v186, s14, v78
	v_add_nc_u32_e32 v187, s14, v79
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	.loc	1 1436 38 is_stmt 1             ; ragged.py:1436:38
	v_cndmask_b32_e64 v168, 0x80000000, v168, s0
	.loc	1 1437 38                       ; ragged.py:1437:38
	buffer_load_u8 v188, v172, s[12:15], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v173, s8
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_cndmask_b32_e64 v169, 0x80000000, v169, s1
	v_cndmask_b32_e64 v170, 0x80000000, v170, s2
	v_cndmask_b32_e64 v171, 0x80000000, v171, s9
	buffer_load_u8 v168, v168, s[20:23], 0 offen
	.loc	1 1437 38                       ; ragged.py:1437:38
	buffer_load_u8 v189, v172, s[12:15], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v174, s8
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_clause 0x2
	buffer_load_u8 v169, v169, s[20:23], 0 offen
	buffer_load_u8 v170, v170, s[20:23], 0 offen
	buffer_load_u8 v171, v171, s[20:23], 0 offen
	.loc	1 1437 38                       ; ragged.py:1437:38
	buffer_load_u8 v190, v172, s[12:15], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v175, s8
	buffer_load_u8 v191, v172, s[12:15], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v176, s8
	buffer_load_u8 v192, v172, s[12:15], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v177, s8
	buffer_load_u8 v193, v172, s[12:15], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v178, s8
	buffer_load_u8 v194, v172, s[12:15], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v179, s8
	buffer_load_u8 v195, v172, s[12:15], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v180, s8
	buffer_load_u8 v196, v172, s[12:15], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v181, s8
	buffer_load_u8 v197, v172, s[12:15], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v182, s8
	buffer_load_u8 v198, v172, s[12:15], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v183, s8
	buffer_load_u8 v199, v172, s[12:15], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v184, s8
	buffer_load_u8 v184, v172, s[12:15], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v185, s8
	buffer_load_u8 v185, v172, s[12:15], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v186, s8
	buffer_load_u8 v186, v172, s[12:15], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v187, s8
	buffer_load_u8 v187, v172, s[12:15], 0 offen
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_add_nc_u32_e32 v172, 0, v152
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1448 25                       ; ragged.py:1448:25
	s_add_i32 s14, s35, 16
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cmp_lt_i32 s35, 0
	s_mov_b32 s35, s14
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt vmcnt(18)
	ds_store_b8 v158, v168
	s_waitcnt vmcnt(16)
	ds_store_b8 v158, v169 offset:256
	s_waitcnt vmcnt(15)
	ds_store_b8 v158, v170 offset:512
	s_waitcnt vmcnt(14)
	ds_store_b8 v158, v171 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[168:171], v172 offset1:32
	ds_load_2addr_b64 v[172:175], v172 offset0:64 offset1:96
	ds_load_2addr_b64 v[176:179], v159 offset1:32
	ds_load_2addr_b64 v[180:183], v159 offset0:64 offset1:96
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v160, v188
	ds_store_b8 v160, v189 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v160, v190 offset:512
	s_waitcnt vmcnt(12)
	ds_store_b8 v161, v191
	s_waitcnt vmcnt(11)
	ds_store_b8 v160, v192 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b8 v160, v193 offset:1280
	s_waitcnt vmcnt(9)
	ds_store_b8 v160, v194 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v162, v195
	s_waitcnt vmcnt(7)
	ds_store_b8 v160, v196 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b8 v160, v197 offset:2304
	s_waitcnt vmcnt(5)
	ds_store_b8 v160, v198 offset:2560
	s_waitcnt vmcnt(4)
	ds_store_b8 v163, v199
	s_waitcnt vmcnt(3)
	ds_store_b8 v160, v184 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b8 v160, v185 offset:3328
	s_waitcnt vmcnt(1)
	ds_store_b8 v160, v186 offset:3584
	s_waitcnt vmcnt(0)
	ds_store_b8 v164, v187
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1438 35                       ; ragged.py:1438:35
	ds_load_u8 v184, v165 offset:1280
	ds_load_u8 v185, v165 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	ds_load_u8 v185, v165 offset:1792
	ds_load_u8 v186, v165 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v185, v185, 16, v184
	ds_load_u8 v184, v165 offset:256
	ds_load_u8 v186, v165
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v186, v184, 0xc0c0004
	ds_load_u8 v186, v165 offset:768
	ds_load_u8 v187, v165 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v184, v186, 16, v184
	ds_load_u8 v186, v165 offset:3328
	ds_load_u8 v187, v165 offset:3072
	v_wmma_i32_16x16x16_iu4 v[1:8], v[184:185], v[168:169], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[184:185], v[170:171], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[184:185], v[172:173], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[184:185], v[174:175], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	ds_load_u8 v187, v165 offset:3840
	ds_load_u8 v188, v165 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v187, v187, 16, v186
	ds_load_u8 v186, v165 offset:2304
	ds_load_u8 v188, v165 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v188, v186, 0xc0c0004
	ds_load_u8 v188, v165 offset:2816
	ds_load_u8 v189, v165 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v186, v188, 16, v186
	ds_load_u8 v188, v165 offset:1408
	ds_load_u8 v189, v165 offset:1152
	v_wmma_i32_16x16x16_iu4 v[1:8], v[186:187], v[176:177], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[186:187], v[178:179], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[186:187], v[180:181], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[186:187], v[182:183], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	ds_load_u8 v189, v165 offset:1920
	ds_load_u8 v190, v165 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v189, v189, 16, v188
	ds_load_u8 v188, v165 offset:384
	ds_load_u8 v190, v165 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v190, v188, 0xc0c0004
	ds_load_u8 v190, v165 offset:896
	ds_load_u8 v191, v165 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v188, v190, 16, v188
	v_wmma_i32_16x16x16_iu4 v[9:16], v[188:189], v[168:169], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v168, v165 offset:3456
	ds_load_u8 v169, v165 offset:3200
	v_wmma_i32_16x16x16_iu4 v[25:32], v[188:189], v[170:171], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[188:189], v[172:173], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[188:189], v[174:175], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	ds_load_u8 v169, v165 offset:3968
	ds_load_u8 v190, v165 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v190, v169, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v169, 16, v168
	ds_load_u8 v168, v165 offset:2432
	ds_load_u8 v190, v165 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v190, v168, 0xc0c0004
	ds_load_u8 v190, v165 offset:2944
	ds_load_u8 v191, v165 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v168, v190, 16, v168
	v_wmma_i32_16x16x16_iu4 v[9:16], v[168:169], v[176:177], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[168:169], v[178:179], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[168:169], v[180:181], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[168:169], v[182:183], v[57:64] neg_lo:[1,1,0]
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v199, v1
	v_cvt_f32_i32_e32 v198, v2
	v_cvt_f32_i32_e32 v197, v3
	v_cvt_f32_i32_e32 v196, v4
	v_cvt_f32_i32_e32 v195, v5
	v_cvt_f32_i32_e32 v194, v6
	v_cvt_f32_i32_e32 v193, v7
	v_cvt_f32_i32_e32 v192, v8
	v_cvt_f32_i32_e32 v191, v9
	v_cvt_f32_i32_e32 v190, v10
	v_cvt_f32_i32_e32 v189, v11
	v_cvt_f32_i32_e32 v188, v12
	v_cvt_f32_i32_e32 v187, v13
	v_cvt_f32_i32_e32 v186, v14
	v_cvt_f32_i32_e32 v185, v15
	v_cvt_f32_i32_e32 v184, v16
	v_cvt_f32_i32_e32 v183, v17
	v_cvt_f32_i32_e32 v182, v18
	v_cvt_f32_i32_e32 v181, v19
	v_cvt_f32_i32_e32 v180, v20
	v_cvt_f32_i32_e32 v179, v21
	v_cvt_f32_i32_e32 v178, v22
	v_cvt_f32_i32_e32 v177, v23
	v_cvt_f32_i32_e32 v176, v24
	v_cvt_f32_i32_e32 v175, v25
	v_cvt_f32_i32_e32 v174, v26
	v_cvt_f32_i32_e32 v173, v27
	v_cvt_f32_i32_e32 v172, v28
	v_cvt_f32_i32_e32 v171, v29
	v_cvt_f32_i32_e32 v170, v30
	v_cvt_f32_i32_e32 v169, v31
	v_cvt_f32_i32_e32 v168, v32
	v_cvt_f32_i32_e32 v32, v33
	v_cvt_f32_i32_e32 v31, v34
	v_cvt_f32_i32_e32 v30, v35
	v_cvt_f32_i32_e32 v29, v36
	v_cvt_f32_i32_e32 v28, v37
	v_cvt_f32_i32_e32 v27, v38
	v_cvt_f32_i32_e32 v26, v39
	v_cvt_f32_i32_e32 v25, v40
	v_cvt_f32_i32_e32 v24, v41
	v_cvt_f32_i32_e32 v23, v42
	v_cvt_f32_i32_e32 v22, v43
	v_cvt_f32_i32_e32 v21, v44
	v_cvt_f32_i32_e32 v20, v45
	v_cvt_f32_i32_e32 v19, v46
	v_cvt_f32_i32_e32 v18, v47
	v_cvt_f32_i32_e32 v17, v48
	v_cvt_f32_i32_e32 v16, v49
	v_cvt_f32_i32_e32 v15, v50
	v_cvt_f32_i32_e32 v14, v51
	v_cvt_f32_i32_e32 v13, v52
	v_cvt_f32_i32_e32 v12, v53
	v_cvt_f32_i32_e32 v11, v54
	v_cvt_f32_i32_e32 v10, v55
	v_cvt_f32_i32_e32 v9, v56
	v_cvt_f32_i32_e32 v8, v57
	v_cvt_f32_i32_e32 v7, v58
	v_cvt_f32_i32_e32 v6, v59
	v_cvt_f32_i32_e32 v5, v60
	v_cvt_f32_i32_e32 v4, v61
	v_cvt_f32_i32_e32 v3, v62
	v_cvt_f32_i32_e32 v2, v63
	v_cvt_f32_i32_e32 v1, v64
	s_branch .LBB0_5
.LBB0_10:                               ; %Flow246
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_dual_mov_b32 v1, v112 :: v_dual_mov_b32 v32, v113
.LBB0_11:                               ; %._crit_edge8
	.loc	1 1532 33 is_stmt 1             ; ragged.py:1532:33
	v_bfe_u32 v3, v145, 16, 1
	v_bfe_u32 v4, v144, 16, 1
	v_cmp_o_f32_e64 s0, v145, v145
	v_bfe_u32 v2, v146, 16, 1
	v_cmp_o_f32_e64 s1, v144, v144
	v_add3_u32 v3, v145, v3, 0x7fff
	v_add3_u32 v4, v144, v4, 0x7fff
	v_bfe_u32 v7, v141, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v146, v146
	v_add3_u32 v2, v146, v2, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v142, 16, 1
	v_bfe_u32 v5, v143, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v4.h, s1
	v_add3_u32 v7, v141, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v141, v141
	v_add3_u32 v3, v142, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v142, v142
	v_cndmask_b16 v2.l, 0x7fff, v2.h, vcc_lo
	v_add3_u32 v5, v143, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v143, v143
	v_cndmask_b16 v12.l, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v138, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v139, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v140, 16, 1
	v_add3_u32 v7, v138, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v138, v138
	v_add3_u32 v3, v139, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v139, v139
	v_add3_u32 v5, v140, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v140, v140
	v_cndmask_b16 v18.l, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v135, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v136, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v137, 16, 1
	v_add3_u32 v7, v135, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v135, v135
	v_add3_u32 v3, v136, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v136, v136
	v_add3_u32 v5, v137, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v137, v137
	v_cndmask_b16 v24.l, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v132, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v133, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v134, 16, 1
	v_add3_u32 v7, v132, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v132, v132
	v_add3_u32 v3, v133, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v133, v133
	v_add3_u32 v5, v134, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v134, v134
	v_cndmask_b16 v30.l, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v129, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v130, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v131, 16, 1
	v_add3_u32 v7, v129, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v129, v129
	v_add3_u32 v3, v130, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v130, v130
	v_add3_u32 v5, v131, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v131, v131
	v_cndmask_b16 v4.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v126, 16, 1
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v127, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v128, 16, 1
	v_add3_u32 v7, v126, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v126, v126
	v_add3_u32 v3, v127, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v127, v127
	v_add3_u32 v5, v128, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v128, v128
	v_cndmask_b16 v10.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v123, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v124, 16, 1
	v_cndmask_b16 v6.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v125, 16, 1
	v_add3_u32 v7, v123, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v123, v123
	v_add3_u32 v3, v124, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v124, v124
	v_add3_u32 v5, v125, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v125, v125
	v_cndmask_b16 v16.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v120, 16, 1
	v_cndmask_b16 v14.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v121, 16, 1
	v_cndmask_b16 v12.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v122, 16, 1
	v_add3_u32 v7, v120, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v120, v120
	v_add3_u32 v3, v121, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v121, v121
	v_add3_u32 v5, v122, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v122, v122
	v_cndmask_b16 v22.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v117, 16, 1
	v_cndmask_b16 v20.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v118, 16, 1
	v_cndmask_b16 v18.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v119, 16, 1
	v_add3_u32 v7, v117, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v117, v117
	v_add3_u32 v3, v118, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v118, v118
	v_add3_u32 v5, v119, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v119, v119
	v_cndmask_b16 v28.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v114, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v115, 16, 1
	v_cndmask_b16 v24.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v116, 16, 1
	v_add3_u32 v7, v114, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v114, v114
	v_add3_u32 v3, v115, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v115, v115
	v_bfe_u32 v9, v110, 16, 1
	v_add3_u32 v5, v116, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v116, v116
	v_cndmask_b16 v3.l, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v109, 16, 1
	v_cndmask_b16 v33.h, 0x7fff, v3.h, s0
	v_add3_u32 v9, v110, v9, 0x7fff
	v_cmp_o_f32_e64 s0, v110, v110
	v_bfe_u32 v13, v107, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v111, 16, 1
	v_add3_u32 v7, v109, v7, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v9.h, s0
	v_add3_u32 v13, v107, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v107, v107
	v_bfe_u32 v19, v104, 16, 1
	v_add3_u32 v5, v111, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v111, v111
	v_bfe_u32 v11, v108, 16, 1
	v_cmp_o_f32_e64 s1, v109, v109
	v_bfe_u32 v15, v106, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s0
	v_add3_u32 v19, v104, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v104, v104
	v_bfe_u32 v25, v101, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v5.h, vcc_lo
	v_add3_u32 v11, v108, v11, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v108, v108
	v_bfe_u32 v17, v105, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v7.h, s1
	v_add3_u32 v15, v106, v15, 0x7fff
	v_cmp_o_f32_e64 s1, v106, v106
	v_bfe_u32 v21, v103, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s0
	v_add3_u32 v25, v101, v25, 0x7fff
	v_cmp_o_f32_e64 s0, v101, v101
	v_bfe_u32 v31, v98, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, vcc_lo
	v_add3_u32 v17, v105, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	v_bfe_u32 v23, v102, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s1
	v_add3_u32 v21, v103, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v103, v103
	v_bfe_u32 v27, v100, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s0
	v_add3_u32 v31, v98, v31, 0x7fff
	v_cmp_o_f32_e64 s0, v98, v98
	v_bfe_u32 v36, v95, 16, 1
	v_cndmask_b16 v17.l, 0x7fff, v17.h, vcc_lo
	v_add3_u32 v23, v102, v23, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v102, v102
	v_bfe_u32 v29, v99, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s1
	v_add3_u32 v27, v100, v27, 0x7fff
	v_cmp_o_f32_e64 s1, v100, v100
	v_bfe_u32 v34, v97, 16, 1
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s0
	v_add3_u32 v36, v95, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v95, v95
	v_cndmask_b16 v23.l, 0x7fff, v23.h, vcc_lo
	v_add3_u32 v29, v99, v29, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v99, v99
	v_bfe_u32 v35, v96, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s1
	v_add3_u32 v34, v97, v34, 0x7fff
	v_cmp_o_f32_e64 s1, v97, v97
	v_bfe_u32 v37, v94, 16, 1
	v_cndmask_b16 v5.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v92, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v29.h, vcc_lo
	v_add3_u32 v35, v96, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v96, v96
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s1
	v_add3_u32 v37, v94, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v94, v94
	v_add3_u32 v36, v92, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v92, v92
	v_cndmask_b16 v3.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v93, 16, 1
	v_cndmask_b16 v7.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v91, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v89, 16, 1
	v_add3_u32 v35, v93, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v93, v93
	v_add3_u32 v37, v91, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v91, v91
	v_add3_u32 v36, v89, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v89, v89
	v_cndmask_b16 v9.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v90, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v88, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v86, 16, 1
	v_add3_u32 v35, v90, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	v_add3_u32 v37, v88, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v88, v88
	v_add3_u32 v36, v86, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v86, v86
	v_bfe_u32 v38, v83, 16, 1
	v_cndmask_b16 v15.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v87, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v85, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v36.h, s0
	v_add3_u32 v36, v83, v38, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v38, 3, v65
	v_lshlrev_b32_e32 v0, 6, v0
	v_and_b32_e32 v1, 0x1c0, v1
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v35, v87, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v87, v87
	v_add3_u32 v37, v85, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v85, v85
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v40, 11, v65
	v_and_b32_e32 v0, 0x400, v0
	v_xor_b32_e32 v1, v38, v1
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v21.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v84, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v82, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_or3_b32 v0, v40, v0, v1
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v35, v84, v35, 0x7fff
	v_cmp_o_f32_e64 s0, v84, v84
	v_add3_u32 v37, v82, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v82, v82
	v_cndmask_b16 v27.h, 0x7fff, v36.h, vcc_lo
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_add_nc_u32_e32 v1, 0, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v81
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v29.h, 0x7fff, v35.h, s0
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v35, v0, 8, 0
	v_xad_u32 v36, v0, 16, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v39, v80, 16, 1
	v_cndmask_b16 v31.h, 0x7fff, v37.h, s1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v37, v0, 24, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b64 v1, v[2:3], v[18:19] offset1:1
	ds_store_2addr_stride64_b64 v35, v[4:5], v[20:21] offset1:1
	ds_store_2addr_stride64_b64 v36, v[6:7], v[22:23] offset1:1
	ds_store_2addr_stride64_b64 v37, v[8:9], v[24:25] offset1:1
	v_lshlrev_b32_e32 v1, 3, v32
	v_cndmask_b32_e64 v2, 0x808, 0, vcc_lo
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v38, v80, v39, 0x7fff
	v_cmp_o_f32_e64 s2, v80, v80
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v3, v0, 32, 0
	v_xad_u32 v4, v0, 40, 0
	v_xor_b32_e32 v1, v2, v1
	v_xad_u32 v5, v0, 48, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v34.h, 0x7fff, v38.h, s2
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v0, v0, 56, 0
	ds_store_2addr_stride64_b64 v3, v[10:11], v[26:27] offset1:1
	ds_store_2addr_stride64_b64 v4, v[12:13], v[28:29] offset1:1
	ds_store_2addr_stride64_b64 v5, v[14:15], v[30:31] offset1:1
	ds_store_2addr_stride64_b64 v0, v[16:17], v[33:34] offset1:1
	v_add_nc_u32_e32 v0, 0, v1
	v_xad_u32 v2, 0x1010, v1, 0
	v_xad_u32 v3, 0x2020, v1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[28:31], v0 offset1:2
	ds_load_2addr_stride64_b64 v[24:27], v2 offset1:2
	ds_load_2addr_stride64_b64 v[20:23], v3 offset1:2
	v_xad_u32 v0, 0x3030, v1, 0
	v_xad_u32 v2, 0x4040, v1, 0
	v_xad_u32 v3, 0x5050, v1, 0
	v_xad_u32 v4, 0x6060, v1, 0
	v_xad_u32 v1, 0x7070, v1, 0
	ds_load_2addr_stride64_b64 v[16:19], v0 offset1:2
	ds_load_2addr_stride64_b64 v[12:15], v2 offset1:2
	ds_load_2addr_stride64_b64 v[8:11], v3 offset1:2
	ds_load_2addr_stride64_b64 v[4:7], v4 offset1:2
	ds_load_2addr_stride64_b64 v[0:3], v1 offset1:2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v33, 7, v81
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_lshr_b32 s0, s29, 31
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v32, s33, 7, v32
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_add_i32 s0, s29, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v33, s36, v33
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_ashr_i32 s1, s0, 1
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1542 54                       ; ragged.py:1542:54
	v_cmp_gt_i32_e32 vcc_lo, s1, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v33
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_13
; %bb.12:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s11, v33
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v36, v28, v30, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_13:
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
	s_cbranch_execz .LBB0_15
; %bb.14:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s11, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v36, v24, v26, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_15:
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
	s_cbranch_execz .LBB0_17
; %bb.16:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s11, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v36, v20, v22, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_17:
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
	s_cbranch_execz .LBB0_19
; %bb.18:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s11, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v16, v18, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_19:
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
	s_cbranch_execz .LBB0_21
; %bb.20:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s11, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v36, v12, v14, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_21:
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
	s_cbranch_execz .LBB0_23
; %bb.22:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s11, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v8, v10, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_23:
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
	s_cbranch_execz .LBB0_25
; %bb.24:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s11, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v36, v4, v6, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_25:
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
	s_cbranch_execz .LBB0_27
; %bb.26:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s11, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v0, v2, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v36, off
.LBB0_27:
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
	s_cbranch_execz .LBB0_29
; %bb.28:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v34, s11, v34
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v28, v28, v30, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v28, off
.LBB0_29:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v28, 18, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v28
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_31
; %bb.30:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v28, s11, v28
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v24, v24, v26, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v28, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v24, off
.LBB0_31:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(6)
	v_or_b32_e32 v24, 20, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v24
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_33
; %bb.32:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v24, s11, v24
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v20, v20, v22, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v24, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v20, off
.LBB0_33:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v20, 22, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v20
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_35
; %bb.34:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v20, s11, v20
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v16, v16, v18, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v20, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v16, off
.LBB0_35:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(4)
	v_or_b32_e32 v16, 24, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v16
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_37
; %bb.36:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v16, s11, v16
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v12, v12, v14, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v16, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v12, off
.LBB0_37:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v12, 26, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v12
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_39
; %bb.38:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v12, s11, v12
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v8, v10, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v12, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v8, off
.LBB0_39:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(2)
	v_or_b32_e32 v8, 28, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v8
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_41
; %bb.40:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v8, s11, v8
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v4, v4, v6, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v8, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v4, off
.LBB0_41:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(1)
	v_or_b32_e32 v4, 30, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v4
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_43
; %bb.42:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v4, s11, v4
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v2, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[34:35], null, v4, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_43:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v0, 32, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_45
; %bb.44:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v29, v31, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_45:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_47
; %bb.46:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v25, v27, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_47:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_49
; %bb.48:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v21, v23, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_49:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 38, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_51
; %bb.50:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v17, v19, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_51:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 40, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_53
; %bb.52:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v13, v15, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_53:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 42, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_55
; %bb.54:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v9, v11, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_55:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 44, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_57
; %bb.56:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v5, v7, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_57:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 46, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_59
; %bb.58:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v1, v3, 0x1000504
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[34:35], v0, off
.LBB0_59:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 48, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_61
; %bb.60:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v29, v31, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v28, s0, s30, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s31, v35, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[28:29], v0, off
.LBB0_61:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 50, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_63
; %bb.62:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[28:29], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v25, v27, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v24, s0, s30, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s31, v29, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[24:25], v0, off
.LBB0_63:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 52, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_65
; %bb.64:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[24:25], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v21, v23, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v20, s0, s30, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s31, v25, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[20:21], v0, off
.LBB0_65:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 54, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_67
; %bb.66:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[20:21], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v17, v19, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v16, s0, s30, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s31, v21, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[16:17], v0, off
.LBB0_67:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 56, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_69
; %bb.68:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[16:17], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v13, v15, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v12, s0, s30, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s31, v17, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[12:13], v0, off
.LBB0_69:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 58, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_71
; %bb.70:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[12:13], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v9, v11, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v8, s0, s30, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s31, v13, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[8:9], v0, off
.LBB0_71:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 60, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_73
; %bb.72:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[8:9], null, v0, s1, v[32:33]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v0, v5, v7, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v4, s0, s30, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s31, v9, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[4:5], v0, off
.LBB0_73:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v0, 62, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v0
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_75
; %bb.74:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v0, s11, v0
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v2, v1, v3, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[4:5], null, v0, s1, v[32:33]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v0, vcc_lo, s30, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s31, v5, vcc_lo
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[0:1], v2, off
.LBB0_75:
	.loc	1 1276 5 is_stmt 1              ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 200
		.amdhsa_next_free_sgpr 42
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 200
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11080
; TotalNumSgprs: 44
; NumVgprs: 200
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 44
; NumVGPRsForWavesPerEU: 200
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     200
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
