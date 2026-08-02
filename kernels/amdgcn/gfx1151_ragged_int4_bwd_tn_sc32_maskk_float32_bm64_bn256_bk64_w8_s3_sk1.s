	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v93, 15, v0
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
	s_ashr_i32 s8, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s8, s4
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
	s_mul_hi_u32 s6, s9, s6
	s_ashr_i32 s7, s7, 31
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
	s_abs_i32 s9, s8
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s6, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3)
	s_cvt_u32_f32 s10, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s6, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s9
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s6, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_i32 s5, s5, s10
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_hi_u32 s4, s10, s5
	s_abs_i32 s7, s2
	s_add_i32 s10, s10, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s10, s7, s10
	s_xor_b32 s11, s2, s8
	s_mul_i32 s12, s10, s9
	s_ashr_i32 s11, s11, 31
	s_sub_i32 s7, s7, s12
	s_add_i32 s12, s10, 1
	s_sub_i32 s13, s7, s9
	s_cmp_ge_u32 s7, s9
	.loc	1 1513 37                       ; ragged.py:1513:37
	s_mul_i32 s30, s6, s34
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cselect_b32 s10, s12, s10
	s_cselect_b32 s7, s13, s7
	s_add_i32 s12, s10, 1
	s_cmp_ge_u32 s7, s9
	s_cselect_b32 s7, s12, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s7, s7, s11
	s_sub_i32 s9, s7, s11
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s7, s6, 31
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s8, s9, s8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[10:11], s[6:7], 2
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s8, s2, s8
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s22, s9, 6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s10
	s_addc_u32 s5, s5, s11
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, s22, v93
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s7, s[4:5], 0x0
	s_mov_b32 s9, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, 16, v2
	v_or_b32_e32 v4, 32, v2
	v_or_b32_e32 v5, 48, v2
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s5, s34, v2
	v_cmp_gt_i32_e64 s4, s34, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s19, s34, v4
	v_cmp_gt_i32_e64 s2, s34, v5
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s23, s7, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s23, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge15_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s16, s22, s30
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s9, -1
                                        ; implicit-def: $sgpr16
