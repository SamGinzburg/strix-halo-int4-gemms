	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[24:25], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v99, 2, v0
	v_dual_mov_b32 v8, 0 :: v_dual_lshlrev_b32 v97, 3, v0
	v_and_b32_e32 v95, 15, v0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_b32_e32 v100, 0xe0, v0
	v_lshrrev_b32_e32 v98, 1, v0
	v_lshlrev_b32_e32 v96, 1, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v66, 24, v97
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s24, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s25, 0xff
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s5, s4
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
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
	s_mul_i32 s10, s7, s6
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s6
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s6, s10, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s7, s5
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s6, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s9, s7
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s26, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s26, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s12, s2, s5
	s_ashr_i32 s12, s12, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s9
	s_mul_hi_u32 s4, s9, s6
	s_abs_i32 s6, s2
	s_add_i32 s4, s9, s4
	s_load_b128 s[8:11], s[0:1], 0x20
	s_mul_hi_u32 s4, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s13, s4, s7
	s_sub_i32 s6, s6, s13
	s_add_i32 s13, s4, 1
	s_sub_i32 s14, s6, s7
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s4, s13, s4
	s_cselect_b32 s6, s14, s6
	s_add_i32 s13, s4, 1
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s4, s13, s4
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s27, s26, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s6, s4, s12
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s7, s6, s5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[4:5], s[26:27], 2
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s2, s2, s7
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s28, s6, 6
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s27, s2, 8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s8, s4
	s_addc_u32 s5, s9, s5
	s_clause 0x1
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s8, s[0:1], 0x38
	s_load_b32 s33, s[4:5], 0x0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s28, v99
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v65, s27, v0
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s9, s3, 5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s24, v1
	.loc	1 1361 39                       ; ragged.py:1361:39
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s29, s26, s8
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_ashr_i32 s0, s33, 31
	s_lshr_b32 s0, s0, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s0, s33, s0
	s_ashr_i32 s2, s0, 6
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s25, v65
	.loc	1 1349 39                       ; ragged.py:1349:39
	s_lshl_b32 s3, s2, 5
	.loc	1 1357 39                       ; ragged.py:1357:39
	s_mul_i32 s2, s26, s24
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_ge_i32 s9, s3
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_add3_u32 v1, s28, s2, v99
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v2, 24, v98
	v_lshlrev_b32_e32 v4, 5, v95
	v_lshlrev_b32_e32 v6, 4, v100
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[67:68], null, v1, s8, v[66:67]
	v_mad_u64_u32 v[68:69], null, s25, 3, v[65:66]
	v_mad_u64_u32 v[69:70], null, s25, 5, v[65:66]
	v_mad_u64_u32 v[70:71], null, s25, 6, v[65:66]
	v_dual_mov_b32 v42, v41 :: v_dual_lshlrev_b32 v1, 1, v0
	v_mad_u64_u32 v[71:72], null, s25, 7, v[65:66]
	v_mad_u64_u32 v[72:73], null, s25, 9, v[65:66]
	v_mad_u64_u32 v[73:74], null, s25, 10, v[65:66]
	v_mad_u64_u32 v[74:75], null, s25, 11, v[65:66]
	v_mad_u64_u32 v[75:76], null, s25, 12, v[65:66]
	v_dual_mov_b32 v46, v41 :: v_dual_and_b32 v3, 24, v1
	v_xor_b32_e32 v1, v1, v99
	v_mad_u64_u32 v[76:77], null, s25, 13, v[65:66]
	v_mad_u64_u32 v[77:78], null, s25, 14, v[65:66]
	v_mad_u64_u32 v[78:79], null, s25, 15, v[65:66]
	v_mad_u64_u32 v[79:80], null, s25, 17, v[65:66]
	v_mad_u64_u32 v[80:81], null, s25, 18, v[65:66]
	v_xor_b32_e32 v5, v3, v2
	v_dual_mov_b32 v48, v41 :: v_dual_and_b32 v1, 24, v1
	v_mad_u64_u32 v[81:82], null, s25, 19, v[65:66]
	v_mad_u64_u32 v[82:83], null, s25, 20, v[65:66]
	v_mad_u64_u32 v[83:84], null, s25, 21, v[65:66]
	v_mad_u64_u32 v[84:85], null, s25, 22, v[65:66]
	v_mad_u64_u32 v[85:86], null, s25, 23, v[65:66]
	v_lshl_or_b32 v5, v0, 5, v5
	v_mov_b32_e32 v43, v41
	v_or_b32_e32 v3, v4, v3
	v_mov_b32_e32 v45, v41
	v_or3_b32 v1, v1, v6, v4
	v_mad_u64_u32 v[86:87], null, s25, 24, v[65:66]
	v_mad_u64_u32 v[87:88], null, s25, 25, v[65:66]
	v_mad_u64_u32 v[88:89], null, s25, 26, v[65:66]
	v_mad_u64_u32 v[89:90], null, s25, 27, v[65:66]
	v_mad_u64_u32 v[90:91], null, s25, 28, v[65:66]
	v_xor_b32_e32 v2, v97, v2
	v_xor_b32_e32 v7, 8, v3
	v_xor_b32_e32 v8, 16, v3
	v_xor_b32_e32 v4, 24, v3
	v_xor_b32_e32 v6, 8, v5
	v_xor_b32_e32 v9, 16, v5
	v_xor_b32_e32 v10, 24, v5
	v_xor_b32_e32 v11, 8, v1
	v_xor_b32_e32 v12, 16, v1
	v_xor_b32_e32 v13, 24, v1
	v_mad_u64_u32 v[91:92], null, s25, 29, v[65:66]
	v_mad_u64_u32 v[92:93], null, s25, 30, v[65:66]
	v_mad_u64_u32 v[93:94], null, s25, 31, v[65:66]
	v_dual_mov_b32 v44, v41 :: v_dual_add_nc_u32 v101, s25, v65
	v_lshl_add_u32 v102, s25, 1, v65
	v_lshl_add_u32 v103, s25, 2, v65
	v_dual_mov_b32 v47, v41 :: v_dual_add_nc_u32 v104, 0, v2
	v_dual_mov_b32 v58, v41 :: v_dual_add_nc_u32 v105, 0, v3
	v_dual_mov_b32 v57, v41 :: v_dual_add_nc_u32 v106, 0, v7
	v_dual_mov_b32 v60, v41 :: v_dual_add_nc_u32 v107, 0, v8
	v_dual_mov_b32 v59, v41 :: v_dual_add_nc_u32 v108, 0, v4
	v_dual_mov_b32 v62, v41 :: v_dual_add_nc_u32 v109, 0, v5
	v_dual_mov_b32 v61, v41 :: v_dual_add_nc_u32 v110, 0, v6
	v_dual_mov_b32 v64, v41 :: v_dual_add_nc_u32 v111, 0, v9
	v_dual_mov_b32 v63, v41 :: v_dual_add_nc_u32 v112, 0, v10
	v_dual_mov_b32 v50, v41 :: v_dual_add_nc_u32 v113, 0, v1
	v_dual_mov_b32 v49, v41 :: v_dual_add_nc_u32 v114, 0, v11
	v_dual_mov_b32 v52, v41 :: v_dual_add_nc_u32 v115, 0, v12
	v_dual_mov_b32 v51, v41 :: v_dual_add_nc_u32 v116, 0, v13
	v_mov_b32_e32 v53, v41
	v_mov_b32_e32 v54, v41
	v_mov_b32_e32 v55, v41
	v_mov_b32_e32 v56, v41
	v_mov_b32_e32 v33, v41
	v_mov_b32_e32 v34, v41
	v_mov_b32_e32 v35, v41
	v_mov_b32_e32 v36, v41
	v_mov_b32_e32 v37, v41
	v_mov_b32_e32 v38, v41
	v_mov_b32_e32 v39, v41
	v_mov_b32_e32 v40, v41
	v_mov_b32_e32 v25, v41
	v_mov_b32_e32 v26, v41
	v_mov_b32_e32 v27, v41
	v_mov_b32_e32 v28, v41
	v_mov_b32_e32 v29, v41
	v_mov_b32_e32 v30, v41
	v_mov_b32_e32 v31, v41
	v_mov_b32_e32 v32, v41
	v_mov_b32_e32 v17, v41
	v_mov_b32_e32 v18, v41
	v_mov_b32_e32 v19, v41
	v_mov_b32_e32 v20, v41
	v_mov_b32_e32 v21, v41
	v_mov_b32_e32 v22, v41
	v_mov_b32_e32 v23, v41
	v_mov_b32_e32 v24, v41
	v_mov_b32_e32 v9, v41
	v_mov_b32_e32 v10, v41
	v_mov_b32_e32 v11, v41
	v_mov_b32_e32 v12, v41
	v_mov_b32_e32 v13, v41
	v_mov_b32_e32 v14, v41
	v_mov_b32_e32 v15, v41
	v_mov_b32_e32 v16, v41
	v_mov_b32_e32 v1, v41
	v_mov_b32_e32 v2, v41
	v_mov_b32_e32 v3, v41
	v_mov_b32_e32 v4, v41
	v_mov_b32_e32 v5, v41
	v_mov_b32_e32 v6, v41
	v_mov_b32_e32 v7, v41
	v_mov_b32_e32 v8, v41
	v_lshl_add_u32 v94, s25, 3, v65
	v_lshl_add_u32 v117, s25, 4, v65
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1363 42 is_stmt 1             ; ragged.py:1363:42
	s_add_i32 s30, s9, s29
	.loc	1 1362 42                       ; ragged.py:1362:42
	v_add_nc_u32_e32 v118, s9, v67
	.loc	1 1363 42                       ; ragged.py:1363:42
	s_mul_i32 s30, s30, s25
	.loc	1 1374 21                       ; ragged.py:1374:21
	s_add_i32 s9, s9, 32
	.loc	1 1363 42                       ; ragged.py:1363:42
	v_add_nc_u32_e32 v119, s30, v65
	v_add_nc_u32_e32 v120, s30, v101
	v_add_nc_u32_e32 v121, s30, v102
	v_add_nc_u32_e32 v122, s30, v68
	v_add_nc_u32_e32 v123, s30, v103
	v_add_nc_u32_e32 v124, s30, v69
	v_add_nc_u32_e32 v125, s30, v70
	v_add_nc_u32_e32 v126, s30, v71
	v_add_nc_u32_e32 v127, s30, v94
	v_add_nc_u32_e32 v128, s30, v72
	v_add_nc_u32_e32 v129, s30, v73
	v_add_nc_u32_e32 v130, s30, v74
	v_add_nc_u32_e32 v131, s30, v75
	v_add_nc_u32_e32 v132, s30, v76
	v_add_nc_u32_e32 v133, s30, v77
	v_add_nc_u32_e32 v134, s30, v78
	v_add_nc_u32_e32 v135, s30, v117
	v_add_nc_u32_e32 v136, s30, v79
	v_add_nc_u32_e32 v137, s30, v80
	v_add_nc_u32_e32 v138, s30, v81
	v_add_nc_u32_e32 v139, s30, v82
	v_add_nc_u32_e32 v140, s30, v83
	v_add_nc_u32_e32 v141, s30, v84
	v_add_nc_u32_e32 v142, s30, v85
	v_add_nc_u32_e32 v143, s30, v86
	v_add_nc_u32_e32 v144, s30, v87
	v_add_nc_u32_e32 v145, s30, v88
	v_add_nc_u32_e32 v146, s30, v89
	v_add_nc_u32_e32 v147, s30, v90
	v_add_nc_u32_e32 v148, s30, v91
	v_add_nc_u32_e32 v149, s30, v92
	.loc	1 1363 34 is_stmt 0             ; ragged.py:1363:34
	v_cndmask_b32_e64 v119, 0x80000000, v119, s0
	.loc	1 1363 42                       ; ragged.py:1363:42
	v_add_nc_u32_e32 v150, s30, v93
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e64 v120, 0x80000000, v120, s0
	v_cndmask_b32_e64 v121, 0x80000000, v121, s0
	v_cndmask_b32_e64 v122, 0x80000000, v122, s0
	.loc	1 1362 34 is_stmt 1             ; ragged.py:1362:34
	v_cndmask_b32_e64 v118, 0x80000000, v118, s1
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e64 v123, 0x80000000, v123, s0
	v_cndmask_b32_e64 v124, 0x80000000, v124, s0
	v_cndmask_b32_e64 v125, 0x80000000, v125, s0
	v_cndmask_b32_e64 v126, 0x80000000, v126, s0
	v_cndmask_b32_e64 v127, 0x80000000, v127, s0
	v_cndmask_b32_e64 v128, 0x80000000, v128, s0
	v_cndmask_b32_e64 v129, 0x80000000, v129, s0
	v_cndmask_b32_e64 v130, 0x80000000, v130, s0
	v_cndmask_b32_e64 v131, 0x80000000, v131, s0
	v_cndmask_b32_e64 v132, 0x80000000, v132, s0
	v_cndmask_b32_e64 v133, 0x80000000, v133, s0
	v_cndmask_b32_e64 v134, 0x80000000, v134, s0
	v_cndmask_b32_e64 v135, 0x80000000, v135, s0
	v_cndmask_b32_e64 v136, 0x80000000, v136, s0
	v_cndmask_b32_e64 v137, 0x80000000, v137, s0
	v_cndmask_b32_e64 v138, 0x80000000, v138, s0
	v_cndmask_b32_e64 v139, 0x80000000, v139, s0
	v_cndmask_b32_e64 v140, 0x80000000, v140, s0
	v_cndmask_b32_e64 v141, 0x80000000, v141, s0
	v_cndmask_b32_e64 v142, 0x80000000, v142, s0
	v_cndmask_b32_e64 v143, 0x80000000, v143, s0
	v_cndmask_b32_e64 v144, 0x80000000, v144, s0
	v_cndmask_b32_e64 v145, 0x80000000, v145, s0
	v_cndmask_b32_e64 v146, 0x80000000, v146, s0
	v_cndmask_b32_e64 v147, 0x80000000, v147, s0
	v_cndmask_b32_e64 v148, 0x80000000, v148, s0
	v_cndmask_b32_e64 v149, 0x80000000, v149, s0
	v_cndmask_b32_e64 v150, 0x80000000, v150, s0
	s_clause 0x1f
	buffer_load_u8 v152, v119, s[20:23], 0 offen
	buffer_load_u8 v120, v120, s[20:23], 0 offen
	buffer_load_u8 v121, v121, s[20:23], 0 offen
	buffer_load_u8 v122, v122, s[20:23], 0 offen
	buffer_load_u8 v123, v123, s[20:23], 0 offen
	buffer_load_u8 v124, v124, s[20:23], 0 offen
	buffer_load_u8 v125, v125, s[20:23], 0 offen
	buffer_load_u8 v126, v126, s[20:23], 0 offen
	buffer_load_u8 v127, v127, s[20:23], 0 offen
	buffer_load_u8 v128, v128, s[20:23], 0 offen
	buffer_load_u8 v129, v129, s[20:23], 0 offen
	buffer_load_u8 v130, v130, s[20:23], 0 offen
	buffer_load_u8 v131, v131, s[20:23], 0 offen
	buffer_load_u8 v132, v132, s[20:23], 0 offen
	buffer_load_u8 v133, v133, s[20:23], 0 offen
	buffer_load_u8 v134, v134, s[20:23], 0 offen
	buffer_load_u8 v135, v135, s[20:23], 0 offen
	buffer_load_u8 v136, v136, s[20:23], 0 offen
	buffer_load_u8 v137, v137, s[20:23], 0 offen
	buffer_load_u8 v138, v138, s[20:23], 0 offen
	buffer_load_u8 v139, v139, s[20:23], 0 offen
	buffer_load_u8 v140, v140, s[20:23], 0 offen
	buffer_load_u8 v141, v141, s[20:23], 0 offen
	buffer_load_u8 v142, v142, s[20:23], 0 offen
	buffer_load_u8 v143, v143, s[20:23], 0 offen
	buffer_load_u8 v144, v144, s[20:23], 0 offen
	buffer_load_u8 v145, v145, s[20:23], 0 offen
	buffer_load_u8 v146, v146, s[20:23], 0 offen
	buffer_load_u8 v147, v147, s[20:23], 0 offen
	buffer_load_u8 v148, v148, s[20:23], 0 offen
	buffer_load_u8 v149, v149, s[20:23], 0 offen
	buffer_load_u8 v156, v150, s[20:23], 0 offen
	.loc	1 1362 34                       ; ragged.py:1362:34
	buffer_load_b64 v[118:119], v118, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_lt_i32 s9, s3
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt vmcnt(15)
	v_lshlrev_b16 v126.h, 8, v136.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v154.l, v135.l, v126.h
	s_waitcnt vmcnt(9)
	v_lshlrev_b16 v122.h, 8, v142.l
	v_or_b16 v155.h, v141.l, v122.h
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v130.h, 8, v148.l
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt vmcnt(0)
	ds_store_b64 v104, v[118:119]
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_lshlrev_b16 v118.l, 8, v126.l
	v_lshlrev_b16 v118.h, 8, v124.l
	v_lshlrev_b16 v119.l, 8, v130.l
	v_lshlrev_b16 v126.l, 8, v138.l
	v_lshlrev_b16 v130.l, 8, v156.l
	v_or_b16 v151.h, v125.l, v118.l
	v_lshlrev_b16 v118.l, 8, v122.l
	v_or_b16 v151.l, v123.l, v118.h
	v_lshlrev_b16 v118.h, 8, v132.l
	v_lshlrev_b16 v122.l, 8, v128.l
	v_lshlrev_b16 v123.l, 8, v140.l
	v_or_b16 v150.h, v121.l, v118.l
	v_lshlrev_b16 v118.l, 8, v120.l
	v_or_b16 v153.l, v131.l, v118.h
	v_lshlrev_b16 v131.l, 8, v146.l
	v_or_b16 v152.h, v129.l, v119.l
	v_or_b16 v155.l, v139.l, v123.l
	v_or_b16 v150.l, v152.l, v118.l
	v_lshlrev_b16 v118.l, 8, v134.l
	v_lshlrev_b16 v134.l, 8, v144.l
	v_or_b16 v152.l, v127.l, v122.l
	v_or_b16 v154.h, v137.l, v126.l
	v_or_b16 v157.h, v149.l, v130.l
	v_or_b16 v153.h, v133.l, v118.l
	v_or_b16 v157.l, v147.l, v130.h
	v_or_b16 v156.h, v145.l, v131.l
	v_or_b16 v156.l, v143.l, v134.l
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[118:121], v105 offset1:1
	ds_load_2addr_stride64_b64 v[122:125], v105 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[126:129], v106 offset1:1
	ds_load_2addr_stride64_b64 v[130:133], v106 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[134:137], v107 offset1:1
	ds_load_2addr_stride64_b64 v[138:141], v107 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[142:145], v108 offset1:1
	ds_load_2addr_stride64_b64 v[146:149], v108 offset0:2 offset1:3
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v109, v[150:151]
	ds_store_b64 v110, v[152:153]
	ds_store_b64 v111, v[154:155]
	ds_store_b64 v112, v[156:157]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[150:153], v113 offset1:8
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[150:151], v[118:119], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[152:153], v[118:119], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[150:151], v[120:121], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[152:153], v[120:121], v[33:40] neg_lo:[1,1,0]
	.loc	1 1363 34                       ; ragged.py:1363:34
	ds_load_2addr_stride64_b64 v[118:121], v114 offset1:8
	.loc	1 1364 31                       ; ragged.py:1364:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[150:151], v[122:123], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[152:153], v[122:123], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[124:125], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[152:153], v[124:125], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[118:119], v[126:127], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[120:121], v[126:127], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[118:119], v[128:129], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[120:121], v[128:129], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[118:119], v[130:131], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[120:121], v[130:131], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[118:119], v[132:133], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[120:121], v[132:133], v[1:8] neg_lo:[1,1,0]
	.loc	1 1363 34                       ; ragged.py:1363:34
	ds_load_2addr_stride64_b64 v[118:121], v115 offset1:8
	ds_load_2addr_stride64_b64 v[122:125], v116 offset1:8
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[118:119], v[134:135], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[120:121], v[134:135], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[118:119], v[136:137], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[120:121], v[136:137], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[118:119], v[138:139], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[120:121], v[138:139], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[118:119], v[140:141], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[120:121], v[140:141], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[122:123], v[142:143], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[124:125], v[142:143], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[122:123], v[144:145], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[124:125], v[144:145], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[122:123], v[146:147], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[124:125], v[146:147], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[122:123], v[148:149], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[124:125], v[148:149], v[1:8] neg_lo:[1,1,0]
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v40, v8
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v38, v8
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v36, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v34, v8
	v_mov_b32_e32 v33, v8
	v_mov_b32_e32 v56, v8
	v_mov_b32_e32 v55, v8
	v_mov_b32_e32 v54, v8
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v52, v8
	v_mov_b32_e32 v51, v8
	v_mov_b32_e32 v50, v8
	v_mov_b32_e32 v49, v8
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v57, v8
	v_mov_b32_e32 v48, v8
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v46, v8
	v_mov_b32_e32 v45, v8
	v_mov_b32_e32 v44, v8
	v_mov_b32_e32 v43, v8
	v_mov_b32_e32 v42, v8
	v_mov_b32_e32 v41, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1314 27 is_stmt 1             ; ragged.py:1314:27
	s_add_i32 s3, s33, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s4, s3, 31
	s_add_i32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s20, s3, 1
	.loc	1 1375 20 is_stmt 1             ; ragged.py:1375:20
	s_cmp_lt_i32 s9, s20
	.loc	1 1375 17 is_stmt 0             ; ragged.py:1375:17
	s_cbranch_scc1 .LBB0_7
