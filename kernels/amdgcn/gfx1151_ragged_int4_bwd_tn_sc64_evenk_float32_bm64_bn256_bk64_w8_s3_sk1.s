	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
	v_and_b32_e32 v107, 15, v0
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
	s_mul_i32 s28, s6, s34
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
	s_lshl_b32 s7, s9, 6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s10
	s_addc_u32 s5, s5, s11
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s7, v107
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s23, s[4:5], 0x0
	s_mov_b32 s9, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, 16, v1
	v_or_b32_e32 v3, 32, v1
	v_or_b32_e32 v4, 48, v1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s5, s34, v1
	v_cmp_gt_i32_e64 s4, s34, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s19, s34, v3
	v_cmp_gt_i32_e64 s2, s34, v4
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s23, s23, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s23, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge16_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s16, s7, s28
	s_lshl_b32 s22, s35, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s9, -1
                                        ; implicit-def: $sgpr16
                                        ; implicit-def: $sgpr22
.LBB0_3:                                ; %Flow174
	s_load_b64 s[20:21], s[0:1], 0x28
	v_dual_mov_b32 v104, 0 :: v_dual_and_b32 v139, 0xe0, v0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v108, 0
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
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v161, 0
	v_mov_b32_e32 v162, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_lshl_b32 s18, s8, 8
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_lshrrev_b32_e32 v2, 3, v0
	v_dual_mov_b32 v162, 0 :: v_dual_and_b32 v1, 63, v0
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x38
	s_load_b256 s[8:15], s[0:1], 0x0
	v_dual_mov_b32 v160, 0 :: v_dual_lshlrev_b32 v3, 1, v0
	v_dual_mov_b32 v161, 0 :: v_dual_and_b32 v2, 24, v2
	v_lshrrev_b32_e32 v4, 1, v0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v65, s18, v0
	v_lshrrev_b32_e32 v10, 2, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[66:67], null, s34, v2, v[1:2]
	v_xor_b32_e32 v4, v3, v4
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v5, s7, v1
	v_dual_mov_b32 v154, 0 :: v_dual_lshlrev_b32 v13, 5, v0
	v_xor_b32_e32 v10, v3, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v159, 0 :: v_dual_and_b32 v4, 24, v4
	v_mad_u64_u32 v[67:68], null, s34, 3, v[66:67]
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s3, s3, 5
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s29, s23, 1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s34, v5
	v_dual_mov_b32 v158, 0 :: v_dual_lshlrev_b32 v5, 5, v107
	v_xor_b32_e32 v2, v4, v2
	v_mad_u64_u32 v[68:69], null, s34, 5, v[66:67]
	v_mad_u64_u32 v[69:70], null, s34, 6, v[66:67]
	v_mad_u64_u32 v[70:71], null, s34, 7, v[66:67]
	v_mad_u64_u32 v[71:72], null, s35, 3, v[65:66]
	v_mad_u64_u32 v[72:73], null, s35, 5, v[65:66]
	v_mad_u64_u32 v[73:74], null, s35, 6, v[65:66]
	v_mad_u64_u32 v[74:75], null, s35, 7, v[65:66]
	v_mad_u64_u32 v[75:76], null, s35, 9, v[65:66]
	v_mad_u64_u32 v[76:77], null, s35, 10, v[65:66]
	v_mad_u64_u32 v[77:78], null, s35, 11, v[65:66]
	v_mad_u64_u32 v[78:79], null, s35, 12, v[65:66]
	v_or_b32_e32 v165, v4, v13
	v_dual_mov_b32 v157, 0 :: v_dual_lshlrev_b32 v4, 4, v139
	v_dual_mov_b32 v155, 0 :: v_dual_and_b32 v10, 24, v10
	v_mad_u64_u32 v[79:80], null, s35, 13, v[65:66]
	s_cmp_lt_i32 s3, 32
	v_mad_u64_u32 v[80:81], null, s35, 14, v[65:66]
	v_mad_u64_u32 v[81:82], null, s35, 15, v[65:66]
	s_cselect_b32 s30, -1, 0
	.loc	1 1429 43                       ; ragged.py:1429:43
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s23, s6, s16
	s_add_i32 s16, s7, s28
	v_mad_u64_u32 v[82:83], null, s35, 17, v[65:66]
	v_mad_u64_u32 v[83:84], null, s35, 18, v[65:66]
	v_and_or_b32 v164, v3, 24, v5
	v_or3_b32 v166, v10, v4, v5
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v5, s16, v107
	v_dual_mov_b32 v148, 0 :: v_dual_and_b32 v27, 0xf0, v0
	v_mad_u64_u32 v[84:85], null, s35, 19, v[65:66]
	v_mad_u64_u32 v[85:86], null, s35, 20, v[65:66]
	v_mad_u64_u32 v[86:87], null, s35, 21, v[65:66]
	v_mad_u64_u32 v[87:88], null, s35, 22, v[65:66]
	v_mad_u64_u32 v[88:89], null, s35, 23, v[65:66]
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v24, 16, v5
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v25, 32, v5
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v26, 48, v5
	v_mul_lo_u32 v167, v5, s17
	v_dual_mov_b32 v146, 0 :: v_dual_lshlrev_b32 v5, 2, v27
	v_dual_mov_b32 v144, 0 :: v_dual_and_b32 v13, 32, v13
	v_mad_u64_u32 v[89:90], null, s35, 24, v[65:66]
	v_mad_u64_u32 v[90:91], null, s35, 25, v[65:66]
	v_mad_u64_u32 v[91:92], null, s35, 26, v[65:66]
	v_mad_u64_u32 v[92:93], null, s35, 27, v[65:66]
	v_mad_u64_u32 v[93:94], null, s35, 28, v[65:66]
	v_lshl_add_u32 v1, v1, 5, 0
	v_xor_b32_e32 v6, 8, v164
	v_xor_b32_e32 v7, 16, v164
	v_xor_b32_e32 v8, 24, v164
	v_xor_b32_e32 v9, 0x208, v164
	v_xor_b32_e32 v11, 0x218, v164
	v_xor_b32_e32 v12, 0x210, v164
	v_xor_b32_e32 v14, 0x410, v164
	v_xor_b32_e32 v15, 0x418, v164
	v_xor_b32_e32 v16, 0x408, v164
	v_xor_b32_e32 v17, 0x618, v164
	v_xor_b32_e32 v18, 0x610, v164
	v_xor_b32_e32 v19, 0x608, v164
	v_xor_b32_e32 v20, 8, v165
	v_xor_b32_e32 v4, 16, v165
	v_xor_b32_e32 v10, 24, v165
	v_xor_b32_e32 v21, 8, v166
	v_xor_b32_e32 v22, 16, v166
	v_xor_b32_e32 v23, 24, v166
	v_mul_lo_u32 v168, v24, s17
	v_dual_mov_b32 v142, 0 :: v_dual_and_b32 v3, 28, v3
	v_cndmask_b32_e64 v24, 0, 1, s30
	v_add3_u32 v5, 0, v5, v13
	v_dual_mov_b32 v140, 0 :: v_dual_lshlrev_b32 v13, 1, v27
	v_mad_u64_u32 v[94:95], null, s35, 29, v[65:66]
	v_mad_u64_u32 v[95:96], null, s35, 30, v[65:66]
	v_mul_lo_u32 v169, v25, s17
	v_mul_lo_u32 v170, v26, s17
	v_mad_u64_u32 v[96:97], null, s35, 31, v[65:66]
	s_lshl_b32 s22, s35, 4
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s35, v65
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s33, s6, s17
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v163, s22, v65
	v_cmp_ne_u32_e64 s6, 1, v24
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v171, v1, v2
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v172, 0, v6
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v173, 0, v7
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v174, 0, v8
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v175, 0, v9
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v176, 0, v11
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v177, 0, v12
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v178, 0, v14
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v179, 0, v15
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v180, 0, v16
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v181, 0, v17
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v182, 0, v18
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v183, 0, v19
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v184, 0, v20
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v185, 0, v4
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v186, 0, v10
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v187, 0, v21
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v188, 0, v22
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v189, 0, v23
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v190, v5, v3
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v191, 0, v13
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v104, 0
	v_mov_b32_e32 v103, 0
	v_mov_b32_e32 v101, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v105, 0
	v_mov_b32_e32 v97, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_add_i32 s29, s29, -1
	s_and_b32 s25, s9, 0xffff
	s_mov_b32 s24, s8
	s_and_b32 s9, s11, 0xffff
	s_mov_b32 s8, s10
	s_mov_b32 s36, 0
	s_lshr_b32 s17, s29, 5
	s_mov_b32 s28, s12
	s_mov_b32 s29, s13
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s10, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v33, v167, s36, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s10, s36, s33
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v34, v168, s36, 1
	v_add_lshl_u32 v35, v169, s36, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s10, s10, s35
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v36, v170, s36, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v37, v65, s10, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	v_cndmask_b32_e64 v35, 0x80000000, v35, s19
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v37, 0x80000000, v37, s0
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x3
	buffer_load_u16 v33, v33, s[28:31], 0 offen
	buffer_load_u16 v34, v34, s[28:31], 0 offen
	buffer_load_u16 v35, v35, s[28:31], 0 offen
	buffer_load_u16 v36, v36, s[28:31], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v37, v37, s[12:15], 0 offen
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s11, s36, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s10, s11, 5
	s_cmp_lg_u32 s36, s17
	s_mov_b32 s36, s11
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v54, v206, v34 :: v_dual_lshlrev_b32 v33, 16, v33
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v38, v223, v33 :: v_dual_lshlrev_b32 v35, 16, v35
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v41, v220, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_mul_f32_e32 v39, v222, v33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v56, v204, v34 :: v_dual_lshlrev_b32 v37, 16, v37
	v_dual_mul_f32 v40, v221, v33 :: v_dual_mul_f32 v53, v207, v34
	v_dual_mul_f32 v42, v219, v33 :: v_dual_mul_f32 v55, v205, v34
	v_dual_mul_f32 v43, v218, v33 :: v_dual_mul_f32 v60, v200, v34
	v_dual_mul_f32 v44, v217, v33 :: v_dual_mul_f32 v57, v203, v34
	v_dual_mul_f32 v45, v216, v33 :: v_dual_mul_f32 v58, v202, v34
	v_dual_mul_f32 v46, v215, v33 :: v_dual_mul_f32 v59, v201, v34
	v_dual_mul_f32 v47, v214, v33 :: v_dual_mul_f32 v64, v196, v34
	v_dual_mul_f32 v48, v213, v33 :: v_dual_mul_f32 v61, v199, v34
	v_dual_mul_f32 v49, v212, v33 :: v_dual_mul_f32 v62, v198, v34
	v_dual_mul_f32 v50, v211, v33 :: v_dual_mul_f32 v63, v197, v34
	v_mul_f32_e32 v51, v210, v33
	v_dual_mul_f32 v52, v209, v33 :: v_dual_mul_f32 v195, v195, v34
	v_dual_mul_f32 v33, v208, v33 :: v_dual_mul_f32 v194, v194, v34
	v_dual_mul_f32 v193, v193, v34 :: v_dual_mul_f32 v32, v32, v35
	v_dual_mul_f32 v34, v192, v34 :: v_dual_mul_f32 v31, v31, v35
	v_mul_f32_e32 v16, v16, v36
	v_dual_mul_f32 v30, v30, v35 :: v_dual_mul_f32 v15, v15, v36
	v_dual_mul_f32 v29, v29, v35 :: v_dual_mul_f32 v208, v11, v36
	v_mul_f32_e32 v192, v28, v35
	v_dual_mul_f32 v196, v27, v35 :: v_dual_mul_f32 v207, v12, v36
	v_dual_mul_f32 v197, v26, v35 :: v_dual_mul_f32 v206, v13, v36
	v_dual_mul_f32 v198, v25, v35 :: v_dual_mul_f32 v7, v7, v36
	v_dual_mul_f32 v199, v24, v35 :: v_dual_mul_f32 v10, v10, v36
	v_dual_mul_f32 v200, v23, v35 :: v_dual_mul_f32 v9, v9, v36
	v_dual_mul_f32 v201, v22, v35 :: v_dual_mul_f32 v8, v8, v36
	v_dual_mul_f32 v202, v21, v35 :: v_dual_mul_f32 v3, v3, v36
	v_dual_mul_f32 v203, v20, v35 :: v_dual_mul_f32 v6, v6, v36
	v_dual_mul_f32 v204, v19, v35 :: v_dual_mul_f32 v5, v5, v36
	v_dual_mul_f32 v205, v18, v35 :: v_dual_mul_f32 v4, v4, v36
	v_dual_mul_f32 v35, v17, v35 :: v_dual_mul_f32 v2, v2, v36
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v190, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v191
	ds_load_b128 v[21:24], v191 offset:16
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v37, v14, v36
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[11:14], v191 offset:512
	ds_load_b128 v[25:28], v191 offset:528
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v1, v1, v36 :: v_dual_fmac_f32 v162, v38, v17
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v161, v39, v18 :: v_dual_fmac_f32 v160, v40, v19
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v159, v41, v20 :: v_dual_fmac_f32 v158, v42, v21
	v_dual_fmac_f32 v157, v43, v22 :: v_dual_fmac_f32 v156, v44, v23
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v155, v45, v24 :: v_dual_fmac_f32 v154, v46, v11
	v_dual_fmac_f32 v153, v47, v12 :: v_dual_fmac_f32 v152, v48, v13
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v151, v49, v14 :: v_dual_fmac_f32 v150, v50, v25
	v_dual_fmac_f32 v149, v51, v26 :: v_dual_fmac_f32 v148, v52, v27
	v_dual_fmac_f32 v147, v33, v28 :: v_dual_fmac_f32 v144, v55, v19
	v_dual_fmac_f32 v146, v53, v17 :: v_dual_fmac_f32 v145, v54, v18
	v_dual_fmac_f32 v143, v56, v20 :: v_dual_fmac_f32 v142, v57, v21
	v_dual_fmac_f32 v141, v58, v22 :: v_dual_fmac_f32 v140, v59, v23
	v_dual_fmac_f32 v138, v60, v24 :: v_dual_fmac_f32 v137, v61, v11
	v_dual_fmac_f32 v136, v62, v12 :: v_dual_fmac_f32 v135, v63, v13
	v_dual_fmac_f32 v134, v64, v14 :: v_dual_fmac_f32 v133, v195, v25
	v_dual_fmac_f32 v132, v194, v26 :: v_dual_fmac_f32 v131, v193, v27
	v_dual_fmac_f32 v130, v34, v28 :: v_dual_fmac_f32 v129, v32, v17
	v_dual_fmac_f32 v128, v31, v18 :: v_dual_fmac_f32 v127, v30, v19
	v_dual_fmac_f32 v126, v29, v20 :: v_dual_fmac_f32 v125, v192, v21
	v_dual_fmac_f32 v124, v196, v22 :: v_dual_fmac_f32 v123, v197, v23
	v_dual_fmac_f32 v122, v198, v24 :: v_dual_fmac_f32 v121, v199, v11
	v_dual_fmac_f32 v120, v200, v12 :: v_dual_fmac_f32 v119, v201, v13
	v_dual_fmac_f32 v118, v202, v14 :: v_dual_fmac_f32 v117, v203, v25
	v_dual_fmac_f32 v116, v204, v26 :: v_dual_fmac_f32 v115, v205, v27
	v_dual_fmac_f32 v114, v35, v28 :: v_dual_fmac_f32 v113, v16, v17
	v_dual_fmac_f32 v112, v15, v18 :: v_dual_fmac_f32 v111, v37, v19
	v_dual_fmac_f32 v110, v206, v20 :: v_dual_fmac_f32 v109, v207, v21
	v_dual_fmac_f32 v108, v208, v22 :: v_dual_fmac_f32 v103, v9, v24
	v_dual_fmac_f32 v106, v10, v23 :: v_dual_fmac_f32 v101, v7, v12
	v_dual_fmac_f32 v102, v8, v11 :: v_dual_fmac_f32 v99, v5, v14
	v_dual_fmac_f32 v100, v6, v13 :: v_dual_fmac_f32 v105, v3, v26
	v_dual_fmac_f32 v98, v4, v25 :: v_dual_fmac_f32 v97, v1, v28
	v_fmac_f32_e32 v104, v2, v27
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
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v223, 0
	.loc	1 1426 27 is_stmt 1             ; ragged.py:1426:27
	s_and_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_add_i32 s37, s10, s23
	s_mov_b32 s38, s3
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
.LBB0_8:                                ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1436 46 is_stmt 1             ; ragged.py:1436:46
	s_add_i32 s39, s37, s38
	v_add_nc_u32_e32 v192, s35, v65
	s_mul_i32 s40, s39, s34
	.loc	1 1437 46                       ; ragged.py:1437:46
	s_mul_i32 s39, s39, s35
	v_lshl_add_u32 v193, s35, 1, v65
	v_lshl_add_u32 v194, s35, 2, v65
	v_lshl_add_u32 v195, s35, 3, v65
	v_add_nc_u32_e32 v196, s34, v66
	v_lshl_add_u32 v197, s34, 1, v66
	v_lshl_add_u32 v198, s34, 2, v66
	v_add_nc_u32_e32 v211, s39, v163
	v_add_nc_u32_e32 v212, s39, v82
	.loc	1 1436 46                       ; ragged.py:1436:46
	s_add_i32 s40, s40, s7
	.loc	1 1437 46                       ; ragged.py:1437:46
	v_add_nc_u32_e32 v213, s39, v83
	v_add_nc_u32_e32 v214, s39, v84
	v_add_nc_u32_e32 v199, s39, v65
	v_add_nc_u32_e32 v200, s39, v71
	v_add_nc_u32_e32 v201, s39, v72
	v_add_nc_u32_e32 v202, s39, v73
	v_add_nc_u32_e32 v203, s39, v74
	v_add_nc_u32_e32 v204, s39, v75
	v_add_nc_u32_e32 v205, s39, v76
	v_add_nc_u32_e32 v206, s39, v77
	v_add_nc_u32_e32 v207, s39, v78
	v_add_nc_u32_e32 v208, s39, v79
	v_add_nc_u32_e32 v209, s39, v80
	v_add_nc_u32_e32 v210, s39, v81
	v_add_nc_u32_e32 v215, s39, v85
	v_add_nc_u32_e32 v216, s39, v86
	v_add_nc_u32_e32 v217, s39, v87
	v_add_nc_u32_e32 v218, s39, v88
	v_add_nc_u32_e32 v219, s39, v89
	v_add_nc_u32_e32 v220, s39, v90
	v_add_nc_u32_e32 v221, s39, v91
	v_add_nc_u32_e32 v222, s39, v92
	v_add_nc_u32_e32 v223, s39, v93
	v_add_nc_u32_e32 v224, s39, v94
	v_add_nc_u32_e32 v225, s39, v95
	v_add_nc_u32_e32 v226, s39, v96
	v_add_nc_u32_e32 v227, s40, v66
	v_add_nc_u32_e32 v228, s40, v67
	v_add_nc_u32_e32 v229, s40, v68
	v_add_nc_u32_e32 v230, s40, v69
	v_add_nc_u32_e32 v231, s40, v70
	v_add_nc_u32_e32 v192, s39, v192
	v_add_nc_u32_e32 v193, s39, v193
	v_add_nc_u32_e32 v194, s39, v194
	v_add_nc_u32_e32 v195, s39, v195
	v_add_nc_u32_e32 v196, s40, v196
	v_add_nc_u32_e32 v197, s40, v197
	v_add_nc_u32_e32 v198, s40, v198
	.loc	1 1437 38 is_stmt 0             ; ragged.py:1437:38
	v_cndmask_b32_e64 v211, 0x80000000, v211, s0
	v_cndmask_b32_e64 v212, 0x80000000, v212, s0
	v_cndmask_b32_e64 v213, 0x80000000, v213, s0
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
	v_cndmask_b32_e64 v214, 0x80000000, v214, s0
	v_cndmask_b32_e64 v199, 0x80000000, v199, s0
	v_cndmask_b32_e64 v200, 0x80000000, v200, s0
	v_cndmask_b32_e64 v201, 0x80000000, v201, s0
	v_cndmask_b32_e64 v202, 0x80000000, v202, s0
	v_cndmask_b32_e64 v203, 0x80000000, v203, s0
	v_cndmask_b32_e64 v204, 0x80000000, v204, s0
	v_cndmask_b32_e64 v205, 0x80000000, v205, s0
	v_cndmask_b32_e64 v206, 0x80000000, v206, s0
	v_cndmask_b32_e64 v207, 0x80000000, v207, s0
	v_cndmask_b32_e64 v208, 0x80000000, v208, s0
	v_cndmask_b32_e64 v209, 0x80000000, v209, s0
	v_cndmask_b32_e64 v210, 0x80000000, v210, s0
	v_cndmask_b32_e64 v215, 0x80000000, v215, s0
	v_cndmask_b32_e64 v216, 0x80000000, v216, s0
	v_cndmask_b32_e64 v217, 0x80000000, v217, s0
	v_cndmask_b32_e64 v218, 0x80000000, v218, s0
	v_cndmask_b32_e64 v219, 0x80000000, v219, s0
	v_cndmask_b32_e64 v220, 0x80000000, v220, s0
	v_cndmask_b32_e64 v221, 0x80000000, v221, s0
	v_cndmask_b32_e64 v222, 0x80000000, v222, s0
	v_cndmask_b32_e64 v223, 0x80000000, v223, s0
	v_cndmask_b32_e64 v224, 0x80000000, v224, s0
	v_cndmask_b32_e64 v225, 0x80000000, v225, s0
	v_cndmask_b32_e64 v226, 0x80000000, v226, s0
	.loc	1 1436 38 is_stmt 1             ; ragged.py:1436:38
	v_cndmask_b32_e64 v227, 0x80000000, v227, s1
	v_cndmask_b32_e64 v228, 0x80000000, v228, s1
	v_cndmask_b32_e64 v229, 0x80000000, v229, s1
	v_cndmask_b32_e64 v230, 0x80000000, v230, s1
	v_cndmask_b32_e64 v231, 0x80000000, v231, s1
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_cndmask_b32_e64 v192, 0x80000000, v192, s0
	v_cndmask_b32_e64 v193, 0x80000000, v193, s0
	v_cndmask_b32_e64 v194, 0x80000000, v194, s0
	v_cndmask_b32_e64 v195, 0x80000000, v195, s0
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_cndmask_b32_e64 v196, 0x80000000, v196, s1
	v_cndmask_b32_e64 v197, 0x80000000, v197, s1
	v_cndmask_b32_e64 v198, 0x80000000, v198, s1
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_clause 0x1f
	buffer_load_u8 v211, v211, s[8:11], 0 offen
	buffer_load_u8 v212, v212, s[8:11], 0 offen
	buffer_load_u8 v213, v213, s[8:11], 0 offen
	buffer_load_u8 v214, v214, s[8:11], 0 offen
	buffer_load_u8 v215, v215, s[8:11], 0 offen
	buffer_load_u8 v216, v216, s[8:11], 0 offen
	buffer_load_u8 v217, v217, s[8:11], 0 offen
	buffer_load_u8 v218, v218, s[8:11], 0 offen
	buffer_load_u8 v219, v219, s[8:11], 0 offen
	buffer_load_u8 v220, v220, s[8:11], 0 offen
	buffer_load_u8 v221, v221, s[8:11], 0 offen
	buffer_load_u8 v222, v222, s[8:11], 0 offen
	buffer_load_u8 v226, v226, s[8:11], 0 offen
	buffer_load_u8 v224, v224, s[8:11], 0 offen
	buffer_load_u8 v225, v225, s[8:11], 0 offen
	buffer_load_u8 v223, v223, s[8:11], 0 offen
	buffer_load_u8 v232, v199, s[8:11], 0 offen
	buffer_load_u8 v199, v192, s[8:11], 0 offen
	buffer_load_u8 v233, v193, s[8:11], 0 offen
	buffer_load_u8 v200, v200, s[8:11], 0 offen
	buffer_load_u8 v234, v194, s[8:11], 0 offen
	buffer_load_u8 v201, v201, s[8:11], 0 offen
	buffer_load_u8 v235, v202, s[8:11], 0 offen
	buffer_load_u8 v202, v203, s[8:11], 0 offen
	buffer_load_u8 v236, v195, s[8:11], 0 offen
	buffer_load_u8 v203, v204, s[8:11], 0 offen
	buffer_load_u8 v237, v205, s[8:11], 0 offen
	buffer_load_u8 v204, v206, s[8:11], 0 offen
	buffer_load_u8 v205, v210, s[8:11], 0 offen
	buffer_load_u8 v206, v208, s[8:11], 0 offen
	buffer_load_u8 v208, v207, s[8:11], 0 offen
	buffer_load_u8 v209, v209, s[8:11], 0 offen
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_clause 0x7
	buffer_load_u8 v207, v231, s[24:27], 0 offen
	buffer_load_u8 v210, v229, s[24:27], 0 offen
	buffer_load_u8 v228, v228, s[24:27], 0 offen
	buffer_load_u8 v229, v196, s[24:27], 0 offen
	buffer_load_u8 v230, v230, s[24:27], 0 offen
	buffer_load_u8 v231, v198, s[24:27], 0 offen
	buffer_load_u8 v238, v197, s[24:27], 0 offen
	buffer_load_u8 v227, v227, s[24:27], 0 offen
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_add_nc_u32_e32 v240, 0, v165
	v_add_nc_u32_e32 v241, 0, v166
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_add_nc_u32_e32 v239, 0, v164
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1448 25                       ; ragged.py:1448:25
	s_add_i32 s10, s38, 32
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cmp_lt_i32 s38, 0
	s_mov_b32 s38, s10
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt vmcnt(38)
	v_lshlrev_b16 v193.h, 8, v212.l
	s_waitcnt vmcnt(36)
	v_lshlrev_b16 v193.l, 8, v214.l
	s_waitcnt vmcnt(34)
	v_lshlrev_b16 v192.h, 8, v216.l
	s_waitcnt vmcnt(32)
	v_lshlrev_b16 v192.l, 8, v218.l
	s_waitcnt vmcnt(16)
	v_or_b16 v202.h, v213.l, v193.l
	v_lshlrev_b16 v195.h, 8, v220.l
	v_lshlrev_b16 v195.l, 8, v222.l
	v_lshlrev_b16 v194.l, 8, v226.l
	v_lshlrev_b16 v194.h, 8, v224.l
	s_waitcnt vmcnt(14)
	v_or_b16 v203.h, v217.l, v192.l
	s_waitcnt vmcnt(12)
	v_or_b16 v204.h, v221.l, v195.l
	v_lshlrev_b16 v197.h, 8, v199.l
	s_waitcnt vmcnt(11)
	v_or_b16 v205.h, v225.l, v194.l
	v_lshlrev_b16 v197.l, 8, v200.l
	v_lshlrev_b16 v196.h, 8, v201.l
	v_lshlrev_b16 v196.l, 8, v202.l
	v_or_b16 v202.l, v211.l, v193.h
	v_lshlrev_b16 v199.h, 8, v203.l
	v_or_b16 v203.l, v215.l, v192.h
	v_lshlrev_b16 v199.l, 8, v204.l
	v_lshlrev_b16 v198.l, 8, v205.l
	s_waitcnt vmcnt(10)
	v_lshlrev_b16 v198.h, 8, v206.l
	s_waitcnt vmcnt(7)
	v_or_b16 v207.h, v235.l, v196.l
	v_or_b16 v206.h, v233.l, v197.l
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_lshlrev_b16 v200.l, 8, v207.l
	s_waitcnt vmcnt(6)
	v_lshlrev_b16 v200.h, 8, v210.l
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v201.l, 8, v228.l
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v201.h, 8, v229.l
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_or_b16 v207.l, v234.l, v196.h
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt vmcnt(3)
	v_or_b16 v193.h, v230.l, v200.l
	s_waitcnt vmcnt(2)
	v_or_b16 v193.l, v231.l, v200.h
	s_waitcnt vmcnt(1)
	v_or_b16 v192.h, v238.l, v201.l
	s_waitcnt vmcnt(0)
	v_or_b16 v192.l, v227.l, v201.h
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_or_b16 v206.l, v232.l, v197.h
	v_or_b16 v209.h, v209.l, v198.l
	v_or_b16 v209.l, v208.l, v198.h
	v_or_b16 v208.h, v237.l, v199.l
	v_or_b16 v208.l, v236.l, v199.h
	v_or_b16 v205.l, v223.l, v194.h
	v_or_b16 v204.l, v219.l, v195.h
	.loc	1 1436 38                       ; ragged.py:1436:38
	ds_store_b64 v171, v[192:193]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[216:217], v172
	ds_load_b64 v[218:219], v173
	ds_load_b64 v[220:221], v174
	ds_load_b64 v[222:223], v175
	ds_load_b64 v[224:225], v176
	ds_load_b64 v[226:227], v177
	ds_load_b64 v[228:229], v178
	ds_load_b64 v[230:231], v179
	ds_load_2addr_stride64_b64 v[192:195], v239 offset1:1
	ds_load_2addr_stride64_b64 v[196:199], v239 offset0:2 offset1:3
	ds_load_b64 v[232:233], v180
	ds_load_b64 v[234:235], v181
	ds_load_b64 v[236:237], v182
	ds_load_b64 v[238:239], v183
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v240, v[206:207]
	ds_store_b64 v184, v[208:209]
	ds_store_b64 v185, v[202:203]
	ds_store_b64 v186, v[204:205]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[200:203], v241 offset1:8
	ds_load_2addr_stride64_b64 v[204:207], v187 offset1:8
	ds_load_2addr_stride64_b64 v[208:211], v188 offset1:8
	ds_load_2addr_stride64_b64 v[212:215], v189 offset1:8
	.loc	1 1438 35                       ; ragged.py:1438:35
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[200:201], v[192:193], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[202:203], v[192:193], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[200:201], v[222:223], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[202:203], v[222:223], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[200:201], v[228:229], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[202:203], v[228:229], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[200:201], v[234:235], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[202:203], v[234:235], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[204:205], v[216:217], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[206:207], v[216:217], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[204:205], v[194:195], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[206:207], v[194:195], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[204:205], v[230:231], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[206:207], v[230:231], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[204:205], v[236:237], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[206:207], v[236:237], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[208:209], v[218:219], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[210:211], v[218:219], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[208:209], v[224:225], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[210:211], v[224:225], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[208:209], v[196:197], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[210:211], v[196:197], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[208:209], v[238:239], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[210:211], v[238:239], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[212:213], v[220:221], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[214:215], v[220:221], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[212:213], v[226:227], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[214:215], v[226:227], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[212:213], v[232:233], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[214:215], v[232:233], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[212:213], v[198:199], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[214:215], v[198:199], v[57:64] neg_lo:[1,1,0]
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v223, v1
	v_cvt_f32_i32_e32 v222, v2
	v_cvt_f32_i32_e32 v221, v3
	v_cvt_f32_i32_e32 v220, v4
	v_cvt_f32_i32_e32 v219, v5
	v_cvt_f32_i32_e32 v218, v6
	v_cvt_f32_i32_e32 v217, v7
	v_cvt_f32_i32_e32 v216, v8
	v_cvt_f32_i32_e32 v215, v9
	v_cvt_f32_i32_e32 v214, v10
	v_cvt_f32_i32_e32 v213, v11
	v_cvt_f32_i32_e32 v212, v12
	v_cvt_f32_i32_e32 v211, v13
	v_cvt_f32_i32_e32 v210, v14
	v_cvt_f32_i32_e32 v209, v15
	v_cvt_f32_i32_e32 v208, v16
	v_cvt_f32_i32_e32 v207, v17
	v_cvt_f32_i32_e32 v206, v18
	v_cvt_f32_i32_e32 v205, v19
	v_cvt_f32_i32_e32 v204, v20
	v_cvt_f32_i32_e32 v203, v21
	v_cvt_f32_i32_e32 v202, v22
	v_cvt_f32_i32_e32 v201, v23
	v_cvt_f32_i32_e32 v200, v24
	v_cvt_f32_i32_e32 v199, v25
	v_cvt_f32_i32_e32 v198, v26
	v_cvt_f32_i32_e32 v197, v27
	v_cvt_f32_i32_e32 v196, v28
	v_cvt_f32_i32_e32 v195, v29
	v_cvt_f32_i32_e32 v194, v30
	v_cvt_f32_i32_e32 v193, v31
	v_cvt_f32_i32_e32 v192, v32
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
.LBB0_10:                               ; %._crit_edge16
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v0, 4, v0
	v_lshrrev_b32_e32 v1, 1, v139
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s3, s16, s35
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_and_or_b32 v3, v0, 1, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v4, 0x8e, v3
	v_or_b32_e32 v7, 0x88, v3
	v_or_b32_e32 v8, 0x86, v3
	v_or_b32_e32 v6, 0x8a, v3
	v_or_b32_e32 v5, 0x8c, v3
	v_or_b32_e32 v9, 0x84, v3
	v_or_b32_e32 v10, 0x82, v3
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v0, s18, v4
	v_or_b32_e32 v11, s18, v7
	v_or_b32_e32 v12, s18, v8
	v_or_b32_e32 v2, s18, v6
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v14, 12, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s18, v5
	v_or_b32_e32 v13, s18, v9
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v0
	v_cmp_gt_i32_e64 s6, s35, v11
	v_cmp_gt_i32_e64 s7, s35, v12
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s18, v10
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v11, 0x80, v3
	v_or_b32_e32 v12, 14, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s35, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s18, v14
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s35, v1
	v_cmp_gt_i32_e64 s8, s35, v13
	v_cmp_gt_i32_e64 s9, s35, v0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s18, v11
	v_or_b32_e32 v1, s18, v12
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v13, 10, v3
	v_or_b32_e32 v15, 8, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s35, v2
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v2, s35, v107
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s10, s35, v0
	v_cmp_gt_i32_e64 s11, s35, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s18, v13
	v_or_b32_e32 v1, s18, v15
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
	v_add_nc_u32_e32 v19, s22, v0
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cndmask_b32_e64 v23, 0x80000000, v2, s3
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s5, s16
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s35, 48, v[0:1]
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	s_mov_b32 s22, 0x7ffffffe
	v_add_lshl_u32 v2, v0, v16, 2
	s_clause 0x2
	buffer_store_b32 v162, v22, s[20:23], 0 offen
	buffer_store_b32 v161, v23, s[20:23], 0 offen
	buffer_store_b32 v160, v21, s[20:23], 0 offen
	v_add_lshl_u32 v21, v0, v15, 2
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s5, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v22, v0, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v0, v14, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v159, v2, s[20:23], 0 offen
	buffer_store_b32 v158, v21, s[20:23], 0 offen
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
	buffer_store_b32 v157, v22, s[20:23], 0 offen
	buffer_store_b32 v156, v23, s[20:23], 0 offen
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
	buffer_store_b32 v155, v2, s[20:23], 0 offen
	buffer_store_b32 v154, v21, s[20:23], 0 offen
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
	buffer_store_b32 v153, v22, s[20:23], 0 offen
	buffer_store_b32 v152, v23, s[20:23], 0 offen
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
	buffer_store_b32 v151, v2, s[20:23], 0 offen
	buffer_store_b32 v150, v21, s[20:23], 0 offen
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
	buffer_store_b32 v149, v22, s[20:23], 0 offen
	buffer_store_b32 v148, v23, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v147, v0, s[20:23], 0 offen
	buffer_store_b32 v146, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v16, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v19, v15, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v145, v21, s[20:23], 0 offen
	buffer_store_b32 v144, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v14, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v143, v0, s[20:23], 0 offen
	buffer_store_b32 v142, v2, s[20:23], 0 offen
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
	buffer_store_b32 v141, v21, s[20:23], 0 offen
	buffer_store_b32 v140, v22, s[20:23], 0 offen
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
	buffer_store_b32 v138, v0, s[20:23], 0 offen
	buffer_store_b32 v137, v2, s[20:23], 0 offen
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
	buffer_store_b32 v136, v21, s[20:23], 0 offen
	buffer_store_b32 v135, v22, s[20:23], 0 offen
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
	buffer_store_b32 v134, v0, s[20:23], 0 offen
	buffer_store_b32 v133, v2, s[20:23], 0 offen
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
	buffer_store_b32 v132, v21, s[20:23], 0 offen
	buffer_store_b32 v131, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v130, v0, s[20:23], 0 offen
	buffer_store_b32 v129, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v15, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v128, v19, s[20:23], 0 offen
	buffer_store_b32 v127, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v14, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v126, v0, s[20:23], 0 offen
	buffer_store_b32 v125, v2, s[20:23], 0 offen
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
	buffer_store_b32 v124, v19, s[20:23], 0 offen
	buffer_store_b32 v123, v21, s[20:23], 0 offen
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
	buffer_store_b32 v122, v0, s[20:23], 0 offen
	buffer_store_b32 v121, v2, s[20:23], 0 offen
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
	buffer_store_b32 v120, v19, s[20:23], 0 offen
	buffer_store_b32 v119, v21, s[20:23], 0 offen
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
	buffer_store_b32 v118, v0, s[20:23], 0 offen
	buffer_store_b32 v117, v2, s[20:23], 0 offen
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
	buffer_store_b32 v116, v19, s[20:23], 0 offen
	buffer_store_b32 v115, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v114, v0, s[20:23], 0 offen
	buffer_store_b32 v113, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	v_add_lshl_u32 v0, v1, v16, 2
	v_add_lshl_u32 v2, v1, v15, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v112, v3, s[20:23], 0 offen
	buffer_store_b32 v111, v17, s[20:23], 0 offen
	v_add_lshl_u32 v3, v1, v13, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v13, v1, v14, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v110, v0, s[20:23], 0 offen
	buffer_store_b32 v109, v2, s[20:23], 0 offen
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
	buffer_store_b32 v108, v3, s[20:23], 0 offen
	buffer_store_b32 v106, v13, s[20:23], 0 offen
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
	buffer_store_b32 v103, v0, s[20:23], 0 offen
	buffer_store_b32 v102, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v0, v1, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v2, v1, v7, 2
	s_clause 0x1
	buffer_store_b32 v101, v3, s[20:23], 0 offen
	buffer_store_b32 v100, v9, s[20:23], 0 offen
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
	buffer_store_b32 v99, v0, s[20:23], 0 offen
	buffer_store_b32 v98, v2, s[20:23], 0 offen
	buffer_store_b32 v105, v3, s[20:23], 0 offen
	buffer_store_b32 v104, v4, s[20:23], 0 offen
	buffer_store_b32 v97, v1, s[20:23], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 242
		.amdhsa_next_free_sgpr 41
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
		.amdhsa_inst_pref_size 62
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 242
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7908
; TotalNumSgprs: 43
; NumVgprs: 242
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 242
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     242
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