.LBB0_3:                                ; %Flow439
	s_load_b64 s[20:21], s[0:1], 0x28
	v_dual_mov_b32 v83, 0 :: v_dual_and_b32 v124, 0x70, v1
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v126, 16, v0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v145, 0
	v_mov_b32_e32 v140, 0
	v_mov_b32_e32 v142, 0
	v_mov_b32_e32 v144, 0
	v_mov_b32_e32 v146, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_lshl_b32 s18, s8, 8
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.lr.ph14
	s_clause 0x1
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b64 s[16:17], s[0:1], 0x38
	v_dual_mov_b32 v146, 0 :: v_dual_and_b32 v1, 63, v0
	.loc	1 1456 55 is_stmt 1             ; ragged.py:1456:55
	s_lshr_b32 s1, s7, 31
	v_bfe_i32 v4, v0, 3, 1
	v_bfe_i32 v6, v0, 5, 1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, s22, v1
	v_dual_mov_b32 v144, 0 :: v_dual_and_b32 v3, 0xc0, v0
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s1, s7, s1
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s0, s23, 31
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_ashr_i32 s40, s1, 1
	v_cmp_eq_u32_e64 s1, 0, v126
	v_dual_mov_b32 v138, 0 :: v_dual_lshlrev_b32 v5, 4, v0
	v_dual_mov_b32 v145, 0 :: v_dual_and_b32 v4, 0x88, v4
	v_dual_mov_b32 v141, 0 :: v_dual_and_b32 v6, 0x108, v6
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s23, s23, s0
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v2
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v2, 4, v3
	v_cndmask_b32_e64 v7, 0x108, 0, s1
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s23, s23, 1
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s33, s3, 4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s9, 0xffff
	s_and_b32 s29, s11, 0xffff
	v_dual_mov_b32 v136, 0 :: v_dual_and_b32 v9, 0x70, v5
	v_dual_mov_b32 v134, 0 :: v_dual_lshlrev_b32 v3, 3, v3
	v_xor_b32_e32 v6, v4, v6
	s_bitcmp1_b32 s7, 0
	v_mad_u64_u32 v[65:66], null, s34, v2, v[1:2]
	.loc	1 1464 43                       ; ragged.py:1464:43
	s_mul_i32 s41, s6, s16
	s_cselect_b32 s44, -1, 0
	s_add_i32 s16, s22, s30
	v_xor_b32_e32 v7, v7, v4
	v_or_b32_e32 v157, v4, v9
	v_or3_b32 v159, v6, v3, v9
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v9, s16, v93
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v64, s18, v0
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v147, 6, v0
	v_xor_b32_e32 v2, v7, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v14, 16, v9
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v15, 32, v9
	v_dual_mov_b32 v135, 0 :: v_dual_and_b32 v16, 0xf0, v0
	v_dual_mov_b32 v120, 0 :: v_dual_lshlrev_b32 v17, 5, v0
	v_mad_u64_u32 v[69:70], null, s34, 3, v[65:66]
	v_mad_u64_u32 v[70:71], null, s35, 3, v[64:65]
	v_mad_u64_u32 v[71:72], null, s35, 5, v[64:65]
	v_mad_u64_u32 v[72:73], null, s35, 6, v[64:65]
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[67:68], null, s34, v147, v[1:2]
	v_mad_u64_u32 v[73:74], null, s35, 7, v[64:65]
	v_dual_mov_b32 v143, 0 :: v_dual_and_b32 v8, 0x270, v5
	v_and_or_b32 v158, 0xe70, v5, v7
	v_mul_lo_u32 v162, v9, s17
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v9, 48, v9
	v_mul_lo_u32 v163, v14, s17
	v_mul_lo_u32 v164, v15, s17
	v_dual_mov_b32 v133, 0 :: v_dual_lshlrev_b32 v14, 2, v16
	v_dual_mov_b32 v118, 0 :: v_dual_lshlrev_b32 v15, 1, v0
	v_dual_mov_b32 v116, 0 :: v_dual_and_b32 v17, 32, v17
	v_mad_u64_u32 v[74:75], null, s35, 9, v[64:65]
	v_mad_u64_u32 v[75:76], null, s35, 10, v[64:65]
	v_mad_u64_u32 v[76:77], null, s35, 11, v[64:65]
	v_mad_u64_u32 v[77:78], null, s35, 12, v[64:65]
	v_mad_u64_u32 v[78:79], null, s35, 13, v[64:65]
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v8, 0, v8
	v_xor_b32_e32 v1, 8, v157
	v_xor_b32_e32 v3, 0x108, v157
	v_xor_b32_e32 v4, 8, v158
	v_xor_b32_e32 v5, 8, v159
	v_or_b32_e32 v6, 0x300, v0
	v_or_b32_e32 v7, 0x3f0, v0
	v_or_b32_e32 v10, 0x700, v0
	v_or_b32_e32 v11, 0xb00, v0
	v_or_b32_e32 v12, 0xf00, v0
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v13, 0, v124
	v_mul_lo_u32 v165, v9, s17
	v_dual_mov_b32 v114, 0 :: v_dual_and_b32 v9, 28, v15
	v_add3_u32 v14, 0, v14, v17
	v_dual_mov_b32 v112, 0 :: v_dual_lshlrev_b32 v15, 1, v16
	v_mad_u64_u32 v[79:80], null, s35, 14, v[64:65]
	v_mad_u64_u32 v[80:81], null, s35, 15, v[64:65]
	v_mad_u64_u32 v[81:82], null, s34, 12, v[67:68]
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v148, 4, v147
	v_or_b32_e32 v149, 8, v147
	v_or_b32_e32 v150, 12, v147
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v151, s34, v65
	v_lshl_add_u32 v152, s34, 1, v65
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v153, s35, v64
	v_lshl_add_u32 v154, s35, 1, v64
	v_lshl_add_u32 v155, s35, 2, v64
	v_lshl_add_u32 v156, s35, 3, v64
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_lshl_add_u32 v160, s34, 2, v67
	v_lshl_add_u32 v161, s34, 3, v67
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v166, v8, v2
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v167, 0, v1
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v168, 0, v3
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v169, 0, v4
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v170, 0, v5
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v171, 0, v0
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v172, 0, v6
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v173, 0, v7
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v174, 0, v10
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v175, 0, v11
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v176, 0, v12
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v177, v13, v93
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v178, v14, v9
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v179, 0, v15
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v66, 0
	v_mov_b32_e32 v97, 0
	v_mov_b32_e32 v95, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v83, 0
	s_add_i32 s45, s23, -1
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s42, s6, s17
	s_mov_b32 s24, s8
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_mov_b32 s28, s10
	s_mov_b32 s43, 0
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s17, s45, 4
	s_mov_b32 s14, 0
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v64
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v180, v162, s43, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s1, s43, s42
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v181, v163, s43, 1
	v_add_lshl_u32 v182, v164, s43, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s1, s1, s35
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v183, v165, s43, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v184, v64, s1, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v180, 0x80000000, v180, s5
	v_cndmask_b32_e64 v181, 0x80000000, v181, s4
	v_cndmask_b32_e64 v182, 0x80000000, v182, s19
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	v_cndmask_b32_e64 v183, 0x80000000, v183, s2
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e32 v184, 0x80000000, v184, vcc_lo
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x3
	buffer_load_u16 v180, v180, s[12:15], 0 offen
	buffer_load_u16 v181, v181, s[12:15], 0 offen
	buffer_load_u16 v182, v182, s[12:15], 0 offen
	buffer_load_u16 v183, v183, s[12:15], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v184, v184, s[36:39], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v186, v1
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
	v_cvt_f32_i32_e32 v185, v0
	v_cvt_f32_i32_e32 v187, v2
	v_cvt_f32_i32_e32 v188, v3
	v_cvt_f32_i32_e32 v189, v4
	v_cvt_f32_i32_e32 v190, v5
	v_cvt_f32_i32_e32 v191, v6
	v_cvt_f32_i32_e32 v192, v7
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s1, s43, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s14, s1, 4
	s_cmp_lg_u32 s43, s17
	s_mov_b32 s43, s1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v1, 16, v181
	v_lshlrev_b32_e32 v0, 16, v180
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v40, v40, v1 :: v_dual_lshlrev_b32 v3, 16, v184
	v_dual_mul_f32 v41, v41, v1 :: v_dual_lshlrev_b32 v2, 16, v182
	v_dual_mul_f32 v57, v57, v0 :: v_dual_lshlrev_b32 v180, 16, v183
	v_mul_f32_e32 v59, v59, v0
	v_dual_mul_f32 v56, v56, v0 :: v_dual_mul_f32 v43, v43, v1
	v_dual_mul_f32 v58, v58, v0 :: v_dual_mul_f32 v45, v45, v1
	v_dual_mul_f32 v60, v60, v0 :: v_dual_mul_f32 v47, v47, v1
	v_dual_mul_f32 v61, v61, v0 :: v_dual_mul_f32 v42, v42, v1
	v_dual_mul_f32 v62, v62, v0 :: v_dual_mul_f32 v33, v33, v1
	v_dual_mul_f32 v63, v63, v0 :: v_dual_mul_f32 v44, v44, v1
	v_dual_mul_f32 v48, v48, v0 :: v_dual_mul_f32 v35, v35, v1
	v_dual_mul_f32 v49, v49, v0 :: v_dual_mul_f32 v46, v46, v1
	v_dual_mul_f32 v50, v50, v0 :: v_dual_mul_f32 v37, v37, v1
	v_dual_mul_f32 v51, v51, v0 :: v_dual_mul_f32 v32, v32, v1
	v_dual_mul_f32 v52, v52, v0 :: v_dual_mul_f32 v39, v39, v1
	v_dual_mul_f32 v53, v53, v0 :: v_dual_mul_f32 v34, v34, v1
	v_dual_mul_f32 v54, v54, v0 :: v_dual_mul_f32 v25, v25, v2
	v_dual_mul_f32 v55, v55, v0 :: v_dual_mul_f32 v36, v36, v1
	v_dual_mul_f32 v38, v38, v1 :: v_dual_mul_f32 v27, v27, v2
	v_dual_mul_f32 v24, v24, v2 :: v_dual_mul_f32 v183, v10, v180
	v_dual_mul_f32 v26, v26, v2 :: v_dual_mul_f32 v181, v8, v180
	v_dual_mul_f32 v28, v28, v2 :: v_dual_mul_f32 v195, v14, v180
	v_dual_mul_f32 v29, v29, v2 :: v_dual_mul_f32 v184, v11, v180
	v_dual_mul_f32 v30, v30, v2 :: v_dual_mul_f32 v193, v12, v180
	v_dual_mul_f32 v31, v31, v2 :: v_dual_mul_f32 v182, v9, v180
	v_dual_mul_f32 v16, v16, v2 :: v_dual_mul_f32 v185, v185, v180
	v_dual_mul_f32 v17, v17, v2 :: v_dual_mul_f32 v196, v15, v180
	v_dual_mul_f32 v18, v18, v2 :: v_dual_mul_f32 v187, v187, v180
	v_dual_mul_f32 v19, v19, v2 :: v_dual_mul_f32 v194, v13, v180
	v_dual_mul_f32 v20, v20, v2 :: v_dual_mul_f32 v189, v189, v180
	v_dual_mul_f32 v21, v21, v2 :: v_dual_mul_f32 v186, v186, v180
	v_dual_mul_f32 v22, v22, v2 :: v_dual_mul_f32 v191, v191, v180
	v_dual_mul_f32 v23, v23, v2 :: v_dual_mul_f32 v188, v188, v180
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v178, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v179
	ds_load_b128 v[4:7], v179 offset:16
	ds_load_b128 v[8:11], v179 offset:512
	ds_load_b128 v[12:15], v179 offset:528
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v190, v190, v180
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v180, v192, v180 :: v_dual_fmac_f32 v143, v59, v3
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v146, v56, v0 :: v_dual_fmac_f32 v141, v61, v5
	v_dual_fmac_f32 v145, v57, v1 :: v_dual_fmac_f32 v144, v58, v2
	v_dual_fmac_f32 v139, v63, v7 :: v_dual_fmac_f32 v142, v60, v4
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v137, v49, v9 :: v_dual_fmac_f32 v140, v62, v6
	v_dual_fmac_f32 v135, v51, v11 :: v_dual_fmac_f32 v138, v48, v8
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v133, v53, v13 :: v_dual_fmac_f32 v136, v50, v10
	v_dual_fmac_f32 v131, v55, v15 :: v_dual_fmac_f32 v134, v52, v12
	v_dual_fmac_f32 v129, v41, v1 :: v_dual_fmac_f32 v132, v54, v14
	v_dual_fmac_f32 v127, v43, v3 :: v_dual_fmac_f32 v130, v40, v0
	v_dual_fmac_f32 v123, v45, v5 :: v_dual_fmac_f32 v128, v42, v2
	v_dual_fmac_f32 v125, v44, v4 :: v_dual_fmac_f32 v122, v46, v6
	v_dual_fmac_f32 v121, v47, v7 :: v_dual_fmac_f32 v120, v32, v8
	v_dual_fmac_f32 v119, v33, v9 :: v_dual_fmac_f32 v118, v34, v10
	v_dual_fmac_f32 v117, v35, v11 :: v_dual_fmac_f32 v116, v36, v12
	v_dual_fmac_f32 v115, v37, v13 :: v_dual_fmac_f32 v114, v38, v14
	v_dual_fmac_f32 v113, v39, v15 :: v_dual_fmac_f32 v112, v24, v0
	v_dual_fmac_f32 v111, v25, v1 :: v_dual_fmac_f32 v110, v26, v2
	v_dual_fmac_f32 v109, v27, v3 :: v_dual_fmac_f32 v108, v28, v4
	v_dual_fmac_f32 v107, v29, v5 :: v_dual_fmac_f32 v106, v30, v6
	v_dual_fmac_f32 v105, v31, v7 :: v_dual_fmac_f32 v104, v16, v8
	v_dual_fmac_f32 v103, v17, v9 :: v_dual_fmac_f32 v102, v18, v10
	v_dual_fmac_f32 v101, v19, v11 :: v_dual_fmac_f32 v100, v20, v12
	v_dual_fmac_f32 v99, v21, v13 :: v_dual_fmac_f32 v98, v22, v14
	v_dual_fmac_f32 v97, v23, v15 :: v_dual_fmac_f32 v96, v181, v0
	v_dual_fmac_f32 v95, v182, v1 :: v_dual_fmac_f32 v94, v183, v2
	v_dual_fmac_f32 v91, v193, v4 :: v_dual_fmac_f32 v92, v184, v3
	v_dual_fmac_f32 v89, v195, v6 :: v_dual_fmac_f32 v90, v194, v5
	v_dual_fmac_f32 v87, v185, v8 :: v_dual_fmac_f32 v88, v196, v7
	v_dual_fmac_f32 v85, v187, v10 :: v_dual_fmac_f32 v86, v186, v9
	v_dual_fmac_f32 v83, v189, v12 :: v_dual_fmac_f32 v84, v188, v11
	v_fmac_f32_e32 v82, v190, v13
	v_fmac_f32_e32 v68, v191, v14
	v_fmac_f32_e32 v66, v180, v15
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s1, s40, s14
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v6, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v0, s1, 0, 16
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v2, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s1, v0
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
	s_and_b32 s3, s1, 16
	s_mov_b32 s1, s33
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s33, s3
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v56, 0
	s_add_i32 s6, s14, s41
	s_mov_b32 s1, s33
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
.LBB0_8:                                ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1471 46 is_stmt 1             ; ragged.py:1471:46
	s_add_i32 s7, s6, s1
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s30, s26
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_mul_i32 s8, s7, s34
	.loc	1 1472 46                       ; ragged.py:1472:46
	s_mul_i32 s7, s7, s35
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_add_i32 s8, s8, s22
	.loc	1 1472 46                       ; ragged.py:1472:46
	v_add_nc_u32_e32 v180, s7, v64
	v_add_nc_u32_e32 v181, s7, v153
	v_add_nc_u32_e32 v182, s7, v154
	v_add_nc_u32_e32 v183, s7, v70
	v_add_nc_u32_e32 v184, s7, v155
	v_add_nc_u32_e32 v185, s7, v71
	v_add_nc_u32_e32 v186, s7, v72
	v_add_nc_u32_e32 v187, s7, v73
	v_add_nc_u32_e32 v188, s7, v156
	v_add_nc_u32_e32 v189, s7, v74
	v_add_nc_u32_e32 v190, s7, v75
	v_add_nc_u32_e32 v191, s7, v76
	v_add_nc_u32_e32 v192, s7, v77
	v_add_nc_u32_e32 v193, s7, v78
	v_add_nc_u32_e32 v194, s7, v79
	v_add_nc_u32_e32 v195, s7, v80
	v_add_nc_u32_e32 v196, s8, v65
	v_add_nc_u32_e32 v197, s8, v151
	v_add_nc_u32_e32 v198, s8, v152
	v_add_nc_u32_e32 v199, s8, v69
	.loc	1 1472 38 is_stmt 0             ; ragged.py:1472:38
	v_dual_cndmask_b32 v180, 0x80000000, v180 :: v_dual_cndmask_b32 v181, 0x80000000, v181
	v_dual_cndmask_b32 v182, 0x80000000, v182 :: v_dual_cndmask_b32 v183, 0x80000000, v183
	s_mov_b32 s31, s27
	v_dual_cndmask_b32 v184, 0x80000000, v184 :: v_dual_cndmask_b32 v185, 0x80000000, v185
	v_dual_cndmask_b32 v186, 0x80000000, v186 :: v_dual_cndmask_b32 v187, 0x80000000, v187
	v_dual_cndmask_b32 v188, 0x80000000, v188 :: v_dual_cndmask_b32 v189, 0x80000000, v189
	v_dual_cndmask_b32 v190, 0x80000000, v190 :: v_dual_cndmask_b32 v191, 0x80000000, v191
	v_dual_cndmask_b32 v192, 0x80000000, v192 :: v_dual_cndmask_b32 v193, 0x80000000, v193
	v_dual_cndmask_b32 v194, 0x80000000, v194 :: v_dual_cndmask_b32 v195, 0x80000000, v195
	.loc	1 1471 38 is_stmt 1             ; ragged.py:1471:38
	v_cndmask_b32_e64 v196, 0x80000000, v196, s0
	v_cndmask_b32_e64 v197, 0x80000000, v197, s0
	v_cndmask_b32_e64 v198, 0x80000000, v198, s0
	v_cndmask_b32_e64 v199, 0x80000000, v199, s0
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_clause 0xf
	buffer_load_u8 v200, v180, s[28:31], 0 offen
	buffer_load_u8 v201, v181, s[28:31], 0 offen
	buffer_load_u8 v202, v182, s[28:31], 0 offen
	buffer_load_u8 v181, v183, s[28:31], 0 offen
	buffer_load_u8 v203, v184, s[28:31], 0 offen
	buffer_load_u8 v182, v185, s[28:31], 0 offen
	buffer_load_u8 v185, v186, s[28:31], 0 offen
	buffer_load_u8 v180, v187, s[28:31], 0 offen
	buffer_load_u8 v186, v188, s[28:31], 0 offen
	buffer_load_u8 v184, v189, s[28:31], 0 offen
	buffer_load_u8 v187, v190, s[28:31], 0 offen
	buffer_load_u8 v183, v191, s[28:31], 0 offen
	buffer_load_u8 v188, v195, s[28:31], 0 offen
	buffer_load_u8 v189, v193, s[28:31], 0 offen
	buffer_load_u8 v190, v192, s[28:31], 0 offen
	buffer_load_u8 v191, v194, s[28:31], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_clause 0x3
	buffer_load_u8 v192, v199, s[24:27], 0 offen
	buffer_load_u8 v193, v197, s[24:27], 0 offen
	buffer_load_u8 v194, v198, s[24:27], 0 offen
	buffer_load_u8 v195, v196, s[24:27], 0 offen
	v_add_nc_u32_e32 v204, 0, v157
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v205, 0, v158
	v_add_nc_u32_e32 v206, 0, v159
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s1, s1, 16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s1, s3
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt vmcnt(16)
	v_lshlrev_b16 v181.h, 8, v201.l
	v_lshlrev_b16 v181.l, 8, v181.l
	s_waitcnt vmcnt(12)
	v_lshlrev_b16 v180.h, 8, v182.l
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b16 v196.l, v200.l, v181.h
	v_lshlrev_b16 v180.l, 8, v180.l
	v_or_b16 v196.h, v202.l, v181.l
	s_waitcnt vmcnt(8)
	v_lshlrev_b16 v183.h, 8, v184.l
	v_or_b16 v197.l, v203.l, v180.h
	v_lshlrev_b16 v183.l, 8, v183.l
	s_waitcnt vmcnt(7)
	v_lshlrev_b16 v182.l, 8, v188.l
	s_waitcnt vmcnt(6)
	v_lshlrev_b16 v182.h, 8, v189.l
	v_or_b16 v197.h, v185.l, v180.l
	v_or_b16 v198.l, v186.l, v183.h
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v184.l, 8, v192.l
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v184.h, 8, v193.l
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_or_b16 v199.h, v191.l, v182.l
	v_or_b16 v199.l, v190.l, v182.h
	v_or_b16 v198.h, v187.l, v183.l
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(1)
	v_or_b16 v180.h, v194.l, v184.l
	s_waitcnt vmcnt(0)
	v_or_b16 v180.l, v195.l, v184.h
	ds_store_b32 v166, v180
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[180:183], v204 offset1:32
	ds_load_2addr_b64 v[184:187], v204 offset0:64 offset1:96
	ds_load_2addr_stride64_b64 v[188:191], v167 offset1:1
	ds_load_2addr_stride64_b64 v[192:195], v168 offset1:1
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v205, v[196:197]
	ds_store_b64 v169, v[198:199]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[196:199], v206 offset1:4
	ds_load_2addr_stride64_b64 v[200:203], v170 offset1:4
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[196:197], v[180:181], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[198:199], v[180:181], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[196:197], v[192:193], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[198:199], v[192:193], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[196:197], v[184:185], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[198:199], v[184:185], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[196:197], v[194:195], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[198:199], v[194:195], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[200:201], v[188:189], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[202:203], v[188:189], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[200:201], v[182:183], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[202:203], v[182:183], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[200:201], v[190:191], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[202:203], v[190:191], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[200:201], v[186:187], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[202:203], v[186:187], v[0:7] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s3, s23, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s15, s3, 16
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s1, s15
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_add_i32 s30, s1, s14
	s_delay_alu instid0(SALU_CYCLE_1)
	v_or_b32_e32 v180, s30, v147
	s_or_b32 s31, s30, 1
	s_or_b32 s38, s30, 2
	s_or_b32 s39, s30, 3
	s_or_b32 s46, s30, 4
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v181, s14, v180
	.loc	1 1485 30                       ; ragged.py:1485:30
	s_or_b32 s47, s30, 5
	s_or_b32 s48, s30, 6
	s_or_b32 s49, s30, 7
	s_or_b32 s73, s30, 8
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s3, s15, v181
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v181, s30, v148
	s_or_b32 s74, s30, 9
	s_or_b32 s75, s30, 10
	s_or_b32 s76, s30, 11
	s_or_b32 s77, s30, 12
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v182, s14, v181
	.loc	1 1485 30                       ; ragged.py:1485:30
	s_or_b32 s78, s30, 13
	s_or_b32 s79, s30, 14
	s_or_b32 s80, s30, 15
	.loc	1 1494 35                       ; ragged.py:1494:35
	s_sub_i32 s50, s31, s14
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s7, s15, v182
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v182, s30, v149
	.loc	1 1494 35                       ; ragged.py:1494:35
	s_sub_i32 s51, s38, s14
	s_sub_i32 s52, s39, s14
	s_sub_i32 s53, s46, s14
	s_sub_i32 s54, s47, s14
	v_subrev_nc_u32_e32 v183, s14, v182
	s_sub_i32 s55, s48, s14
	s_sub_i32 s56, s49, s14
	s_sub_i32 s57, s73, s14
	s_sub_i32 s58, s74, s14
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s6, s15, v183
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v183, s30, v150
	.loc	1 1494 35                       ; ragged.py:1494:35
	s_sub_i32 s59, s75, s14
	s_sub_i32 s60, s76, s14
	s_sub_i32 s61, s77, s14
	s_sub_i32 s81, s78, s14
	v_subrev_nc_u32_e32 v184, s14, v183
	s_sub_i32 s82, s79, s14
	s_sub_i32 s14, s80, s14
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	s_cmp_lt_i32 s50, s15
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s11, s45, v180
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s51, s15
	v_cmp_gt_i32_e64 s1, s15, v184
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s52, s15
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s10, s45, v181
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s53, s15
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s9, s45, v182
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s54, s15
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s8, s45, v183
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s55, s15
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s56, s15
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s57, s15
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s58, s15
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s59, s15
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s60, s15
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s61, s15
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s81, s15
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s82, s15
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s14, s15
	s_cselect_b32 s58, -1, 0
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cmp_eq_u32 s30, s45
	s_cselect_b32 s57, -1, 0
	s_cmp_eq_u32 s31, s45
	s_cselect_b32 s56, -1, 0
	s_cmp_eq_u32 s38, s45
	s_cselect_b32 s55, -1, 0
	s_cmp_eq_u32 s39, s45
	s_cselect_b32 s54, -1, 0
	s_cmp_eq_u32 s46, s45
	s_cselect_b32 s53, -1, 0
	s_cmp_eq_u32 s47, s45
	s_cselect_b32 s52, -1, 0
	s_cmp_eq_u32 s48, s45
	s_cselect_b32 s51, -1, 0
	s_cmp_eq_u32 s49, s45
	s_cselect_b32 s50, -1, 0
	s_cmp_eq_u32 s73, s45
	s_cselect_b32 s49, -1, 0
	s_cmp_eq_u32 s74, s45
	s_cselect_b32 s48, -1, 0
	s_cmp_eq_u32 s75, s45
	s_cselect_b32 s47, -1, 0
	s_cmp_eq_u32 s76, s45
	s_cselect_b32 s46, -1, 0
	s_cmp_eq_u32 s77, s45
	s_cselect_b32 s39, -1, 0
	s_cmp_eq_u32 s78, s45
	s_cselect_b32 s38, -1, 0
	s_cmp_eq_u32 s79, s45
	s_cselect_b32 s15, -1, 0
	s_cmp_eq_u32 s80, s45
	s_cselect_b32 s14, -1, 0
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s31, s30, s41
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, s0, s3
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_mul_i32 s30, s31, s34
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s1, s0, s1
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s30, s30, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v180, s30, v67
	v_add_nc_u32_e32 v182, s30, v161
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v180, 0x80000000, v180, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, s0, s7
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v181, v180, s[24:27], 0 offen
	v_add_nc_u32_e32 v180, s30, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v180, 0x80000000, v180, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, s0, s6
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v182, 0x80000000, v182, s3
	s_clause 0x1
	buffer_load_u8 v183, v180, s[24:27], 0 offen
	buffer_load_u8 v182, v182, s[24:27], 0 offen
	v_add_nc_u32_e32 v180, s30, v81
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	s_mul_i32 s3, s31, s35
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v185, s3, v155
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	v_cndmask_b32_e64 v180, 0x80000000, v180, s1
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s11, s44
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v186, s3, v71
	v_add_nc_u32_e32 v187, s3, v72
	v_add_nc_u32_e32 v188, s3, v73
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v184, v180, s[24:27], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v189, s3, v156
	v_add_nc_u32_e32 v190, s3, v74
	v_add_nc_u32_e32 v191, s3, v75
	v_add_nc_u32_e32 v192, s3, v76
	v_add_nc_u32_e32 v193, s3, v77
	v_add_nc_u32_e32 v194, s3, v78
	v_add_nc_u32_e32 v195, s3, v79
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(3)
	v_and_b16 v180.l, v181.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v180.l, v181.l, v180.l, s1
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s10, s44
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(2)
	v_and_b16 v180.h, v183.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v181.l, v182.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v180.h, v183.l, v180.h, s1
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s9, s44
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v183, s3, v154
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v197.l, v182.l, v181.l, s1
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s8, s44
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v182, s3, v153
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(0)
	v_and_b16 v181.l, v184.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v197.h, v184.l, v181.l, s1
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	v_add_nc_u32_e32 v181, s3, v64
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s72
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v184, s3, v70
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v182, 0x80000000, v182, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s71
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e32 v181, 0x80000000, v181, vcc_lo
	v_cndmask_b32_e64 v183, 0x80000000, v183, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s70
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v182, v182, s[28:31], 0 offen
	v_cndmask_b32_e64 v184, 0x80000000, v184, s1
	s_clause 0x1
	buffer_load_u8 v181, v181, s[28:31], 0 offen
	buffer_load_u8 v183, v183, s[28:31], 0 offen
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s69
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v185, 0x80000000, v185, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s68
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v184, v184, s[28:31], 0 offen
	v_cndmask_b32_e64 v186, 0x80000000, v186, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s67
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v185, v185, s[28:31], 0 offen
	v_cndmask_b32_e64 v187, 0x80000000, v187, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s66
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v186, v186, s[28:31], 0 offen
	v_cndmask_b32_e64 v188, 0x80000000, v188, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s65
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v187, v187, s[28:31], 0 offen
	v_cndmask_b32_e64 v189, 0x80000000, v189, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s64
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v188, v188, s[28:31], 0 offen
	v_cndmask_b32_e64 v190, 0x80000000, v190, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s63
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v189, v189, s[28:31], 0 offen
	v_cndmask_b32_e64 v191, 0x80000000, v191, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s62
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v190, v190, s[28:31], 0 offen
	v_cndmask_b32_e64 v192, 0x80000000, v192, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s61
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v191, v191, s[28:31], 0 offen
	v_cndmask_b32_e64 v193, 0x80000000, v193, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s60
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v192, v192, s[28:31], 0 offen
	v_cndmask_b32_e64 v194, 0x80000000, v194, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s59
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v193, v193, s[28:31], 0 offen
	v_cndmask_b32_e64 v196, 0x80000000, v195, s1
	s_clause 0x1
	buffer_load_u8 v195, v194, s[28:31], 0 offen
	buffer_load_u8 v194, v196, s[28:31], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v196, s3, v80
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s58
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v196, 0x80000000, v196, s1
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s57, s44
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v196, v196, s[28:31], 0 offen
	.loc	1 1498 38                       ; ragged.py:1498:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v171, v180
	ds_store_b8_d16_hi v171, v180 offset:256
	ds_store_b8 v171, v197 offset:512
	ds_store_b8_d16_hi v172, v197
	v_add_nc_u32_e32 v180, 0, v93
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v197, v180 offset:320
	ds_load_u8 v198, v180 offset:256
	ds_load_u8 v199, v180 offset:336
	ds_load_u8 v200, v180 offset:272
	ds_load_u8 v201, v180 offset:352
	ds_load_u8 v202, v180 offset:288
	ds_load_u8 v203, v180 offset:368
	ds_load_u8 v204, v180 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v197, v198, v197, 0xc0c0004
	ds_load_u8 v198, v180 offset:448
	ds_load_u8 v205, v180 offset:384
	ds_load_u8 v206, v180 offset:464
	ds_load_u8 v207, v180 offset:400
	ds_load_u8 v208, v180 offset:480
	ds_load_u8 v209, v180 offset:416
	ds_load_u8 v210, v180 offset:496
	ds_load_u8 v211, v180 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v198, v205, v198, 0xc0c0004
	ds_load_u8 v205, v180 offset:64
	ds_load_u8 v212, v180
	ds_load_u8 v213, v180 offset:80
	ds_load_u8 v214, v180 offset:96
	ds_load_u8 v215, v180 offset:112
	ds_load_u8 v216, v180 offset:16
	ds_load_u8 v217, v180 offset:32
	ds_load_u8 v218, v180 offset:48
	v_lshl_or_b32 v198, v198, 16, v197
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v205, v212, v205, 0xc0c0004
	ds_load_u8 v212, v180 offset:192
	ds_load_u8 v219, v180 offset:128
	ds_load_u8 v220, v180 offset:208
	ds_load_u8 v221, v180 offset:144
	ds_load_u8 v222, v180 offset:224
	ds_load_u8 v223, v180 offset:160
	ds_load_u8 v224, v180 offset:240
	ds_load_u8 v225, v180 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v212, v219, v212, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v197, v212, 16, v205
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(14)
	v_and_b16 v181.h, v181.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v181.l, v181.l, v181.h, s1
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v181.h, v182.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s56, s44
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(12)
	v_and_b16 v182.h, v184.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v181.h, v182.l, v181.h, s1
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v182.l, v183.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s55, s44
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(10)
	v_and_b16 v183.h, v186.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v182.l, v183.l, v182.l, s1
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v183.l, v185.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s54, s44
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(8)
	v_and_b16 v184.h, v188.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v182.h, v184.l, v182.h, s1
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s53, s44
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v184.l, v187.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v183.l, v185.l, v183.l, s1
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s52, s44
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(7)
	v_and_b16 v185.l, v189.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v183.h, v186.l, v183.h, s1
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s51, s44
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(6)
	v_and_b16 v185.h, v190.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v184.l, v187.l, v184.l, s1
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s50, s44
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(5)
	v_and_b16 v186.l, v191.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v184.h, v188.l, v184.h, s1
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s49, s44
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(4)
	v_and_b16 v186.h, v192.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v185.l, v189.l, v185.l, s1
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s48, s44
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(3)
	v_and_b16 v187.l, v193.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v185.h, v190.l, v185.h, s1
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s47, s44
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(2)
	v_and_b16 v187.h, v195.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v186.l, v191.l, v186.l, s1
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s46, s44
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(1)
	v_and_b16 v188.l, v194.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v186.h, v192.l, v186.h, s1
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s39, s44
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v187.l, v193.l, v187.l, s1
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s38, s44
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v188.h, v196.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v187.h, v195.l, v187.h, s1
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s15, s44
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v188.l, v194.l, v188.l, s1
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s14, s44
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v188.h, v196.l, v188.h, s1
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v190, v180 offset:704
	ds_load_u8 v191, v180 offset:640
	ds_load_u8 v192, v180 offset:720
	ds_load_u8 v193, v180 offset:656
	ds_load_u8 v194, v180 offset:736
	ds_load_u8 v195, v180 offset:672
	ds_load_u8 v196, v180 offset:752
	ds_load_u8 v205, v180 offset:688
	ds_load_u8 v212, v180 offset:576
	ds_load_u8 v219, v180 offset:512
	ds_load_u8 v226, v180 offset:592
	ds_load_u8 v227, v180 offset:528
	ds_load_u8 v228, v180 offset:608
	ds_load_u8 v229, v180 offset:544
	ds_load_u8 v230, v180 offset:624
	ds_load_u8 v231, v180 offset:560
	ds_load_u8 v232, v180 offset:960
	ds_load_u8 v233, v180 offset:896
	ds_load_u8 v234, v180 offset:976
	ds_load_u8 v235, v180 offset:912
	ds_load_u8 v236, v180 offset:992
	ds_load_u8 v237, v180 offset:928
	ds_load_u8 v238, v173
	ds_load_u8 v239, v180 offset:944
	ds_load_u8 v240, v180 offset:832
	ds_load_u8 v241, v180 offset:768
	ds_load_u8 v242, v180 offset:848
	ds_load_u8 v243, v180 offset:784
	ds_load_u8 v244, v180 offset:864
	ds_load_u8 v245, v180 offset:800
	ds_load_u8 v246, v180 offset:880
	ds_load_u8 v247, v180 offset:816
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v171, v181
	ds_store_b8_d16_hi v171, v181 offset:256
	ds_store_b8 v171, v182 offset:512
	ds_store_b8 v171, v183 offset:1024
	ds_store_b8_d16_hi v171, v183 offset:1280
	ds_store_b8 v171, v184 offset:1536
	ds_store_b8 v171, v185 offset:2048
	ds_store_b8_d16_hi v171, v185 offset:2304
	ds_store_b8 v171, v186 offset:2560
	ds_store_b8 v171, v187 offset:3072
	ds_store_b8_d16_hi v171, v187 offset:3328
	ds_store_b8_d16_hi v172, v182
	ds_store_b8_d16_hi v174, v184
	ds_store_b8_d16_hi v175, v186
	ds_store_b8 v171, v188 offset:3584
	ds_store_b8_d16_hi v176, v188
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v180, v177 offset:1280
	ds_load_u8 v181, v177 offset:1024
	ds_load_u8 v182, v177 offset:1920
	ds_load_u8 v183, v177 offset:1664
	ds_load_u8 v184, v177 offset:1408
	ds_load_u8 v185, v177 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v177 offset:1792
	ds_load_u8 v186, v177 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v183, v182, 16, v184
	v_perm_b32 v184, v200, v199, 0xc0c0004
	v_perm_b32 v199, v218, v215, 0xc0c0004
	v_perm_b32 v200, v225, v224, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v186, v181, 0xc0c0004
	ds_load_u8 v186, v177 offset:256
	ds_load_u8 v187, v177
	ds_load_u8 v188, v177 offset:896
	ds_load_u8 v189, v177 offset:640
	ds_load_u8 v248, v177 offset:384
	ds_load_u8 v249, v177 offset:128
	v_lshl_or_b32 v181, v181, 16, v180
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	ds_load_u8 v187, v177 offset:768
	ds_load_u8 v250, v177 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v185, v249, v248, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v250, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v187, 16, v186
	v_perm_b32 v186, v189, v188, 0xc0c0004
	v_perm_b32 v187, v221, v220, 0xc0c0004
	v_perm_b32 v188, v217, v214, 0xc0c0004
	v_perm_b32 v189, v223, v222, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[56:63], v[180:181], v[197:198], v[56:63] neg_lo:[1,1,0]
	v_lshl_or_b32 v182, v186, 16, v185
	v_perm_b32 v185, v207, v206, 0xc0c0004
	v_perm_b32 v186, v216, v213, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[182:183], v[197:198], v[48:55] neg_lo:[1,1,0]
	v_lshl_or_b32 v185, v185, 16, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v184, v187, 16, v186
	v_perm_b32 v186, v202, v201, 0xc0c0004
	v_perm_b32 v187, v209, v208, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[40:47], v[180:181], v[184:185], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[182:183], v[184:185], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v187, v187, 16, v186
	v_lshl_or_b32 v186, v189, 16, v188
	v_perm_b32 v188, v204, v203, 0xc0c0004
	v_perm_b32 v189, v211, v210, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[24:31], v[180:181], v[186:187], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[182:183], v[186:187], v[16:23] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v189, v189, 16, v188
	v_lshl_or_b32 v188, v200, 16, v199
	v_wmma_i32_16x16x16_iu4 v[8:15], v[180:181], v[188:189], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[182:183], v[188:189], v[0:7] neg_lo:[1,1,0]
	v_perm_b32 v180, v241, v240, 0xc0c0004
	v_perm_b32 v181, v233, v232, 0xc0c0004
	v_perm_b32 v182, v219, v212, 0xc0c0004
	v_perm_b32 v183, v191, v190, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v181, v181, 16, v180
	v_lshl_or_b32 v180, v183, 16, v182
	ds_load_u8 v182, v177 offset:3328
	ds_load_u8 v183, v177 offset:3072
	ds_load_u8 v184, v177 offset:3968
	ds_load_u8 v185, v177 offset:3712
	ds_load_u8 v186, v177 offset:3456
	ds_load_u8 v187, v177 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v177 offset:3840
	ds_load_u8 v188, v177 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v185, v184, 16, v186
	v_perm_b32 v186, v243, v242, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v188, v183, 0xc0c0004
	ds_load_u8 v188, v177 offset:2304
	ds_load_u8 v189, v177 offset:2048
	ds_load_u8 v190, v177 offset:2944
	ds_load_u8 v191, v177 offset:2688
	ds_load_u8 v197, v177 offset:2432
	ds_load_u8 v198, v177 offset:2176
	v_lshl_or_b32 v183, v183, 16, v182
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	ds_load_u8 v189, v177 offset:2816
	ds_load_u8 v199, v177 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v187, v198, v197, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v199, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v182, v189, 16, v188
	v_perm_b32 v188, v191, v190, 0xc0c0004
	v_perm_b32 v189, v193, v192, 0xc0c0004
	v_perm_b32 v190, v231, v230, 0xc0c0004
	v_perm_b32 v191, v205, v196, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[56:63], v[182:183], v[180:181], v[56:63] neg_lo:[1,1,0]
	v_lshl_or_b32 v184, v188, 16, v187
	v_perm_b32 v187, v235, v234, 0xc0c0004
	v_perm_b32 v188, v227, v226, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[184:185], v[180:181], v[48:55] neg_lo:[1,1,0]
	v_lshl_or_b32 v187, v187, 16, v186
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v186, v189, 16, v188
	v_perm_b32 v180, v245, v244, 0xc0c0004
	v_perm_b32 v181, v237, v236, 0xc0c0004
	v_perm_b32 v188, v229, v228, 0xc0c0004
	v_perm_b32 v189, v195, v194, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[40:47], v[182:183], v[186:187], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[184:185], v[186:187], v[32:39] neg_lo:[1,1,0]
	v_lshl_or_b32 v181, v181, 16, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v180, v189, 16, v188
	v_perm_b32 v188, v247, v246, 0xc0c0004
	v_perm_b32 v189, v239, v238, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[24:31], v[182:183], v[180:181], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[184:185], v[180:181], v[16:23] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v189, v189, 16, v188
	v_lshl_or_b32 v188, v191, 16, v190
	v_wmma_i32_16x16x16_iu4 v[8:15], v[182:183], v[188:189], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[184:185], v[188:189], v[0:7] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %._crit_edge15
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v0, 4, v126
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s3, s16, s35
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_or_b32_e32 v3, v0, v124
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v7, 0x88, v3
	v_or_b32_e32 v8, 0x86, v3
	v_or_b32_e32 v6, 0x8a, v3
	v_or_b32_e32 v4, 0x8e, v3
	v_or_b32_e32 v5, 0x8c, v3
	v_or_b32_e32 v9, 0x84, v3
	v_or_b32_e32 v10, 0x82, v3
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v11, s18, v7
	v_or_b32_e32 v12, s18, v8
	v_or_b32_e32 v2, s18, v6
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v15, 12, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s18, v4
	v_or_b32_e32 v1, s18, v5
	v_or_b32_e32 v13, s18, v9
	v_or_b32_e32 v14, s18, v10
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s6, s35, v11
	v_cmp_gt_i32_e64 s7, s35, v12
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v11, 0x80, v3
	v_or_b32_e32 v12, 14, v3
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s35, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s18, v15
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v0
	v_cmp_gt_i32_e64 s0, s35, v1
	v_cmp_gt_i32_e64 s8, s35, v13
	v_cmp_gt_i32_e64 s9, s35, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s18, v11
	v_or_b32_e32 v1, s18, v12
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v13, 10, v3
	v_or_b32_e32 v14, 8, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s35, v2
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v2, s35, v93
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s10, s35, v0
	v_cmp_gt_i32_e64 s11, s35, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s18, v13
	v_or_b32_e32 v1, s18, v14
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v16, 6, v3
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v17, 4, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v21, s18, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s35, v0
	v_cmp_gt_i32_e64 s14, s35, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s18, v16
	v_or_b32_e32 v20, s18, v18
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v0, s3, s18, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v19, s18, v17
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
	s_and_b32 s3, s5, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v0, v17, 2
	v_cndmask_b32_e64 v22, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s17
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v19, s35, 4, v0
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cndmask_b32_e64 v23, 0x80000000, v2, s3
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s5, s16
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s35, 48, v[0:1]
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	v_add_lshl_u32 v2, v0, v16, 2
	s_clause 0x2
	buffer_store_b32 v146, v22, s[20:23], 0 offen
	buffer_store_b32 v145, v23, s[20:23], 0 offen
	buffer_store_b32 v144, v21, s[20:23], 0 offen
	v_add_lshl_u32 v21, v0, v14, 2
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s5, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v22, v0, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v0, v15, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v143, v2, s[20:23], 0 offen
	buffer_store_b32 v142, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v0, v12, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v0, v11, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v141, v22, s[20:23], 0 offen
	buffer_store_b32 v140, v23, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v0, v10, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v0, v9, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v139, v2, s[20:23], 0 offen
	buffer_store_b32 v138, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v0, v8, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v0, v7, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v137, v22, s[20:23], 0 offen
	buffer_store_b32 v136, v23, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v0, v6, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v0, v5, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s1
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v20, s35, 5, v0
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add_lshl_u32 v0, v0, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s5, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v135, v2, s[20:23], 0 offen
	buffer_store_b32 v134, v21, s[20:23], 0 offen
	v_add_lshl_u32 v2, v19, v3, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v133, v22, s[20:23], 0 offen
	buffer_store_b32 v132, v23, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v131, v0, s[20:23], 0 offen
	buffer_store_b32 v130, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v16, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v19, v14, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v129, v21, s[20:23], 0 offen
	buffer_store_b32 v128, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v15, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v127, v0, s[20:23], 0 offen
	buffer_store_b32 v125, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v12, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v19, v11, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v123, v21, s[20:23], 0 offen
	buffer_store_b32 v122, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v121, v0, s[20:23], 0 offen
	buffer_store_b32 v120, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v8, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v19, v7, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v119, v21, s[20:23], 0 offen
	buffer_store_b32 v118, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v5, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v117, v0, s[20:23], 0 offen
	buffer_store_b32 v116, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v4, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v3, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v115, v21, s[20:23], 0 offen
	buffer_store_b32 v114, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v113, v0, s[20:23], 0 offen
	buffer_store_b32 v112, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v14, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v111, v19, s[20:23], 0 offen
	buffer_store_b32 v110, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v15, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v109, v0, s[20:23], 0 offen
	buffer_store_b32 v108, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v107, v19, s[20:23], 0 offen
	buffer_store_b32 v106, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v105, v0, s[20:23], 0 offen
	buffer_store_b32 v104, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v103, v19, s[20:23], 0 offen
	buffer_store_b32 v102, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v5, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v101, v0, s[20:23], 0 offen
	buffer_store_b32 v100, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v4, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v1, v3, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v17, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v99, v19, s[20:23], 0 offen
	buffer_store_b32 v98, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v97, v0, s[20:23], 0 offen
	buffer_store_b32 v96, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	v_add_lshl_u32 v0, v1, v16, 2
	v_add_lshl_u32 v2, v1, v14, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v95, v3, s[20:23], 0 offen
	buffer_store_b32 v94, v17, s[20:23], 0 offen
	v_add_lshl_u32 v3, v1, v13, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v13, v1, v15, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v92, v0, s[20:23], 0 offen
	buffer_store_b32 v91, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v0, v1, v12, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	v_add_lshl_u32 v2, v1, v11, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v90, v3, s[20:23], 0 offen
	buffer_store_b32 v89, v13, s[20:23], 0 offen
	v_add_lshl_u32 v3, v1, v10, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v9, v1, v9, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v88, v0, s[20:23], 0 offen
	buffer_store_b32 v87, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v0, v1, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v2, v1, v7, 2
	s_clause 0x1
	buffer_store_b32 v86, v3, s[20:23], 0 offen
	buffer_store_b32 v85, v9, s[20:23], 0 offen
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v6, 2
	v_add_lshl_u32 v5, v1, v5, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v1, v4, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s2, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s2, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v4, 0x80000000, v5, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b32 v84, v0, s[20:23], 0 offen
	buffer_store_b32 v83, v2, s[20:23], 0 offen
	buffer_store_b32 v82, v3, s[20:23], 0 offen
	buffer_store_b32 v68, v4, s[20:23], 0 offen
	buffer_store_b32 v66, v1, s[20:23], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 251
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 251
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 83
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10344
; TotalNumSgprs: 85
; NumVgprs: 251
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 85
; NumVGPRsForWavesPerEU: 251
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     85
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     251
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