; %bb.5:                                ; %._crit_edge._crit_edge
	.loc	1 1415 17 is_stmt 1             ; ragged.py:1415:17
	v_lshlrev_b32_e32 v68, 1, v0
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s30, s28, s2
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_lshl_b32 s31, s25, 4
	v_lshrrev_b32_e32 v67, 1, v100
	s_cbranch_execz .LBB0_8
; %bb.6:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	v_mov_b32_e32 v96, v68
	s_branch .LBB0_9
.LBB0_7:
                                        ; implicit-def: $sgpr30
                                        ; implicit-def: $vgpr68
                                        ; implicit-def: $sgpr31
	v_lshrrev_b32_e32 v67, 1, v100
.LBB0_8:
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	s_or_b32 s3, s9, 1
	s_or_b32 s4, s9, 2
	s_or_b32 s5, s9, 3
	s_or_b32 s6, s9, 4
	s_or_b32 s7, s9, 5
	s_or_b32 s21, s9, 6
	s_or_b32 s22, s9, 7
	s_or_b32 s23, s9, 8
	s_or_b32 s30, s9, 9
	s_or_b32 s31, s9, 10
	s_or_b32 s46, s9, 11
	s_or_b32 s47, s9, 12
	s_or_b32 s49, s9, 13
	s_or_b32 s51, s9, 14
	s_or_b32 s53, s9, 15
	s_or_b32 s55, s9, 16
	s_or_b32 s57, s9, 17
	s_or_b32 s59, s9, 18
	s_or_b32 s62, s9, 19
	s_or_b32 s63, s9, 20
	s_or_b32 s64, s9, 21
	s_or_b32 s65, s9, 22
	s_or_b32 s66, s9, 23
	s_or_b32 s67, s9, 24
	s_or_b32 s70, s9, 25
	s_or_b32 s73, s9, 26
	s_or_b32 s76, s9, 27
	s_or_b32 s79, s9, 28
	s_or_b32 s80, s9, 29
	s_or_b32 s81, s9, 30
	s_or_b32 s97, s9, 31
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cmp_lt_i32 s3, s20
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mul_lo_u32 v76, s8, v99
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s4, s20
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v68, s9, v66
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s5, s20
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v70, s4, v66
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s6, s20
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v69, s3, v66
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s7, s20
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v71, s5, v66
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s21, s20
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v72, s6, v66
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s22, s20
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v73, s7, v66
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s23, s20
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v74, s21, v66
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s30, s20
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v75, s22, v66
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s31, s20
	v_cmp_gt_i32_e32 vcc_lo, s20, v68
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s46, s20
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s98, s25, 14
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s47, s20
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s100, s25, 18
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s49, s20
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s99, s25, 15
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s51, s20
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s53, s20
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s55, s20
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s57, s20
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s59, s20
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s62, s20
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s63, s20
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s64, s20
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s65, s20
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s66, s20
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s67, s20
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s70, s20
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s73, s20
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s76, s20
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s79, s20
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s80, s20
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s81, s20
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s97, s20
	s_cselect_b32 s48, -1, 0
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_and_b32 s33, s33, 0x80000001
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cmp_eq_u32 s33, 1
	s_cselect_b32 s33, -1, 0
	.loc	1 1386 63 is_stmt 0             ; ragged.py:1386:63
	s_add_i32 s34, s20, -1
	.loc	1 1386 56                       ; ragged.py:1386:56
	s_cmp_eq_u32 s9, s34
	s_cselect_b32 s35, -1, 0
	s_cmp_eq_u32 s3, s34
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s3, s20, v70
	.loc	1 1386 56                       ; ragged.py:1386:56
	s_cselect_b32 s36, -1, 0
	s_cmp_eq_u32 s4, s34
	s_cselect_b32 s37, -1, 0
	s_cmp_eq_u32 s5, s34
	s_cselect_b32 s38, -1, 0
	s_cmp_eq_u32 s6, s34
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s6, s20, v73
	.loc	1 1386 56                       ; ragged.py:1386:56
	s_cselect_b32 s39, -1, 0
	s_cmp_eq_u32 s7, s34
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s7, s20, v74
	.loc	1 1386 56                       ; ragged.py:1386:56
	s_cselect_b32 s40, -1, 0
	s_cmp_eq_u32 s21, s34
	s_cselect_b32 s41, -1, 0
	s_cmp_eq_u32 s22, s34
	s_mov_b32 s22, 0x7ffffffe
	s_cselect_b32 s42, -1, 0
	s_cmp_eq_u32 s23, s34
	s_mov_b32 s23, 0x31027000
	s_cselect_b32 s43, -1, 0
	s_cmp_eq_u32 s30, s34
	s_cselect_b32 s44, -1, 0
	s_cmp_eq_u32 s31, s34
	s_cselect_b32 s45, -1, 0
	s_cmp_eq_u32 s46, s34
	s_cselect_b32 s46, -1, 0
	s_cmp_eq_u32 s47, s34
	s_cselect_b32 s47, -1, 0
	s_cmp_eq_u32 s49, s34
	s_cselect_b32 s49, -1, 0
	s_cmp_eq_u32 s51, s34
	s_cselect_b32 s51, -1, 0
	s_cmp_eq_u32 s53, s34
	s_cselect_b32 s53, -1, 0
	s_cmp_eq_u32 s55, s34
	s_cselect_b32 s55, -1, 0
	s_cmp_eq_u32 s57, s34
	s_cselect_b32 s57, -1, 0
	s_cmp_eq_u32 s59, s34
	s_cselect_b32 s59, -1, 0
	s_cmp_eq_u32 s62, s34
	s_cselect_b32 s62, -1, 0
	s_cmp_eq_u32 s63, s34
	s_cselect_b32 s63, -1, 0
	s_cmp_eq_u32 s64, s34
	s_cselect_b32 s64, -1, 0
	s_cmp_eq_u32 s65, s34
	s_cselect_b32 s65, -1, 0
	s_cmp_eq_u32 s66, s34
	s_cselect_b32 s66, -1, 0
	s_cmp_eq_u32 s67, s34
	s_cselect_b32 s67, -1, 0
	s_cmp_eq_u32 s70, s34
	s_cselect_b32 s70, -1, 0
	s_cmp_eq_u32 s73, s34
	s_cselect_b32 s73, -1, 0
	s_cmp_eq_u32 s76, s34
	s_cselect_b32 s76, -1, 0
	s_cmp_eq_u32 s79, s34
	s_cselect_b32 s79, -1, 0
	s_cmp_eq_u32 s80, s34
	s_cselect_b32 s80, -1, 0
	s_cmp_eq_u32 s81, s34
	s_cselect_b32 s81, -1, 0
	s_cmp_eq_u32 s97, s34
	s_cselect_b32 s97, -1, 0
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s30, s28, s2
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s2, s20, v69
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_mul_i32 s4, s30, s8
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, vcc_lo
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s5, s9, s4
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_add_i32 s9, s9, s29
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add3_u32 v66, s5, v76, v66
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s9, s9, s25
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s4, s20, v71
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v101, s9, s25, v65
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s5, s20, v72
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v77, 2, v66
	v_add_nc_u32_e32 v76, 1, v66
	v_add_nc_u32_e32 v81, 6, v66
	v_add_nc_u32_e32 v80, 5, v66
	v_add_nc_u32_e32 v79, 4, v66
	v_add_nc_u32_e32 v78, 3, v66
	v_add_nc_u32_e32 v82, 7, v66
	.loc	1 1387 34 is_stmt 0             ; ragged.py:1387:34
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s2
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s8, s20, v75
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s3
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_and_b32 s21, s13, 0xffff
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s4
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_mov_b32 s20, s12
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s5
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_mul_i32 s12, s25, 10
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s6
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_mul_i32 s2, s25, 3
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s7
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	v_add3_u32 v84, s9, s12, v65
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v81, 0x80000000, v81, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s8
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_lshl_b32 s1, s25, 1
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	s_clause 0x7
	buffer_load_u8 v83, v66, s[20:23], 0 offen
	buffer_load_u8 v86, v76, s[20:23], 0 offen
	buffer_load_u8 v87, v77, s[20:23], 0 offen
	buffer_load_u8 v88, v78, s[20:23], 0 offen
	buffer_load_u8 v89, v79, s[20:23], 0 offen
	buffer_load_u8 v90, v80, s[20:23], 0 offen
	buffer_load_u8 v91, v81, s[20:23], 0 offen
	buffer_load_u8 v92, v82, s[20:23], 0 offen
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v66, s9, s1, v65
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s96
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_lshl_b32 s3, s25, 2
	v_add3_u32 v76, s9, s2, v65
	s_mul_i32 s20, s25, 12
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s95
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s4, s25, 5
	v_add3_u32 v77, s9, s3, v65
	v_add3_u32 v93, s9, s20, v65
	v_add_nc_u32_e32 v100, s9, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s94
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s5, s25, 6
	v_add3_u32 v78, s9, s4, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s93
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s6, s25, 7
	v_add3_u32 v79, s9, s5, v65
	s_mul_i32 s21, s25, 13
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s92
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v80, s9, s6, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v100, 0x80000000, v100, s0
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s20, s25, 29
	v_add3_u32 v94, s9, s21, v65
	s_mul_i32 s21, s25, 30
	v_add3_u32 v99, s9, s98, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s91
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v116, s9, s20, v65
	v_add3_u32 v117, s9, s21, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s90
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v105, s9, s100, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	s_clause 0x7
	buffer_load_u8 v100, v100, s[20:23], 0 offen
	buffer_load_u8 v101, v101, s[20:23], 0 offen
	buffer_load_u8 v118, v66, s[20:23], 0 offen
	buffer_load_u8 v119, v76, s[20:23], 0 offen
	buffer_load_u8 v120, v77, s[20:23], 0 offen
	buffer_load_u8 v121, v78, s[20:23], 0 offen
	buffer_load_u8 v122, v79, s[20:23], 0 offen
	buffer_load_u8 v123, v80, s[20:23], 0 offen
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_lshl_b32 s7, s25, 3
	s_mul_i32 s8, s25, 9
	v_add3_u32 v81, s9, s7, v65
	v_add3_u32 v82, s9, s8, v65
	s_mul_i32 s2, s25, 20
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s88
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s13, s25, 11
	s_mul_i32 s4, s25, 22
	v_add3_u32 v107, s9, s2, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v66, 0x80000000, v81, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s89
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v85, s9, s13, v65
	v_add3_u32 v109, s9, s4, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v76, 0x80000000, v82, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s87
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s13, s25, 28
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v77, 0x80000000, v84, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s86
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v115, s9, s13, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v78, 0x80000000, v85, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s85
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s8, s25, 26
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v79, 0x80000000, v93, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s84
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_lshl_b32 s31, s25, 4
	v_add3_u32 v102, s9, s99, v65
	v_add3_u32 v113, s9, s8, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v80, 0x80000000, v94, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s83
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s29, s25, 17
	v_add3_u32 v103, s9, s31, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v81, 0x80000000, v99, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s82
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v104, s9, s29, v65
	s_mul_i32 s1, s25, 19
	s_mul_i32 s3, s25, 21
	s_mul_i32 s5, s25, 23
	s_mul_i32 s6, s25, 24
	s_mul_i32 s7, s25, 25
	s_mul_i32 s12, s25, 27
	s_mul_i32 s98, s25, 31
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v82, 0x80000000, v102, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s77
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v106, s9, s1, v65
	v_add3_u32 v108, s9, s3, v65
	v_add3_u32 v110, s9, s5, v65
	v_add3_u32 v111, s9, s6, v65
	v_add3_u32 v112, s9, s7, v65
	v_add3_u32 v114, s9, s12, v65
	v_add3_u32 v65, s9, s98, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x7
	buffer_load_u8 v99, v66, s[20:23], 0 offen
	buffer_load_u8 v102, v76, s[20:23], 0 offen
	buffer_load_u8 v124, v77, s[20:23], 0 offen
	buffer_load_u8 v125, v78, s[20:23], 0 offen
	buffer_load_u8 v126, v79, s[20:23], 0 offen
	buffer_load_u8 v127, v80, s[20:23], 0 offen
	buffer_load_u8 v128, v81, s[20:23], 0 offen
	buffer_load_u8 v129, v82, s[20:23], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v103, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s78
	.loc	1 1386 56 is_stmt 1             ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s3, s34, v71
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v76, 0x80000000, v104, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s75
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s13, s33, s37
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v77, 0x80000000, v105, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s74
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s14, s33, s38
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v78, 0x80000000, v106, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s72
	.loc	1 1386 56 is_stmt 1             ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s5, s34, v73
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v79, 0x80000000, v107, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s71
	.loc	1 1386 56 is_stmt 1             ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s7, s34, v75
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v80, 0x80000000, v108, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s69
	.loc	1 1386 56 is_stmt 1             ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s1, s34, v69
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v81, 0x80000000, v109, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s68
	.loc	1 1386 56 is_stmt 1             ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s2, s34, v70
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v82, 0x80000000, v110, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s60
	.loc	1 1386 56 is_stmt 1             ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s4, s34, v72
	v_cmp_eq_u32_e64 s6, s34, v74
	.loc	1 1386 32 is_stmt 0             ; ragged.py:1386:32
	s_and_b32 s3, s33, s3
	s_and_b32 s5, s33, s5
	s_and_b32 s7, s33, s7
	s_and_b32 s1, s33, s1
	s_and_b32 s2, s33, s2
	s_and_b32 s4, s33, s4
	s_and_b32 s6, s33, s6
	s_and_b32 s9, s33, s35
	s_and_b32 s12, s33, s36
	s_and_b32 s15, s33, s39
	s_and_b32 s29, s33, s44
	s_and_b32 s44, s33, s63
	s_and_b32 s35, s33, s46
	s_and_b32 s36, s33, s47
	s_and_b32 s37, s33, s49
	s_and_b32 s38, s33, s51
	s_and_b32 s39, s33, s53
	s_and_b32 s46, s33, s65
	s_and_b32 s47, s33, s66
	s_and_b32 s49, s33, s70
	s_and_b32 s51, s33, s76
	s_and_b32 s53, s33, s80
	.loc	1 1389 62 is_stmt 1             ; ragged.py:1389:62
	s_waitcnt vmcnt(17)
	v_and_b16 v69.l, v91.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v69.h, v92.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1389 34 is_stmt 0             ; ragged.py:1389:34
	v_cndmask_b16 v69.l, v91.l, v69.l, s6
	v_cndmask_b16 v69.h, v92.l, v69.h, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v69.h, 8, v69.h
	v_or_b16 v69.h, v69.l, v69.h
	.loc	1 1390 62 is_stmt 1             ; ragged.py:1390:62
	s_waitcnt vmcnt(15)
	v_and_b16 v70.l, v100.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v70.h, v101.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v71.l, v118.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v71.h, v119.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v72.l, v120.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v72.h, v121.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v92.l, v100.l, v70.l, s9
	v_cndmask_b16 v93.l, v118.l, v71.l, s13
	v_cndmask_b16 v93.h, v119.l, v71.h, s14
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_and_b32_e32 v71, 24, v96
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x7
	buffer_load_u8 v103, v66, s[20:23], 0 offen
	buffer_load_u8 v104, v76, s[20:23], 0 offen
	buffer_load_u8 v130, v77, s[20:23], 0 offen
	buffer_load_u8 v131, v78, s[20:23], 0 offen
	buffer_load_u8 v132, v79, s[20:23], 0 offen
	buffer_load_u8 v133, v80, s[20:23], 0 offen
	buffer_load_u8 v134, v81, s[20:23], 0 offen
	buffer_load_u8 v135, v82, s[20:23], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v111, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s61
	.loc	1 1390 34 is_stmt 1             ; ragged.py:1390:34
	v_cndmask_b16 v92.h, v101.l, v70.h, s12
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v76, 0x80000000, v112, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s58
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_dual_cndmask_b32 v77, 0x80000000, v113 :: v_dual_and_b32 v70, 24, v98
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s56
	.loc	1 1390 62 is_stmt 1             ; ragged.py:1390:62
	s_waitcnt vmcnt(17)
	v_and_b16 v73.l, v122.l, 15
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v78, 0x80000000, v114, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s54
	.loc	1 1390 62 is_stmt 1             ; ragged.py:1390:62
	s_waitcnt vmcnt(16)
	v_and_b16 v73.h, v123.l, 15
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v79, 0x80000000, v115, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s52
	.loc	1 1390 34 is_stmt 1             ; ragged.py:1390:34
	v_cndmask_b16 v94.l, v120.l, v72.l, s15
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v80, 0x80000000, v116, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s50
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_xad_u32 v70, v97, v70, 0
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v81, 0x80000000, v117, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s48
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_dual_cndmask_b32 v65, 0x80000000, v65 :: v_dual_add_nc_u32 v118, 0, v0
	s_clause 0x7
	buffer_load_u8 v114, v66, s[20:23], 0 offen
	buffer_load_u8 v115, v76, s[20:23], 0 offen
	buffer_load_u8 v116, v77, s[20:23], 0 offen
	buffer_load_u8 v117, v78, s[20:23], 0 offen
	buffer_load_u8 v136, v79, s[20:23], 0 offen
	buffer_load_u8 v137, v80, s[20:23], 0 offen
	buffer_load_u8 v138, v81, s[20:23], 0 offen
	buffer_load_u8 v139, v65, s[20:23], 0 offen
	.loc	1 1386 56 is_stmt 1             ; ragged.py:1386:56
	v_cmp_eq_u32_e32 vcc_lo, s34, v68
	.loc	1 1389 62                       ; ragged.py:1389:62
	v_and_b16 v66.h, v88.l, 15
	v_and_b16 v68.h, v90.l, 15
	v_and_b16 v65.h, v86.l, 15
	v_and_b16 v66.l, v87.l, 15
	v_and_b16 v68.l, v89.l, 15
	.loc	1 1389 34 is_stmt 0             ; ragged.py:1389:34
	v_cndmask_b16 v66.h, v88.l, v66.h, s3
	v_cndmask_b16 v68.h, v90.l, v68.h, s5
	.loc	1 1389 62                       ; ragged.py:1389:62
	v_and_b16 v65.l, v83.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v65.h, v86.l, v65.h, s1
	v_cndmask_b16 v66.l, v87.l, v66.l, s2
	v_cndmask_b16 v68.l, v89.l, v68.l, s4
	v_lshlrev_b16 v68.h, 8, v68.h
	v_lshlrev_b16 v66.h, 8, v66.h
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s8, s33, vcc_lo
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_lshlrev_b16 v65.h, 8, v65.h
	v_cndmask_b16 v65.l, v83.l, v65.l, s8
	v_or_b16 v69.l, v68.l, v68.h
	v_or_b16 v68.h, v66.l, v66.h
	v_lshl_or_b32 v66, v95, 5, v71
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s20, s33, s40
	s_and_b32 s34, s33, s45
	s_and_b32 s45, s33, s64
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(23)
	v_and_b16 v74.l, v99.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v74.h, v102.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v75.l, v124.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v75.h, v125.l, 15
	s_waitcnt vmcnt(19)
	v_and_b16 v76.l, v126.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v76.h, v127.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v77.l, v128.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v77.h, v129.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v94.h, v121.l, v72.h, s20
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_or_b16 v68.l, v65.l, v65.h
	v_add_nc_u32_e32 v72, 0, v66
	v_xad_u32 v88, v66, 16, 0
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s21, s33, s41
	s_and_b32 s22, s33, s42
	s_and_b32 s23, s33, s43
	s_and_b32 s40, s33, s55
	s_and_b32 s41, s33, s57
	s_and_b32 s42, s33, s59
	s_and_b32 s43, s33, s62
	s_and_b32 s48, s33, s67
	s_and_b32 s50, s33, s73
	s_and_b32 s52, s33, s79
	s_and_b32 s54, s33, s81
	s_and_b32 s33, s33, s97
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v105.l, v122.l, v73.l, s21
	v_cndmask_b16 v105.h, v123.l, v73.h, s22
	v_cndmask_b16 v106.l, v99.l, v74.l, s23
	v_cndmask_b16 v106.h, v102.l, v74.h, s29
	v_cndmask_b16 v107.l, v124.l, v75.l, s34
	v_cndmask_b16 v107.h, v125.l, v75.h, s35
	v_cndmask_b16 v108.l, v126.l, v76.l, s36
	v_cndmask_b16 v108.h, v127.l, v76.h, s37
	v_cndmask_b16 v109.l, v128.l, v77.l, s38
	v_cndmask_b16 v109.h, v129.l, v77.h, s39
	.loc	1 1389 34                       ; ragged.py:1389:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v70, v[68:69]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[68:71], v72 offset1:1
	ds_load_2addr_stride64_b64 v[72:75], v72 offset0:2 offset1:3
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(15)
	v_and_b16 v78.l, v103.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v78.h, v104.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v79.l, v130.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v79.h, v131.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v80.l, v132.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v80.h, v133.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v81.l, v134.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v81.h, v135.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v110.l, v103.l, v78.l, s40
	v_cndmask_b16 v112.l, v132.l, v80.l, s44
	v_cndmask_b16 v112.h, v133.l, v80.h, s45
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_xad_u32 v80, v66, 8, 0
	v_xad_u32 v66, v66, 24, 0
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v110.h, v104.l, v78.h, s41
	v_cndmask_b16 v111.l, v130.l, v79.l, s42
	v_cndmask_b16 v111.h, v131.l, v79.h, s43
	v_cndmask_b16 v113.l, v134.l, v81.l, s46
	v_cndmask_b16 v113.h, v135.l, v81.h, s47
	.loc	1 1389 34                       ; ragged.py:1389:34
	ds_load_2addr_stride64_b64 v[97:100], v66 offset1:1
	ds_load_2addr_stride64_b64 v[101:104], v66 offset0:2 offset1:3
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(7)
	v_and_b16 v82.l, v114.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v82.h, v115.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v83.l, v116.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v83.h, v117.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v84.l, v136.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v84.h, v137.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v85.l, v138.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v85.h, v139.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v114.l, v114.l, v82.l, s48
	v_cndmask_b16 v114.h, v115.l, v82.h, s49
	v_cndmask_b16 v115.l, v116.l, v83.l, s50
	v_cndmask_b16 v115.h, v117.l, v83.h, s51
	v_cndmask_b16 v116.l, v136.l, v84.l, s52
	v_cndmask_b16 v116.h, v137.l, v84.h, s53
	v_cndmask_b16 v117.l, v138.l, v85.l, s54
	v_cndmask_b16 v65.l, v139.l, v85.h, s33
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	ds_load_2addr_stride64_b64 v[76:79], v80 offset1:1
	ds_load_2addr_stride64_b64 v[80:83], v80 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[84:87], v88 offset1:1
	ds_load_2addr_stride64_b64 v[88:91], v88 offset0:2 offset1:3
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v118, v92
	ds_store_b8_d16_hi v118, v92 offset:256
	ds_store_b8 v118, v93 offset:512
	ds_store_b8_d16_hi v118, v93 offset:768
	ds_store_b8 v118, v94 offset:1024
	ds_store_b8_d16_hi v118, v94 offset:1280
	ds_store_b8 v118, v105 offset:1536
	ds_store_b8_d16_hi v118, v105 offset:1792
	ds_store_b8 v118, v106 offset:2048
	ds_store_b8_d16_hi v118, v106 offset:2304
	ds_store_b8 v118, v107 offset:2560
	ds_store_b8_d16_hi v118, v107 offset:2816
	ds_store_b8 v118, v108 offset:3072
	ds_store_b8_d16_hi v118, v108 offset:3328
	ds_store_b8 v118, v109 offset:3584
	ds_store_b8_d16_hi v118, v109 offset:3840
	ds_store_b8 v118, v110 offset:4096
	ds_store_b8_d16_hi v118, v110 offset:4352
	ds_store_b8 v118, v111 offset:4608
	ds_store_b8_d16_hi v118, v111 offset:4864
	ds_store_b8 v118, v112 offset:5120
	ds_store_b8_d16_hi v118, v112 offset:5376
	ds_store_b8 v118, v113 offset:5632
	ds_store_b8_d16_hi v118, v113 offset:5888
	v_add3_u32 v94, 0, v67, v95
	ds_store_b8 v118, v114 offset:6144
	ds_store_b8_d16_hi v118, v114 offset:6400
	ds_store_b8 v118, v115 offset:6656
	ds_store_b8_d16_hi v118, v115 offset:6912
	ds_store_b8 v118, v116 offset:7168
	ds_store_b8_d16_hi v118, v116 offset:7424
	ds_store_b8 v118, v117 offset:7680
	ds_store_b8 v118, v65 offset:7936
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v65, v94 offset:1280
	ds_load_u8 v66, v94 offset:1024
	ds_load_u8 v92, v94 offset:1792
	ds_load_u8 v93, v94 offset:1536
	ds_load_u8 v105, v94 offset:256
	ds_load_u8 v106, v94
	ds_load_u8 v107, v94 offset:768
	ds_load_u8 v108, v94 offset:512
	ds_load_u8 v109, v94 offset:1920
	ds_load_u8 v110, v94 offset:1664
	ds_load_u8 v111, v94 offset:1408
	ds_load_u8 v112, v94 offset:1152
	ds_load_u8 v121, v94 offset:3968
	ds_load_u8 v122, v94 offset:3712
	ds_load_u8 v123, v94 offset:3456
	ds_load_u8 v124, v94 offset:3200
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v66, v93, v92, 0xc0c0004
	ds_load_u8 v92, v94 offset:3328
	ds_load_u8 v93, v94 offset:3072
	ds_load_u8 v113, v94 offset:3840
	ds_load_u8 v114, v94 offset:3584
	ds_load_u8 v115, v94 offset:896
	ds_load_u8 v116, v94 offset:640
	ds_load_u8 v117, v94 offset:384
	ds_load_u8 v118, v94 offset:128
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v106, v108, v107, 0xc0c0004
	ds_load_u8 v107, v94 offset:2304
	ds_load_u8 v108, v94 offset:2048
	ds_load_u8 v119, v94 offset:2816
	ds_load_u8 v120, v94 offset:2560
	v_lshl_or_b32 v66, v66, 16, v65
	v_lshl_or_b32 v65, v106, 16, v105
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[68:69], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[65:66], v[70:71], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v93, v114, v113, 0xc0c0004
	ds_load_u8 v105, v94 offset:5376
	ds_load_u8 v106, v94 offset:5120
	ds_load_u8 v113, v94 offset:5888
	ds_load_u8 v114, v94 offset:5632
	ds_load_u8 v125, v94 offset:2944
	ds_load_u8 v126, v94 offset:2688
	ds_load_u8 v127, v94 offset:2432
	ds_load_u8 v128, v94 offset:2176
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[72:73], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[74:75], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v93, v93, 16, v92
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v108, v120, v119, 0xc0c0004
	ds_load_u8 v119, v94 offset:4352
	ds_load_u8 v120, v94 offset:4096
	ds_load_u8 v129, v94 offset:4864
	ds_load_u8 v130, v94 offset:4608
	v_lshl_or_b32 v92, v108, 16, v107
	ds_load_u8 v107, v94 offset:7424
	ds_load_u8 v108, v94 offset:7168
	ds_load_u8 v131, v94 offset:7936
	ds_load_u8 v132, v94 offset:7680
	ds_load_u8 v133, v94 offset:6016
	ds_load_u8 v134, v94 offset:5760
	ds_load_u8 v135, v94 offset:5504
	ds_load_u8 v136, v94 offset:5248
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v106, v114, v113, 0xc0c0004
	ds_load_u8 v113, v94 offset:4992
	ds_load_u8 v114, v94 offset:4736
	ds_load_u8 v137, v94 offset:4480
	ds_load_u8 v138, v94 offset:4224
	v_wmma_i32_16x16x16_iu4 v[41:48], v[92:93], v[76:77], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[92:93], v[78:79], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[92:93], v[80:81], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v106, 16, v105
	v_wmma_i32_16x16x16_iu4 v[9:16], v[92:93], v[82:83], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v139, v108, v107, 0xc0c0004
	v_perm_b32 v120, v130, v129, 0xc0c0004
	v_perm_b32 v107, v112, v111, 0xc0c0004
	v_perm_b32 v108, v110, v109, 0xc0c0004
	v_perm_b32 v109, v118, v117, 0xc0c0004
	v_perm_b32 v110, v116, v115, 0xc0c0004
	v_lshl_or_b32 v105, v120, 16, v119
	ds_load_u8 v119, v94 offset:8064
	ds_load_u8 v120, v94 offset:7808
	ds_load_u8 v129, v94 offset:7552
	ds_load_u8 v130, v94 offset:7296
	ds_load_u8 v111, v94 offset:6400
	ds_load_u8 v112, v94 offset:6144
	ds_load_u8 v115, v94 offset:6912
	ds_load_u8 v116, v94 offset:6656
	v_perm_b32 v117, v122, v121, 0xc0c0004
	ds_load_u8 v118, v94 offset:7040
	ds_load_u8 v121, v94 offset:6784
	ds_load_u8 v122, v94 offset:6528
	ds_load_u8 v94, v94 offset:6272
	v_lshl_or_b32 v108, v108, 16, v107
	v_lshl_or_b32 v107, v110, 16, v109
	v_perm_b32 v109, v124, v123, 0xc0c0004
	v_perm_b32 v123, v128, v127, 0xc0c0004
	v_perm_b32 v124, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[107:108], v[68:69], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v69, v117, 16, v109
	v_perm_b32 v109, v136, v135, 0xc0c0004
	v_lshl_or_b32 v68, v124, 16, v123
	v_perm_b32 v117, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v123, v138, v137, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[107:108], v[70:71], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[107:108], v[72:73], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[107:108], v[74:75], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v131, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v112, v116, v115, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[68:69], v[76:77], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v117, 16, v109
	v_lshl_or_b32 v76, v113, 16, v123
	v_perm_b32 v113, v130, v129, 0xc0c0004
	v_perm_b32 v114, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v94, v122, 0xc0c0004
	v_perm_b32 v115, v121, v118, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[68:69], v[78:79], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[68:69], v[80:81], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[68:69], v[82:83], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[105:106], v[84:85], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v110, v131, 16, v139
	v_lshl_or_b32 v109, v112, 16, v111
	v_wmma_i32_16x16x16_iu4 v[57:64], v[76:77], v[84:85], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v85, v114, 16, v113
	v_lshl_or_b32 v84, v115, 16, v94
	v_wmma_i32_16x16x16_iu4 v[49:56], v[105:106], v[86:87], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[76:77], v[86:87], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[105:106], v[88:89], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[76:77], v[88:89], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[105:106], v[90:91], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[76:77], v[90:91], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[109:110], v[97:98], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[84:85], v[97:98], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[109:110], v[99:100], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[84:85], v[99:100], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[109:110], v[101:102], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[84:85], v[101:102], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[109:110], v[103:104], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[84:85], v[103:104], v[1:8] neg_lo:[1,1,0]
.LBB0_9:
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v65, s28, v95
	.loc	1 1404 21                       ; ragged.py:1404:21
	v_add_lshl_u32 v66, s30, v95, 1
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v70, 16, v65
	v_or_b32_e32 v69, 32, v65
	v_or_b32_e32 v68, 48, v65
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s3, s24, v65
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v71, 32, v66
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s2, s24, v70
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v72, 64, v66
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s24, v69
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v65, 0x80000000, v66, s3
	v_add_nc_u32_e32 v66, 0x60, v66
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s24, v68
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v70, 0x80000000, v71, s2
	.loc	1 1411 33                       ; ragged.py:1411:33
	s_mul_i32 s4, s26, s25
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v69, 0x80000000, v72, s1
	s_and_b32 s21, s17, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s16
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s4, s27, s4
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v80, v1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshlrev_b32_e32 v1, 5, v0
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_clause 0x3
	buffer_load_u16 v65, v65, s[20:23], 0 offen
	buffer_load_u16 v68, v70, s[20:23], 0 offen
	buffer_load_u16 v69, v69, s[20:23], 0 offen
	buffer_load_u16 v66, v66, s[20:23], 0 offen
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v70, s4, v0, 1
	s_and_b32 s21, s19, 0xffff
	s_mov_b32 s20, s18
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v71, 4, v0
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v70, 0x80000000, v70, s0
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v0, 0xf0, v0
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v81, v2
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_or_b32 v67, v71, 1, v67
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v2, s25, v95
	.loc	1 1410 36                       ; ragged.py:1410:36
	buffer_load_u16 v70, v70, s[20:23], 0 offen
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v74, v11
	v_cvt_f32_i32_e32 v75, v12
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v11, 28, v96
	v_and_b32_e32 v1, 32, v1
	v_lshl_add_u32 v12, v0, 2, 0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v94, 2, v67
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s0, s30, s25
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v93, 4, v67
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v76, v13
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v13, s27, v67
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v73, v10
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v10, s0, s27, v2
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v92, 6, v67
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_add3_u32 v11, v12, v1, v11
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v107, s27, v94
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v91, 8, v67
	.loc	1 1401 19 is_stmt 1             ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v85, v6
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v6, 0x86, v67
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v106, s27, v93
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v90, 10, v67
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s7, s25, v13
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v86, v7
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v71, v0, 1, 0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v7, 0x84, v67
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[0:1], null, s25, 48, v[10:11]
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v105, s27, v92
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v89, 12, v67
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_add_lshl_u32 v1, v10, v67, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s18, s25, v107
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v87, v8
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v8, 0x82, v67
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v104, s27, v91
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v88, 14, v67
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v97, s27, v6
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_add_lshl_u32 v13, v10, v94, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s17, s25, v106
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v72, v9
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v9, 0x80, v67
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v103, s27, v90
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s19, s3, s7
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v98, s27, v7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v108, v10, v93, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s16, s25, v105
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v102, s27, v89
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s18
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v99, s27, v8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v109, v10, v92, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s15, s25, v104
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v101, s27, v88
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s25, v97
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v97, 0x80000000, v13, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s17
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v100, s27, v9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v110, v10, v91, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s14, s25, v103
	v_cmp_gt_i32_e64 s9, s25, v98
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v98, 0x80000000, v108, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v111, v10, v90, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s25, v102
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_mov_b32 s20, s10
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s10, s25, v99
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v99, 0x80000000, v109, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s15
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v84, v5
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v5, 0x88, v67
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v112, v10, v89, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s25, v101
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_and_b32 s21, s11, 0xffff
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s11, s25, v100
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v100, 0x80000000, v110, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s14
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v83, v4
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v4, 0x8a, v67
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v113, v10, v88, 2
	v_cndmask_b32_e64 v101, 0x80000000, v111, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s13
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v82, v3
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v2, 0x8e, v67
	v_or_b32_e32 v3, 0x8c, v67
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v114, v10, v9, 2
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v79, v16
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v16, s27, v5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v102, 0x80000000, v112, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v115, v10, v8, 2
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v78, v15
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v15, s27, v4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v103, 0x80000000, v113, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v116, v10, v7, 2
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v77, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v12, s27, v2
	v_or_b32_e32 v14, s27, v3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v104, 0x80000000, v114, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v117, v10, v6, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s6, s25, v16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v105, 0x80000000, v115, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v118, v10, v5, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s5, s25, v15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v106, 0x80000000, v116, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v119, v10, v4, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s25, v12
	v_cmp_gt_i32_e64 s4, s25, v14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v107, 0x80000000, v117, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s6
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v96, s25, 5, v10
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add_lshl_u32 v120, v10, v3, 2
	v_cndmask_b32_e64 v108, 0x80000000, v118, s19
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s19, s3, s5
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v109, 0x80000000, v119, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s4
	s_and_b32 s3, s3, s0
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
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
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v110, 0x80000000, v120, s19
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v12, 16, v65
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add_nc_u32_e32 v95, s31, v10
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add_lshl_u32 v10, v10, v2, 2
	.loc	1 1403 36 is_stmt 1             ; ragged.py:1403:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v13, 16, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v65, 0x80000000, v10, s3
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v27, v27, v13 :: v_dual_lshlrev_b32 v10, 16, v68
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s7
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v51, v51, v10
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v45, v45, v12 :: v_dual_lshlrev_b32 v66, 16, v66
	v_mul_f32_e32 v41, v41, v12
	v_mul_f32_e32 v42, v42, v12
	v_mul_f32_e32 v43, v43, v12
	v_mul_f32_e32 v44, v44, v12
	v_mul_f32_e32 v46, v46, v12
	v_mul_f32_e32 v47, v47, v12
	v_mul_f32_e32 v48, v48, v12
	v_dual_mul_f32 v57, v57, v12 :: v_dual_mul_f32 v52, v52, v10
	v_dual_mul_f32 v58, v58, v12 :: v_dual_mul_f32 v53, v53, v10
	v_dual_mul_f32 v59, v59, v12 :: v_dual_mul_f32 v54, v54, v10
	v_dual_mul_f32 v60, v60, v12 :: v_dual_mul_f32 v55, v55, v10
	v_dual_mul_f32 v61, v61, v12 :: v_dual_mul_f32 v56, v56, v10
	v_dual_mul_f32 v62, v62, v12 :: v_dual_mul_f32 v33, v33, v10
	v_dual_mul_f32 v63, v63, v12 :: v_dual_mul_f32 v34, v34, v10
	v_dual_mul_f32 v64, v64, v12 :: v_dual_mul_f32 v35, v35, v10
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v12, 16, v70
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v49, v49, v10
	v_mul_f32_e32 v50, v50, v10
	v_dual_mul_f32 v36, v36, v10 :: v_dual_mul_f32 v29, v29, v13
	v_dual_mul_f32 v37, v37, v10 :: v_dual_mul_f32 v26, v26, v13
	v_dual_mul_f32 v38, v38, v10 :: v_dual_mul_f32 v31, v31, v13
	v_dual_mul_f32 v39, v39, v10 :: v_dual_mul_f32 v68, v25, v13
	v_dual_mul_f32 v40, v40, v10 :: v_dual_mul_f32 v69, v17, v13
	v_dual_mul_f32 v28, v28, v13 :: v_dual_mul_f32 v73, v73, v66
	v_dual_mul_f32 v30, v30, v13 :: v_dual_mul_f32 v75, v75, v66
	v_dual_mul_f32 v32, v32, v13 :: v_dual_mul_f32 v77, v77, v66
	v_dual_mul_f32 v70, v18, v13 :: v_dual_mul_f32 v79, v79, v66
	v_dual_mul_f32 v111, v19, v13 :: v_dual_mul_f32 v72, v72, v66
	v_mul_f32_e32 v112, v20, v13
	v_dual_mul_f32 v113, v21, v13 :: v_dual_mul_f32 v74, v74, v66
	v_mul_f32_e32 v114, v22, v13
	v_dual_mul_f32 v115, v23, v13 :: v_dual_mul_f32 v76, v76, v66
	v_mul_f32_e32 v116, v24, v13
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_store_b32 v11, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v71
	ds_load_b128 v[14:17], v71 offset:16
	ds_load_b128 v[18:21], v71 offset:512
	ds_load_b128 v[22:25], v71 offset:528
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v121, v95, v67, 2
	v_add_lshl_u32 v122, v95, v94, 2
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v78, v78, v66
	v_mul_f32_e32 v71, v81, v66
	v_mul_f32_e32 v81, v82, v66
	v_mul_f32_e32 v82, v83, v66
	v_mul_f32_e32 v83, v84, v66
	v_mul_f32_e32 v84, v85, v66
	v_mul_f32_e32 v85, v86, v66
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v123, v95, v93, 2
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v80, v80, v66
	v_mul_f32_e32 v66, v87, v66
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v41, v41, v10 :: v_dual_mul_f32 v42, v42, v11
	v_dual_mul_f32 v43, v43, v12 :: v_dual_mul_f32 v44, v44, v13
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v45, v45, v14 :: v_dual_mul_f32 v46, v46, v15
	v_dual_mul_f32 v47, v47, v16 :: v_dual_mul_f32 v48, v48, v17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v57, v57, v18 :: v_dual_mul_f32 v58, v58, v19
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v61, v61, v22
	v_dual_mul_f32 v59, v59, v20 :: v_dual_mul_f32 v60, v60, v21
	v_dual_mul_f32 v63, v63, v24 :: v_dual_mul_f32 v62, v62, v23
	v_mul_f32_e32 v49, v49, v10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0xe
	buffer_store_b32 v41, v1, s[20:23], 0 offen
	buffer_store_b32 v42, v97, s[20:23], 0 offen
	buffer_store_b32 v43, v98, s[20:23], 0 offen
	buffer_store_b32 v44, v99, s[20:23], 0 offen
	buffer_store_b32 v45, v100, s[20:23], 0 offen
	buffer_store_b32 v46, v101, s[20:23], 0 offen
	buffer_store_b32 v47, v102, s[20:23], 0 offen
	buffer_store_b32 v48, v103, s[20:23], 0 offen
	buffer_store_b32 v57, v104, s[20:23], 0 offen
	buffer_store_b32 v58, v105, s[20:23], 0 offen
	buffer_store_b32 v59, v106, s[20:23], 0 offen
	buffer_store_b32 v60, v107, s[20:23], 0 offen
	buffer_store_b32 v61, v108, s[20:23], 0 offen
	buffer_store_b32 v62, v109, s[20:23], 0 offen
	buffer_store_b32 v63, v110, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v121, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s18
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v64, v64, v25 :: v_dual_mul_f32 v51, v51, v12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v41, 0x80000000, v122, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s17
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v50, v50, v11 :: v_dual_mul_f32 v53, v53, v14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v42, 0x80000000, v123, s3
	s_clause 0x1
	buffer_store_b32 v64, v65, s[20:23], 0 offen
	buffer_store_b32 v49, v1, s[20:23], 0 offen
	v_add_lshl_u32 v1, v95, v92, 2
	s_clause 0x1
	buffer_store_b32 v50, v41, s[20:23], 0 offen
	buffer_store_b32 v51, v42, s[20:23], 0 offen
	v_add_lshl_u32 v41, v95, v91, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v42, v95, v90, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s15
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v52, v52, v13 :: v_dual_mul_f32 v55, v55, v16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v43, v95, v89, 2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s14
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v54, v54, v15 :: v_dual_mul_f32 v33, v33, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v52, v1, s[20:23], 0 offen
	buffer_store_b32 v53, v41, s[20:23], 0 offen
	v_cndmask_b32_e64 v43, 0x80000000, v43, s3
	v_add_lshl_u32 v1, v95, v88, 2
	v_add_lshl_u32 v41, v95, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v54, v42, s[20:23], 0 offen
	buffer_store_b32 v55, v43, s[20:23], 0 offen
	v_add_lshl_u32 v42, v95, v8, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s11
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v56, v56, v17 :: v_dual_mul_f32 v35, v35, v20
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v43, v95, v7, 2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s10
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v34, v34, v19 :: v_dual_mul_f32 v37, v37, v22
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v56, v1, s[20:23], 0 offen
	buffer_store_b32 v33, v41, s[20:23], 0 offen
	v_cndmask_b32_e64 v43, 0x80000000, v43, s3
	v_add_lshl_u32 v1, v95, v6, 2
	v_add_lshl_u32 v33, v95, v5, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v34, v42, s[20:23], 0 offen
	buffer_store_b32 v35, v43, s[20:23], 0 offen
	v_add_lshl_u32 v34, v95, v4, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s6
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v36, v36, v21 :: v_dual_mul_f32 v39, v39, v24
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v35, v95, v3, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s5
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v38, v38, v23 :: v_dual_mul_f32 v27, v27, v12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v34, 0x80000000, v34, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v36, v1, s[20:23], 0 offen
	buffer_store_b32 v37, v33, s[20:23], 0 offen
	v_cndmask_b32_e64 v35, 0x80000000, v35, s3
	v_add_lshl_u32 v1, v95, v2, 2
	v_add_lshl_u32 v33, v96, v67, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s2, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v38, v34, s[20:23], 0 offen
	buffer_store_b32 v39, v35, s[20:23], 0 offen
	v_add_lshl_u32 v34, v96, v94, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v35, v96, v93, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s18
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v40, v40, v25 :: v_dual_mul_f32 v29, v29, v14
	v_dual_mul_f32 v68, v68, v10 :: v_dual_mul_f32 v31, v31, v16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s17
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v26, v26, v11 :: v_dual_mul_f32 v69, v69, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	s_clause 0x1
	buffer_store_b32 v40, v1, s[20:23], 0 offen
	buffer_store_b32 v68, v33, s[20:23], 0 offen
	v_add_lshl_u32 v1, v96, v92, 2
	s_clause 0x1
	buffer_store_b32 v26, v34, s[20:23], 0 offen
	buffer_store_b32 v27, v35, s[20:23], 0 offen
	v_add_lshl_u32 v26, v96, v91, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s16
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v28, v28, v13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v27, v96, v90, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_add_lshl_u32 v33, v96, v89, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s14
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v86, v111, v20 :: v_dual_mul_f32 v111, v113, v22
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v28, v1, s[20:23], 0 offen
	buffer_store_b32 v29, v26, s[20:23], 0 offen
	v_add_lshl_u32 v1, v96, v88, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s13
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v30, v30, v15 :: v_dual_mul_f32 v113, v115, v24
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v26, v96, v9, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s12
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v32, v32, v17 :: v_dual_mul_f32 v15, v77, v15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v30, v27, s[20:23], 0 offen
	buffer_store_b32 v31, v33, s[20:23], 0 offen
	v_add_lshl_u32 v27, v96, v8, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_add_lshl_u32 v28, v96, v7, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v32, v1, s[20:23], 0 offen
	buffer_store_b32 v69, v26, s[20:23], 0 offen
	v_add_lshl_u32 v1, v96, v6, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s9
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v70, v70, v19 :: v_dual_mul_f32 v13, v75, v13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v26, v96, v5, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s8
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v87, v112, v21
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s6
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v21, v82, v21
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v70, v27, s[20:23], 0 offen
	buffer_store_b32 v86, v28, s[20:23], 0 offen
	v_add_lshl_u32 v27, v96, v4, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_add_lshl_u32 v28, v96, v3, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v87, v1, s[20:23], 0 offen
	buffer_store_b32 v111, v26, s[20:23], 0 offen
	v_add_lshl_u32 v1, v96, v2, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s4
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v112, v114, v23 :: v_dual_mul_f32 v17, v79, v17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v26, v0, v67, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s1, s0
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v114, v116, v25 :: v_dual_mul_f32 v19, v71, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s7
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v11, v73, v11 :: v_dual_mul_f32 v10, v72, v10
	v_mul_f32_e32 v25, v66, v25
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v112, v27, s[20:23], 0 offen
	buffer_store_b32 v113, v28, s[20:23], 0 offen
	v_add_lshl_u32 v27, v0, v94, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	v_add_lshl_u32 v28, v0, v93, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v114, v1, s[20:23], 0 offen
	buffer_store_b32 v10, v26, s[20:23], 0 offen
	v_add_lshl_u32 v1, v0, v92, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v10, v0, v91, 2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v12, v74, v12 :: v_dual_mul_f32 v23, v84, v23
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v28, 0x80000000, v28, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s16
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v14, v76, v14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v11, v27, s[20:23], 0 offen
	buffer_store_b32 v12, v28, s[20:23], 0 offen
	v_add_lshl_u32 v11, v0, v90, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s1
	v_add_lshl_u32 v12, v0, v89, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v13, v1, s[20:23], 0 offen
	buffer_store_b32 v14, v10, s[20:23], 0 offen
	v_add_lshl_u32 v1, v0, v88, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v9, v0, v9, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s12
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v16, v78, v16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s11
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v18, v80, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v8, v0, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	v_add_lshl_u32 v7, v0, v7, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x3
	buffer_store_b32 v15, v11, s[20:23], 0 offen
	buffer_store_b32 v16, v12, s[20:23], 0 offen
	buffer_store_b32 v17, v1, s[20:23], 0 offen
	buffer_store_b32 v18, v9, s[20:23], 0 offen
	v_add_lshl_u32 v1, v0, v6, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v5, v0, v5, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v4, v0, v4, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v0, v3, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s1
	v_add_lshl_u32 v0, v0, v2, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s5
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v20, v81, v20
	v_mul_f32_e32 v22, v83, v22
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v2, 0x80000000, v4, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s4
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v24, v85, v24
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x6
	buffer_store_b32 v19, v8, s[20:23], 0 offen
	buffer_store_b32 v20, v7, s[20:23], 0 offen
	buffer_store_b32 v21, v1, s[20:23], 0 offen
	buffer_store_b32 v22, v5, s[20:23], 0 offen
	buffer_store_b32 v23, v2, s[20:23], 0 offen
	buffer_store_b32 v24, v3, s[20:23], 0 offen
	buffer_store_b32 v25, v0, s[20:23], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 158
		.amdhsa_next_free_sgpr 101
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 158
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 101
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11600
; TotalNumSgprs: 103
; NumVgprs: 158
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 103
; NumVGPRsForWavesPerEU: 158
; Occupancy: 9
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     103
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     158
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
