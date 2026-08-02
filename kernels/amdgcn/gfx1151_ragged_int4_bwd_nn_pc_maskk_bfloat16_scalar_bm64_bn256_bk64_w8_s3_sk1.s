	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b128 s[40:43], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v99, 2, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_lshlrev_b32_e32 v98, 3, v0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v95, 15, v0
	v_lshrrev_b32_e32 v97, 1, v0
	v_lshlrev_b32_e32 v96, 1, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v66, 24, v98
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
	s_xor_b32 s8, s2, s5
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s9
	s_mul_hi_u32 s4, s9, s6
	s_abs_i32 s6, s2
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s6, s9
	s_mul_i32 s9, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s6, s7
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s4, s9, s4
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s27, s26, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s6, s4, s8
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
	s_add_u32 s4, s40, s4
	s_addc_u32 s5, s41, s5
	s_load_b32 s21, s[4:5], 0x0
	s_clause 0x1
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s20, s[0:1], 0x38
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s28, v99
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v65, s27, v0
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s29, s3, 5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s24, v1
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s0, s21, 31
	s_lshr_b32 s0, s0, 26
	.loc	1 1361 39                       ; ragged.py:1361:39
	s_mul_i32 s30, s26, s20
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_add_i32 s0, s21, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_ashr_i32 s2, s0, 6
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s25, v65
	.loc	1 1349 39                       ; ragged.py:1349:39
	s_lshl_b32 s3, s2, 5
	.loc	1 1357 39                       ; ragged.py:1357:39
	s_mul_i32 s2, s26, s24
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_ge_i32 s29, s3
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_add3_u32 v1, s28, s2, v99
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v100, s25, v65
	v_and_b32_e32 v2, 24, v97
	v_lshlrev_b32_e32 v5, 4, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[67:68], null, v1, s20, v[66:67]
	v_mad_u64_u32 v[68:69], null, s25, 3, v[65:66]
	v_mad_u64_u32 v[69:70], null, s25, 5, v[65:66]
	v_mad_u64_u32 v[70:71], null, s25, 6, v[65:66]
	v_dual_mov_b32 v42, v41 :: v_dual_lshlrev_b32 v1, 1, v0
	v_mad_u64_u32 v[71:72], null, s25, 7, v[65:66]
	v_mad_u64_u32 v[72:73], null, s25, 9, v[65:66]
	v_mad_u64_u32 v[73:74], null, s25, 10, v[65:66]
	v_mad_u64_u32 v[74:75], null, s25, 11, v[65:66]
	v_mad_u64_u32 v[75:76], null, s25, 12, v[65:66]
	v_dual_mov_b32 v44, v41 :: v_dual_and_b32 v3, 24, v1
	v_xor_b32_e32 v1, v1, v99
	v_mad_u64_u32 v[76:77], null, s25, 13, v[65:66]
	v_mad_u64_u32 v[77:78], null, s25, 14, v[65:66]
	v_mad_u64_u32 v[78:79], null, s25, 15, v[65:66]
	v_mad_u64_u32 v[79:80], null, s25, 17, v[65:66]
	v_mad_u64_u32 v[80:81], null, s25, 18, v[65:66]
	v_dual_mov_b32 v45, v41 :: v_dual_lshlrev_b32 v4, 5, v95
	v_dual_mov_b32 v58, v41 :: v_dual_and_b32 v1, 24, v1
	v_mov_b32_e32 v43, v41
	v_xor_b32_e32 v6, v3, v2
	v_dual_mov_b32 v46, v41 :: v_dual_and_b32 v5, 0xe00, v5
	v_mov_b32_e32 v48, v41
	v_mad_u64_u32 v[81:82], null, s25, 19, v[65:66]
	v_mad_u64_u32 v[82:83], null, s25, 20, v[65:66]
	v_mad_u64_u32 v[83:84], null, s25, 21, v[65:66]
	v_mad_u64_u32 v[84:85], null, s25, 22, v[65:66]
	v_mad_u64_u32 v[85:86], null, s25, 23, v[65:66]
	v_or_b32_e32 v3, v4, v3
	v_lshl_or_b32 v6, v0, 5, v6
	v_or3_b32 v1, v5, v1, v4
	v_mad_u64_u32 v[86:87], null, s25, 24, v[65:66]
	v_mad_u64_u32 v[87:88], null, s25, 25, v[65:66]
	v_mad_u64_u32 v[88:89], null, s25, 26, v[65:66]
	v_mad_u64_u32 v[89:90], null, s25, 27, v[65:66]
	v_mad_u64_u32 v[90:91], null, s25, 28, v[65:66]
	v_xor_b32_e32 v2, v98, v2
	v_xor_b32_e32 v7, 8, v3
	v_xor_b32_e32 v8, 16, v3
	v_xor_b32_e32 v4, 24, v3
	v_xor_b32_e32 v5, 8, v6
	v_xor_b32_e32 v9, 16, v6
	v_xor_b32_e32 v10, 24, v6
	v_xor_b32_e32 v11, 8, v1
	v_xor_b32_e32 v12, 16, v1
	v_xor_b32_e32 v13, 24, v1
	v_mad_u64_u32 v[91:92], null, s25, 29, v[65:66]
	v_mad_u64_u32 v[92:93], null, s25, 30, v[65:66]
	v_mad_u64_u32 v[93:94], null, s25, 31, v[65:66]
	v_lshl_add_u32 v101, s25, 1, v65
	v_lshl_add_u32 v102, s25, 2, v65
	v_lshl_add_u32 v103, s25, 3, v65
	v_dual_mov_b32 v47, v41 :: v_dual_add_nc_u32 v104, 0, v2
	v_dual_mov_b32 v60, v41 :: v_dual_add_nc_u32 v105, 0, v3
	v_dual_mov_b32 v57, v41 :: v_dual_add_nc_u32 v106, 0, v7
	v_dual_mov_b32 v62, v41 :: v_dual_add_nc_u32 v107, 0, v8
	v_dual_mov_b32 v59, v41 :: v_dual_add_nc_u32 v108, 0, v4
	v_dual_mov_b32 v64, v41 :: v_dual_add_nc_u32 v109, 0, v6
	v_dual_mov_b32 v61, v41 :: v_dual_add_nc_u32 v110, 0, v5
	v_dual_mov_b32 v50, v41 :: v_dual_add_nc_u32 v111, 0, v9
	v_dual_mov_b32 v63, v41 :: v_dual_add_nc_u32 v112, 0, v10
	v_dual_mov_b32 v52, v41 :: v_dual_add_nc_u32 v113, 0, v1
	v_dual_mov_b32 v49, v41 :: v_dual_add_nc_u32 v114, 0, v11
	v_dual_mov_b32 v54, v41 :: v_dual_add_nc_u32 v115, 0, v12
	v_dual_mov_b32 v51, v41 :: v_dual_add_nc_u32 v116, 0, v13
	v_mov_b32_e32 v53, v41
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
	v_lshl_add_u32 v94, s25, 4, v65
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1363 42 is_stmt 1             ; ragged.py:1363:42
	s_add_i32 s22, s29, s30
	.loc	1 1362 42                       ; ragged.py:1362:42
	v_add_nc_u32_e32 v117, s29, v67
	.loc	1 1363 42                       ; ragged.py:1363:42
	s_mul_i32 s22, s22, s25
	.loc	1 1374 21                       ; ragged.py:1374:21
	s_add_i32 s29, s29, 32
	.loc	1 1363 42                       ; ragged.py:1363:42
	v_add_nc_u32_e32 v118, s22, v65
	v_add_nc_u32_e32 v119, s22, v100
	v_add_nc_u32_e32 v120, s22, v101
	v_add_nc_u32_e32 v121, s22, v68
	v_add_nc_u32_e32 v122, s22, v102
	v_add_nc_u32_e32 v123, s22, v69
	v_add_nc_u32_e32 v124, s22, v70
	v_add_nc_u32_e32 v125, s22, v71
	v_add_nc_u32_e32 v126, s22, v103
	v_add_nc_u32_e32 v127, s22, v72
	v_add_nc_u32_e32 v128, s22, v73
	v_add_nc_u32_e32 v129, s22, v74
	v_add_nc_u32_e32 v130, s22, v75
	v_add_nc_u32_e32 v131, s22, v76
	v_add_nc_u32_e32 v132, s22, v77
	v_add_nc_u32_e32 v133, s22, v78
	v_add_nc_u32_e32 v134, s22, v94
	v_add_nc_u32_e32 v135, s22, v79
	v_add_nc_u32_e32 v136, s22, v80
	v_add_nc_u32_e32 v137, s22, v81
	v_add_nc_u32_e32 v138, s22, v82
	v_add_nc_u32_e32 v139, s22, v83
	v_add_nc_u32_e32 v140, s22, v84
	v_add_nc_u32_e32 v141, s22, v85
	v_add_nc_u32_e32 v142, s22, v86
	v_add_nc_u32_e32 v143, s22, v87
	v_add_nc_u32_e32 v144, s22, v88
	v_add_nc_u32_e32 v145, s22, v89
	v_add_nc_u32_e32 v146, s22, v90
	v_add_nc_u32_e32 v147, s22, v91
	v_add_nc_u32_e32 v148, s22, v92
	.loc	1 1363 34 is_stmt 0             ; ragged.py:1363:34
	v_cndmask_b32_e64 v118, 0x80000000, v118, s0
	.loc	1 1363 42                       ; ragged.py:1363:42
	v_add_nc_u32_e32 v149, s22, v93
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e64 v119, 0x80000000, v119, s0
	v_cndmask_b32_e64 v120, 0x80000000, v120, s0
	v_cndmask_b32_e64 v121, 0x80000000, v121, s0
	.loc	1 1362 34 is_stmt 1             ; ragged.py:1362:34
	v_cndmask_b32_e64 v117, 0x80000000, v117, s1
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e64 v122, 0x80000000, v122, s0
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
	s_clause 0x1f
	buffer_load_u8 v151, v118, s[8:11], 0 offen
	buffer_load_u8 v119, v119, s[8:11], 0 offen
	buffer_load_u8 v120, v120, s[8:11], 0 offen
	buffer_load_u8 v121, v121, s[8:11], 0 offen
	buffer_load_u8 v122, v122, s[8:11], 0 offen
	buffer_load_u8 v123, v123, s[8:11], 0 offen
	buffer_load_u8 v124, v124, s[8:11], 0 offen
	buffer_load_u8 v125, v125, s[8:11], 0 offen
	buffer_load_u8 v126, v126, s[8:11], 0 offen
	buffer_load_u8 v127, v127, s[8:11], 0 offen
	buffer_load_u8 v128, v128, s[8:11], 0 offen
	buffer_load_u8 v129, v129, s[8:11], 0 offen
	buffer_load_u8 v130, v130, s[8:11], 0 offen
	buffer_load_u8 v131, v131, s[8:11], 0 offen
	buffer_load_u8 v132, v132, s[8:11], 0 offen
	buffer_load_u8 v133, v133, s[8:11], 0 offen
	buffer_load_u8 v134, v134, s[8:11], 0 offen
	buffer_load_u8 v135, v135, s[8:11], 0 offen
	buffer_load_u8 v136, v136, s[8:11], 0 offen
	buffer_load_u8 v137, v137, s[8:11], 0 offen
	buffer_load_u8 v138, v138, s[8:11], 0 offen
	buffer_load_u8 v139, v139, s[8:11], 0 offen
	buffer_load_u8 v140, v140, s[8:11], 0 offen
	buffer_load_u8 v141, v141, s[8:11], 0 offen
	buffer_load_u8 v142, v142, s[8:11], 0 offen
	buffer_load_u8 v143, v143, s[8:11], 0 offen
	buffer_load_u8 v144, v144, s[8:11], 0 offen
	buffer_load_u8 v145, v145, s[8:11], 0 offen
	buffer_load_u8 v146, v146, s[8:11], 0 offen
	buffer_load_u8 v147, v147, s[8:11], 0 offen
	buffer_load_u8 v148, v148, s[8:11], 0 offen
	buffer_load_u8 v155, v149, s[8:11], 0 offen
	.loc	1 1362 34                       ; ragged.py:1362:34
	buffer_load_b64 v[117:118], v117, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_lt_i32 s29, s3
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt vmcnt(15)
	v_lshlrev_b16 v125.h, 8, v135.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v153.l, v134.l, v125.h
	s_waitcnt vmcnt(9)
	v_lshlrev_b16 v121.h, 8, v141.l
	v_or_b16 v154.h, v140.l, v121.h
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v129.h, 8, v147.l
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt vmcnt(0)
	ds_store_b64 v104, v[117:118]
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_lshlrev_b16 v117.l, 8, v125.l
	v_lshlrev_b16 v117.h, 8, v123.l
	v_lshlrev_b16 v118.l, 8, v129.l
	v_lshlrev_b16 v125.l, 8, v137.l
	v_lshlrev_b16 v129.l, 8, v155.l
	v_or_b16 v150.h, v124.l, v117.l
	v_lshlrev_b16 v117.l, 8, v121.l
	v_or_b16 v150.l, v122.l, v117.h
	v_lshlrev_b16 v117.h, 8, v131.l
	v_lshlrev_b16 v121.l, 8, v127.l
	v_lshlrev_b16 v122.l, 8, v139.l
	v_or_b16 v149.h, v120.l, v117.l
	v_lshlrev_b16 v117.l, 8, v119.l
	v_or_b16 v152.l, v130.l, v117.h
	v_lshlrev_b16 v130.l, 8, v145.l
	v_or_b16 v151.h, v128.l, v118.l
	v_or_b16 v154.l, v138.l, v122.l
	v_or_b16 v149.l, v151.l, v117.l
	v_lshlrev_b16 v117.l, 8, v133.l
	v_lshlrev_b16 v133.l, 8, v143.l
	v_or_b16 v151.l, v126.l, v121.l
	v_or_b16 v153.h, v136.l, v125.l
	v_or_b16 v156.h, v148.l, v129.l
	v_or_b16 v152.h, v132.l, v117.l
	v_or_b16 v156.l, v146.l, v129.h
	v_or_b16 v155.h, v144.l, v130.l
	v_or_b16 v155.l, v142.l, v133.l
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[117:120], v105 offset1:1
	ds_load_2addr_stride64_b64 v[121:124], v105 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[125:128], v106 offset1:1
	ds_load_2addr_stride64_b64 v[129:132], v106 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[133:136], v107 offset1:1
	ds_load_2addr_stride64_b64 v[137:140], v107 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[141:144], v108 offset1:1
	ds_load_2addr_stride64_b64 v[145:148], v108 offset0:2 offset1:3
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v109, v[149:150]
	ds_store_b64 v110, v[151:152]
	ds_store_b64 v111, v[153:154]
	ds_store_b64 v112, v[155:156]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[149:152], v113 offset1:8
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[149:150], v[117:118], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[151:152], v[117:118], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[149:150], v[119:120], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[151:152], v[119:120], v[33:40] neg_lo:[1,1,0]
	.loc	1 1363 34                       ; ragged.py:1363:34
	ds_load_2addr_stride64_b64 v[117:120], v114 offset1:8
	.loc	1 1364 31                       ; ragged.py:1364:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[149:150], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[151:152], v[121:122], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[149:150], v[123:124], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[151:152], v[123:124], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[117:118], v[125:126], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[119:120], v[125:126], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[117:118], v[127:128], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[119:120], v[127:128], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[117:118], v[129:130], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[119:120], v[129:130], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[131:132], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[119:120], v[131:132], v[1:8] neg_lo:[1,1,0]
	.loc	1 1363 34                       ; ragged.py:1363:34
	ds_load_2addr_stride64_b64 v[117:120], v115 offset1:8
	ds_load_2addr_stride64_b64 v[121:124], v116 offset1:8
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[117:118], v[133:134], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[119:120], v[133:134], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[117:118], v[135:136], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[119:120], v[135:136], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[117:118], v[137:138], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[119:120], v[137:138], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[139:140], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[119:120], v[139:140], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[121:122], v[141:142], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[123:124], v[141:142], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[121:122], v[143:144], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[123:124], v[143:144], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[121:122], v[145:146], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[123:124], v[145:146], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[121:122], v[147:148], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[123:124], v[147:148], v[1:8] neg_lo:[1,1,0]
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
	s_add_i32 s3, s21, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s4, s3, 31
	s_add_i32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s22, s3, 1
	.loc	1 1375 20 is_stmt 1             ; ragged.py:1375:20
	s_cmp_lt_i32 s29, s22
	.loc	1 1375 17 is_stmt 0             ; ragged.py:1375:17
	s_cbranch_scc1 .LBB0_7
; %bb.5:                                ; %._crit_edge._crit_edge
	.loc	1 1415 17 is_stmt 1             ; ragged.py:1415:17
	v_lshlrev_b32_e32 v67, 1, v0
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s9, s28, s2
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_lshl_b32 s8, s25, 4
	s_cbranch_execz .LBB0_8
; %bb.6:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v96, v67
	s_branch .LBB0_9
.LBB0_7:
                                        ; implicit-def: $sgpr9
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $sgpr8
.LBB0_8:
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	s_or_b32 s3, s29, 1
	s_or_b32 s4, s29, 2
	s_or_b32 s5, s29, 3
	s_or_b32 s6, s29, 4
	s_or_b32 s7, s29, 5
	s_or_b32 s8, s29, 6
	s_or_b32 s9, s29, 7
	s_or_b32 s23, s29, 8
	s_or_b32 s41, s29, 9
	s_or_b32 s44, s29, 10
	s_or_b32 s45, s29, 11
	s_or_b32 s46, s29, 12
	s_or_b32 s48, s29, 13
	s_or_b32 s50, s29, 14
	s_or_b32 s52, s29, 15
	s_or_b32 s54, s29, 16
	s_or_b32 s56, s29, 17
	s_or_b32 s58, s29, 18
	s_or_b32 s61, s29, 19
	s_or_b32 s62, s29, 20
	s_or_b32 s63, s29, 21
	s_or_b32 s64, s29, 22
	s_or_b32 s65, s29, 23
	s_or_b32 s66, s29, 24
	s_or_b32 s69, s29, 25
	s_or_b32 s72, s29, 26
	s_or_b32 s75, s29, 27
	s_or_b32 s78, s29, 28
	s_or_b32 s79, s29, 29
	s_or_b32 s80, s29, 30
	s_or_b32 s96, s29, 31
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cmp_lt_i32 s3, s22
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mul_lo_u32 v75, s20, v99
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s4, s22
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v74, s9, v66
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s5, s22
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v67, s29, v66
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s6, s22
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v69, s4, v66
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s7, s22
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v68, s3, v66
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s8, s22
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v70, s5, v66
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s9, s22
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v71, s6, v66
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s23, s22
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v72, s7, v66
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s41, s22
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v73, s8, v66
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s44, s22
	v_cmp_gt_i32_e32 vcc_lo, s22, v67
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s45, s22
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s97, s25, 13
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s46, s22
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s98, s25, 14
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s48, s22
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s99, s25, 15
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s50, s22
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s100, s25, 18
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s52, s22
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s54, s22
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s56, s22
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s58, s22
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s61, s22
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s62, s22
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s63, s22
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s64, s22
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s65, s22
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s66, s22
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s69, s22
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s72, s22
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s75, s22
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s78, s22
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s79, s22
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s80, s22
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s96, s22
	s_cselect_b32 s47, -1, 0
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_and_b32 s10, s21, 0x80000001
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cmp_eq_u32 s10, 1
	s_cselect_b32 s10, -1, 0
	.loc	1 1386 63 is_stmt 0             ; ragged.py:1386:63
	s_add_i32 s11, s22, -1
	.loc	1 1386 56                       ; ragged.py:1386:56
	s_cmp_eq_u32 s29, s11
	s_cselect_b32 s31, -1, 0
	s_cmp_eq_u32 s3, s11
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s3, s22, v69
	.loc	1 1386 56                       ; ragged.py:1386:56
	s_cselect_b32 s33, -1, 0
	s_cmp_eq_u32 s4, s11
	s_cselect_b32 s34, -1, 0
	s_cmp_eq_u32 s5, s11
	s_cselect_b32 s35, -1, 0
	s_cmp_eq_u32 s6, s11
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s6, s22, v72
	.loc	1 1386 56                       ; ragged.py:1386:56
	s_cselect_b32 s36, -1, 0
	s_cmp_eq_u32 s7, s11
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s7, s22, v73
	.loc	1 1386 56                       ; ragged.py:1386:56
	s_cselect_b32 s37, -1, 0
	s_cmp_eq_u32 s8, s11
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s8, s22, v74
	.loc	1 1386 56                       ; ragged.py:1386:56
	s_cselect_b32 s38, -1, 0
	s_cmp_eq_u32 s9, s11
	s_cselect_b32 s39, -1, 0
	s_cmp_eq_u32 s23, s11
	s_mov_b32 s23, 0x31027000
	s_cselect_b32 s40, -1, 0
	s_cmp_eq_u32 s41, s11
	s_cselect_b32 s41, -1, 0
	s_cmp_eq_u32 s44, s11
	s_cselect_b32 s44, -1, 0
	s_cmp_eq_u32 s45, s11
	s_cselect_b32 s45, -1, 0
	s_cmp_eq_u32 s46, s11
	s_cselect_b32 s46, -1, 0
	s_cmp_eq_u32 s48, s11
	s_cselect_b32 s48, -1, 0
	s_cmp_eq_u32 s50, s11
	s_cselect_b32 s50, -1, 0
	s_cmp_eq_u32 s52, s11
	s_cselect_b32 s52, -1, 0
	s_cmp_eq_u32 s54, s11
	s_cselect_b32 s54, -1, 0
	s_cmp_eq_u32 s56, s11
	s_cselect_b32 s56, -1, 0
	s_cmp_eq_u32 s58, s11
	s_cselect_b32 s58, -1, 0
	s_cmp_eq_u32 s61, s11
	s_cselect_b32 s61, -1, 0
	s_cmp_eq_u32 s62, s11
	s_cselect_b32 s62, -1, 0
	s_cmp_eq_u32 s63, s11
	s_cselect_b32 s63, -1, 0
	s_cmp_eq_u32 s64, s11
	s_cselect_b32 s64, -1, 0
	s_cmp_eq_u32 s65, s11
	s_cselect_b32 s65, -1, 0
	s_cmp_eq_u32 s66, s11
	s_cselect_b32 s66, -1, 0
	s_cmp_eq_u32 s69, s11
	s_cselect_b32 s69, -1, 0
	s_cmp_eq_u32 s72, s11
	s_cselect_b32 s72, -1, 0
	s_cmp_eq_u32 s75, s11
	s_cselect_b32 s75, -1, 0
	s_cmp_eq_u32 s78, s11
	s_cselect_b32 s78, -1, 0
	s_cmp_eq_u32 s79, s11
	s_cselect_b32 s79, -1, 0
	s_cmp_eq_u32 s80, s11
	s_cselect_b32 s80, -1, 0
	s_cmp_eq_u32 s96, s11
	s_cselect_b32 s96, -1, 0
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s9, s28, s2
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s2, s22, v68
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_mul_i32 s4, s9, s20
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, vcc_lo
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s5, s29, s4
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_add_i32 s29, s29, s30
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add3_u32 v66, s5, v75, v66
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s29, s29, s25
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s4, s22, v70
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v100, s29, s25, v65
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s5, s22, v71
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v76, 2, v66
	v_add_nc_u32_e32 v75, 1, v66
	v_add_nc_u32_e32 v79, 5, v66
	v_add_nc_u32_e32 v80, 6, v66
	v_add_nc_u32_e32 v77, 3, v66
	v_add_nc_u32_e32 v78, 4, v66
	v_add_nc_u32_e32 v81, 7, v66
	.loc	1 1387 34 is_stmt 0             ; ragged.py:1387:34
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s2
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_and_b32 s21, s13, 0xffff
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s3
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s4
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_mov_b32 s20, s12
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s5
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_mul_i32 s2, s25, 3
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s6
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_lshl_b32 s3, s25, 2
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s7
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_mul_i32 s4, s25, 5
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s8
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_lshl_b32 s1, s25, 1
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v81, 0x80000000, v81, vcc_lo
	s_clause 0x7
	buffer_load_u8 v82, v66, s[20:23], 0 offen
	buffer_load_u8 v85, v75, s[20:23], 0 offen
	buffer_load_u8 v86, v76, s[20:23], 0 offen
	buffer_load_u8 v87, v77, s[20:23], 0 offen
	buffer_load_u8 v88, v78, s[20:23], 0 offen
	buffer_load_u8 v89, v79, s[20:23], 0 offen
	buffer_load_u8 v90, v80, s[20:23], 0 offen
	buffer_load_u8 v91, v81, s[20:23], 0 offen
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v66, s29, s1, v65
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s95
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v75, s29, s2, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v100, 0x80000000, v100, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s94
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v76, s29, s3, v65
	v_add3_u32 v77, s29, s4, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s93
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s5, s25, 6
	v_add_nc_u32_e32 v99, s29, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s92
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s6, s25, 7
	v_add3_u32 v78, s29, s5, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s91
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_lshl_b32 s7, s25, 3
	v_add3_u32 v79, s29, s6, v65
	s_mul_i32 s20, s25, 11
	s_mul_i32 s21, s25, 12
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s90
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s12, s25, 9
	v_add3_u32 v80, s29, s7, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v99, 0x80000000, v99, s0
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v84, s29, s20, v65
	s_mul_i32 s20, s25, 28
	v_add3_u32 v92, s29, s21, v65
	s_mul_i32 s21, s25, 29
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s89
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s13, s25, 10
	v_add3_u32 v81, s29, s12, v65
	v_add3_u32 v114, s29, s20, v65
	v_add3_u32 v115, s29, s21, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s87
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v83, s29, s13, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x7
	buffer_load_u8 v99, v99, s[20:23], 0 offen
	buffer_load_u8 v100, v100, s[20:23], 0 offen
	buffer_load_u8 v117, v66, s[20:23], 0 offen
	buffer_load_u8 v118, v75, s[20:23], 0 offen
	buffer_load_u8 v119, v76, s[20:23], 0 offen
	buffer_load_u8 v120, v77, s[20:23], 0 offen
	buffer_load_u8 v121, v78, s[20:23], 0 offen
	buffer_load_u8 v122, v79, s[20:23], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v80, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s88
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v93, s29, s97, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v75, 0x80000000, v81, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s86
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v94, s29, s98, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v76, 0x80000000, v83, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s85
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_lshl_b32 s8, s25, 4
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v77, 0x80000000, v84, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s84
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v101, s29, s99, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v78, 0x80000000, v92, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s83
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s30, s25, 17
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v79, 0x80000000, v93, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s82
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v102, s29, s8, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v80, 0x80000000, v94, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s81
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v103, s29, s30, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v81, 0x80000000, v101, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s76
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s1, s25, 19
	v_add3_u32 v104, s29, s100, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x7
	buffer_load_u8 v92, v66, s[20:23], 0 offen
	buffer_load_u8 v101, v75, s[20:23], 0 offen
	buffer_load_u8 v123, v76, s[20:23], 0 offen
	buffer_load_u8 v124, v77, s[20:23], 0 offen
	buffer_load_u8 v125, v78, s[20:23], 0 offen
	buffer_load_u8 v126, v79, s[20:23], 0 offen
	buffer_load_u8 v127, v80, s[20:23], 0 offen
	buffer_load_u8 v128, v81, s[20:23], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v102, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s77
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s2, s25, 20
	v_add3_u32 v105, s29, s1, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v75, 0x80000000, v103, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s74
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s3, s25, 21
	v_add3_u32 v106, s29, s2, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v76, 0x80000000, v104, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s73
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s4, s25, 22
	v_add3_u32 v107, s29, s3, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v77, 0x80000000, v105, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s71
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s5, s25, 23
	v_add3_u32 v108, s29, s4, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v78, 0x80000000, v106, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s70
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s6, s25, 24
	v_add3_u32 v109, s29, s5, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v79, 0x80000000, v107, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s68
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s7, s25, 25
	v_add3_u32 v110, s29, s6, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v80, 0x80000000, v108, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s67
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s12, s25, 26
	v_add3_u32 v111, s29, s7, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v81, 0x80000000, v109, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s59
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s13, s25, 27
	v_add3_u32 v112, s29, s12, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x7
	buffer_load_u8 v108, v66, s[20:23], 0 offen
	buffer_load_u8 v109, v75, s[20:23], 0 offen
	buffer_load_u8 v129, v76, s[20:23], 0 offen
	buffer_load_u8 v130, v77, s[20:23], 0 offen
	buffer_load_u8 v131, v78, s[20:23], 0 offen
	buffer_load_u8 v132, v79, s[20:23], 0 offen
	buffer_load_u8 v133, v80, s[20:23], 0 offen
	buffer_load_u8 v134, v81, s[20:23], 0 offen
	v_cndmask_b32_e32 v66, 0x80000000, v110, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s60
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v113, s29, s13, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v75, 0x80000000, v111, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s57
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s97, s25, 30
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v76, 0x80000000, v112, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s55
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s98, s25, 31
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v77, 0x80000000, v113, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s53
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v116, s29, s97, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v78, 0x80000000, v114, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s51
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v65, s29, s98, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v79, 0x80000000, v115, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s49
	.loc	1 1386 56 is_stmt 1             ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s1, s11, v68
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v80, 0x80000000, v116, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s47
	.loc	1 1386 56 is_stmt 1             ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s3, s11, v70
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	s_clause 0x7
	buffer_load_u8 v112, v66, s[20:23], 0 offen
	buffer_load_u8 v113, v75, s[20:23], 0 offen
	buffer_load_u8 v114, v76, s[20:23], 0 offen
	buffer_load_u8 v115, v77, s[20:23], 0 offen
	buffer_load_u8 v116, v78, s[20:23], 0 offen
	buffer_load_u8 v135, v79, s[20:23], 0 offen
	buffer_load_u8 v136, v80, s[20:23], 0 offen
	buffer_load_u8 v137, v65, s[20:23], 0 offen
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s5, s11, v72
	v_cmp_eq_u32_e64 s7, s11, v74
	v_cmp_eq_u32_e32 vcc_lo, s11, v67
	v_cmp_eq_u32_e64 s2, s11, v69
	v_cmp_eq_u32_e64 s4, s11, v71
	v_cmp_eq_u32_e64 s6, s11, v73
	.loc	1 1386 32 is_stmt 0             ; ragged.py:1386:32
	s_and_b32 s1, s10, s1
	s_and_b32 s3, s10, s3
	s_and_b32 s5, s10, s5
	s_and_b32 s7, s10, s7
	s_and_b32 s11, s10, vcc_lo
	s_and_b32 s2, s10, s2
	s_and_b32 s4, s10, s4
	s_and_b32 s6, s10, s6
	s_and_b32 s12, s10, s31
	s_and_b32 s13, s10, s33
	s_and_b32 s14, s10, s34
	s_and_b32 s15, s10, s35
	s_and_b32 s29, s10, s40
	s_and_b32 s30, s10, s41
	s_and_b32 s20, s10, s36
	s_and_b32 s21, s10, s37
	s_and_b32 s22, s10, s38
	s_and_b32 s23, s10, s39
	s_and_b32 s36, s10, s50
	s_and_b32 s37, s10, s52
	s_and_b32 s38, s10, s54
	s_and_b32 s39, s10, s56
	s_and_b32 s49, s10, s69
	s_and_b32 s50, s10, s72
	s_and_b32 s52, s10, s78
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s31, s10, s44
	s_and_b32 s33, s10, s45
	s_and_b32 s34, s10, s46
	s_and_b32 s35, s10, s48
	s_and_b32 s40, s10, s58
	s_and_b32 s41, s10, s61
	s_and_b32 s44, s10, s62
	s_and_b32 s45, s10, s63
	s_and_b32 s46, s10, s64
	s_and_b32 s47, s10, s65
	s_and_b32 s48, s10, s66
	s_and_b32 s51, s10, s75
	s_and_b32 s53, s10, s79
	s_and_b32 s54, s10, s80
	s_and_b32 s10, s10, s96
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(39)
	v_and_b16 v65.l, v82.l, 15
	s_waitcnt vmcnt(38)
	v_and_b16 v65.h, v85.l, 15
	s_waitcnt vmcnt(37)
	v_and_b16 v66.l, v86.l, 15
	s_waitcnt vmcnt(36)
	v_and_b16 v66.h, v87.l, 15
	s_waitcnt vmcnt(35)
	v_and_b16 v67.l, v88.l, 15
	s_waitcnt vmcnt(34)
	v_and_b16 v67.h, v89.l, 15
	s_waitcnt vmcnt(33)
	v_and_b16 v68.l, v90.l, 15
	s_waitcnt vmcnt(32)
	v_and_b16 v68.h, v91.l, 15
	.loc	1 1389 34 is_stmt 0             ; ragged.py:1389:34
	v_cndmask_b16 v65.h, v85.l, v65.h, s1
	v_cndmask_b16 v66.h, v87.l, v66.h, s3
	v_cndmask_b16 v67.h, v89.l, v67.h, s5
	v_cndmask_b16 v65.l, v82.l, v65.l, s11
	v_cndmask_b16 v68.h, v91.l, v68.h, s7
	v_cndmask_b16 v66.l, v86.l, v66.l, s2
	v_cndmask_b16 v67.l, v88.l, v67.l, s4
	v_cndmask_b16 v68.l, v90.l, v68.l, s6
	v_lshlrev_b16 v67.h, 8, v67.h
	v_lshlrev_b16 v68.h, 8, v68.h
	v_lshlrev_b16 v66.h, 8, v66.h
	v_lshlrev_b16 v65.h, 8, v65.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b16 v68.h, v68.l, v68.h
	v_or_b16 v68.l, v67.l, v67.h
	v_or_b16 v67.h, v66.l, v66.h
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b16 v67.l, v65.l, v65.h
	.loc	1 1390 62 is_stmt 1             ; ragged.py:1390:62
	s_waitcnt vmcnt(31)
	v_and_b16 v69.l, v99.l, 15
	s_waitcnt vmcnt(30)
	v_and_b16 v69.h, v100.l, 15
	s_waitcnt vmcnt(29)
	v_and_b16 v70.l, v117.l, 15
	s_waitcnt vmcnt(28)
	v_and_b16 v70.h, v118.l, 15
	s_waitcnt vmcnt(27)
	v_and_b16 v71.l, v119.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v93.l, v99.l, v69.l, s12
	v_cndmask_b16 v93.h, v100.l, v69.h, s13
	v_cndmask_b16 v94.l, v117.l, v70.l, s14
	v_cndmask_b16 v94.h, v118.l, v70.h, s15
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_and_b32_e32 v69, 24, v97
	v_and_b32_e32 v70, 24, v96
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(26)
	v_and_b16 v71.h, v120.l, 15
	s_waitcnt vmcnt(25)
	v_and_b16 v72.l, v121.l, 15
	s_waitcnt vmcnt(24)
	v_and_b16 v72.h, v122.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_xad_u32 v69, v98, v69, 0
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v102.l, v119.l, v71.l, s20
	v_cndmask_b16 v102.h, v120.l, v71.h, s21
	v_cndmask_b16 v103.l, v121.l, v72.l, s22
	v_cndmask_b16 v103.h, v122.l, v72.h, s23
	.loc	1 1389 34                       ; ragged.py:1389:34
	ds_store_b64 v69, v[67:68]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(23)
	v_and_b16 v73.l, v92.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v73.h, v101.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v74.l, v123.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v74.h, v124.l, 15
	s_waitcnt vmcnt(19)
	v_and_b16 v75.l, v125.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v104.l, v92.l, v73.l, s29
	v_cndmask_b16 v104.h, v101.l, v73.h, s30
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_lshl_or_b32 v73, v95, 5, v70
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(18)
	v_and_b16 v75.h, v126.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v76.l, v127.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v76.h, v128.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v105.l, v123.l, v74.l, s31
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_add_nc_u32_e32 v69, 0, v73
	v_xad_u32 v98, v73, 24, 0
	v_xad_u32 v85, v73, 16, 0
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v105.h, v124.l, v74.h, s33
	v_cndmask_b16 v106.l, v125.l, v75.l, s34
	v_cndmask_b16 v106.h, v126.l, v75.h, s35
	v_cndmask_b16 v107.l, v127.l, v76.l, s36
	v_cndmask_b16 v107.h, v128.l, v76.h, s37
	.loc	1 1389 34                       ; ragged.py:1389:34
	ds_load_2addr_stride64_b64 v[65:68], v69 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v69 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[89:92], v98 offset1:1
	ds_load_2addr_stride64_b64 v[98:101], v98 offset0:2 offset1:3
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(15)
	v_and_b16 v77.l, v108.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v77.h, v109.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v78.l, v129.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v78.h, v130.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v79.l, v131.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v79.h, v132.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v80.l, v133.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v80.h, v134.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v108.l, v108.l, v77.l, s38
	v_cndmask_b16 v108.h, v109.l, v77.h, s39
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_xad_u32 v77, v73, 8, 0
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v109.l, v129.l, v78.l, s40
	v_cndmask_b16 v109.h, v130.l, v78.h, s41
	v_cndmask_b16 v110.l, v131.l, v79.l, s44
	v_cndmask_b16 v110.h, v132.l, v79.h, s45
	v_cndmask_b16 v111.l, v133.l, v80.l, s46
	v_cndmask_b16 v111.h, v134.l, v80.h, s47
	.loc	1 1390 62 is_stmt 0             ; ragged.py:1390:62
	s_waitcnt vmcnt(7)
	v_and_b16 v81.l, v112.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v81.h, v113.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v82.l, v114.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v82.h, v115.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v83.l, v116.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v83.h, v135.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v84.l, v136.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v84.h, v137.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v112.h, v113.l, v81.h, s49
	v_cndmask_b16 v113.l, v114.l, v82.l, s50
	v_cndmask_b16 v114.l, v116.l, v83.l, s52
	v_add_nc_u32_e32 v116, 0, v0
	v_cndmask_b16 v112.l, v112.l, v81.l, s48
	v_cndmask_b16 v113.h, v115.l, v82.h, s51
	v_cndmask_b16 v114.h, v135.l, v83.h, s53
	v_cndmask_b16 v115.l, v136.l, v84.l, s54
	v_cndmask_b16 v115.h, v137.l, v84.h, s10
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	ds_load_2addr_stride64_b64 v[73:76], v77 offset1:1
	ds_load_2addr_stride64_b64 v[77:80], v77 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[81:84], v85 offset1:1
	ds_load_2addr_stride64_b64 v[85:88], v85 offset0:2 offset1:3
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v116, v93
	ds_store_b8_d16_hi v116, v93 offset:256
	ds_store_b8 v116, v94 offset:512
	ds_store_b8_d16_hi v116, v94 offset:768
	ds_store_b8 v116, v102 offset:1024
	ds_store_b8_d16_hi v116, v102 offset:1280
	ds_store_b8 v116, v103 offset:1536
	ds_store_b8_d16_hi v116, v103 offset:1792
	ds_store_b8 v116, v104 offset:2048
	ds_store_b8_d16_hi v116, v104 offset:2304
	ds_store_b8 v116, v105 offset:2560
	ds_store_b8_d16_hi v116, v105 offset:2816
	ds_store_b8 v116, v106 offset:3072
	ds_store_b8_d16_hi v116, v106 offset:3328
	ds_store_b8 v116, v107 offset:3584
	ds_store_b8_d16_hi v116, v107 offset:3840
	v_and_b32_e32 v93, 0x70, v97
	ds_store_b8 v116, v108 offset:4096
	ds_store_b8_d16_hi v116, v108 offset:4352
	ds_store_b8 v116, v109 offset:4608
	ds_store_b8_d16_hi v116, v109 offset:4864
	ds_store_b8 v116, v110 offset:5120
	ds_store_b8_d16_hi v116, v110 offset:5376
	ds_store_b8 v116, v111 offset:5632
	ds_store_b8_d16_hi v116, v111 offset:5888
	ds_store_b8 v116, v112 offset:6144
	ds_store_b8_d16_hi v116, v112 offset:6400
	ds_store_b8 v116, v113 offset:6656
	ds_store_b8_d16_hi v116, v113 offset:6912
	ds_store_b8 v116, v114 offset:7168
	ds_store_b8_d16_hi v116, v114 offset:7424
	ds_store_b8 v116, v115 offset:7680
	ds_store_b8_d16_hi v116, v115 offset:7936
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v97, 0, v93, v95
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v93, v97 offset:1280
	ds_load_u8 v94, v97 offset:1024
	ds_load_u8 v102, v97 offset:1792
	ds_load_u8 v103, v97 offset:1536
	ds_load_u8 v104, v97 offset:256
	ds_load_u8 v105, v97
	ds_load_u8 v106, v97 offset:768
	ds_load_u8 v107, v97 offset:512
	ds_load_u8 v108, v97 offset:1920
	ds_load_u8 v109, v97 offset:1664
	ds_load_u8 v110, v97 offset:1408
	ds_load_u8 v111, v97 offset:1152
	ds_load_u8 v120, v97 offset:3968
	ds_load_u8 v121, v97 offset:3712
	ds_load_u8 v122, v97 offset:3456
	ds_load_u8 v123, v97 offset:3200
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v94, v103, v102, 0xc0c0004
	ds_load_u8 v102, v97 offset:3328
	ds_load_u8 v103, v97 offset:3072
	ds_load_u8 v112, v97 offset:3840
	ds_load_u8 v113, v97 offset:3584
	ds_load_u8 v114, v97 offset:896
	ds_load_u8 v115, v97 offset:640
	ds_load_u8 v116, v97 offset:384
	ds_load_u8 v117, v97 offset:128
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v105, v107, v106, 0xc0c0004
	ds_load_u8 v106, v97 offset:2304
	ds_load_u8 v107, v97 offset:2048
	ds_load_u8 v118, v97 offset:2816
	ds_load_u8 v119, v97 offset:2560
	v_lshl_or_b32 v94, v94, 16, v93
	v_lshl_or_b32 v93, v105, 16, v104
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[93:94], v[65:66], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[93:94], v[67:68], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v103, v113, v112, 0xc0c0004
	ds_load_u8 v104, v97 offset:5376
	ds_load_u8 v105, v97 offset:5120
	ds_load_u8 v112, v97 offset:5888
	ds_load_u8 v113, v97 offset:5632
	ds_load_u8 v124, v97 offset:2944
	ds_load_u8 v125, v97 offset:2688
	ds_load_u8 v126, v97 offset:2432
	ds_load_u8 v127, v97 offset:2176
	v_wmma_i32_16x16x16_iu4 v[25:32], v[93:94], v[69:70], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[93:94], v[71:72], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v103, v103, 16, v102
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v107, v119, v118, 0xc0c0004
	ds_load_u8 v118, v97 offset:4352
	ds_load_u8 v119, v97 offset:4096
	ds_load_u8 v128, v97 offset:4864
	ds_load_u8 v129, v97 offset:4608
	v_lshl_or_b32 v102, v107, 16, v106
	ds_load_u8 v106, v97 offset:7424
	ds_load_u8 v107, v97 offset:7168
	ds_load_u8 v130, v97 offset:7936
	ds_load_u8 v131, v97 offset:7680
	ds_load_u8 v132, v97 offset:6016
	ds_load_u8 v133, v97 offset:5760
	ds_load_u8 v134, v97 offset:5504
	ds_load_u8 v135, v97 offset:5248
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v105, v113, v112, 0xc0c0004
	ds_load_u8 v112, v97 offset:4992
	ds_load_u8 v113, v97 offset:4736
	ds_load_u8 v136, v97 offset:4480
	ds_load_u8 v137, v97 offset:4224
	v_wmma_i32_16x16x16_iu4 v[41:48], v[102:103], v[73:74], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[102:103], v[75:76], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[102:103], v[77:78], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v105, v105, 16, v104
	v_wmma_i32_16x16x16_iu4 v[9:16], v[102:103], v[79:80], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v138, v107, v106, 0xc0c0004
	v_perm_b32 v119, v129, v128, 0xc0c0004
	v_perm_b32 v106, v111, v110, 0xc0c0004
	v_perm_b32 v107, v109, v108, 0xc0c0004
	v_perm_b32 v108, v117, v116, 0xc0c0004
	v_perm_b32 v109, v115, v114, 0xc0c0004
	v_lshl_or_b32 v104, v119, 16, v118
	ds_load_u8 v118, v97 offset:8064
	ds_load_u8 v119, v97 offset:7808
	ds_load_u8 v128, v97 offset:7552
	ds_load_u8 v129, v97 offset:7296
	ds_load_u8 v110, v97 offset:6400
	ds_load_u8 v111, v97 offset:6144
	ds_load_u8 v114, v97 offset:6912
	ds_load_u8 v115, v97 offset:6656
	v_perm_b32 v116, v121, v120, 0xc0c0004
	ds_load_u8 v117, v97 offset:7040
	ds_load_u8 v120, v97 offset:6784
	ds_load_u8 v121, v97 offset:6528
	ds_load_u8 v97, v97 offset:6272
	v_lshl_or_b32 v107, v107, 16, v106
	v_lshl_or_b32 v106, v109, 16, v108
	v_perm_b32 v108, v123, v122, 0xc0c0004
	v_perm_b32 v122, v127, v126, 0xc0c0004
	v_perm_b32 v123, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[106:107], v[65:66], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v66, v116, 16, v108
	v_perm_b32 v108, v135, v134, 0xc0c0004
	v_lshl_or_b32 v65, v123, 16, v122
	v_perm_b32 v116, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v122, v137, v136, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[106:107], v[67:68], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[106:107], v[69:70], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[106:107], v[71:72], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v111, v115, v114, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[73:74], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v74, v116, 16, v108
	v_lshl_or_b32 v73, v112, 16, v122
	v_perm_b32 v112, v129, v128, 0xc0c0004
	v_perm_b32 v113, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v97, v121, 0xc0c0004
	v_perm_b32 v114, v120, v117, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[65:66], v[75:76], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[77:78], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[65:66], v[79:80], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[104:105], v[81:82], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v109, v130, 16, v138
	v_lshl_or_b32 v108, v111, 16, v110
	v_wmma_i32_16x16x16_iu4 v[57:64], v[73:74], v[81:82], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v82, v113, 16, v112
	v_lshl_or_b32 v81, v114, 16, v97
	v_wmma_i32_16x16x16_iu4 v[49:56], v[104:105], v[83:84], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[73:74], v[83:84], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[104:105], v[85:86], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[85:86], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[104:105], v[87:88], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[73:74], v[87:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[108:109], v[89:90], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[89:90], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[108:109], v[91:92], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[81:82], v[91:92], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[108:109], v[98:99], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[98:99], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[108:109], v[100:101], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[100:101], v[1:8] neg_lo:[1,1,0]
.LBB0_9:
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v65, s28, v95
	.loc	1 1404 21                       ; ragged.py:1404:21
	v_add_lshl_u32 v66, s9, v95, 1
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v69, 16, v65
	v_or_b32_e32 v68, 32, v65
	v_or_b32_e32 v67, 48, v65
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s3, s24, v65
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v70, 32, v66
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s2, s24, v69
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v71, 64, v66
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s24, v68
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v65, 0x80000000, v66, s3
	v_add_nc_u32_e32 v66, 0x60, v66
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s24, v67
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v69, 0x80000000, v70, s2
	.loc	1 1411 33                       ; ragged.py:1411:33
	s_mul_i32 s4, s26, s25
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v68, 0x80000000, v71, s1
	s_and_b32 s45, s17, 0xffff
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	s_mov_b32 s44, s16
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s4, s27, s4
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v85, v1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshlrev_b32_e32 v1, 5, v0
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_clause 0x3
	buffer_load_u16 v65, v65, s[44:47], 0 offen
	buffer_load_u16 v67, v69, s[44:47], 0 offen
	buffer_load_u16 v68, v68, s[44:47], 0 offen
	buffer_load_u16 v66, v66, s[44:47], 0 offen
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v69, s4, v0, 1
	s_and_b32 s45, s19, 0xffff
	s_mov_b32 s44, s18
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_b32_e32 v70, 0xf0, v0
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v69, 0x80000000, v69, s0
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v86, v2
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v2, s25, v95
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v71, v17
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v17, 1, v70
	.loc	1 1410 36                       ; ragged.py:1410:36
	buffer_load_u16 v69, v69, s[44:47], 0 offen
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s0, s9, s25
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v74, v20
	v_cvt_f32_i32_e32 v75, v21
	v_cvt_f32_i32_e32 v87, v3
	v_cvt_f32_i32_e32 v88, v4
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v20, 28, v96
	v_and_b32_e32 v1, 32, v1
	v_lshl_add_u32 v21, v70, 2, 0
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v3, s0, s27, v2
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v4, 0x87, v17
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_add3_u32 v94, v21, v1, v20
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s25, 48, v[3:4]
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s27, v4
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
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v77, v9
	v_cvt_f32_i32_e32 v78, v10
	v_cvt_f32_i32_e32 v79, v11
	v_cvt_f32_i32_e32 v80, v12
	v_cvt_f32_i32_e32 v81, v13
	v_cvt_f32_i32_e32 v82, v14
	v_cvt_f32_i32_e32 v83, v15
	v_cvt_f32_i32_e32 v89, v5
	v_cvt_f32_i32_e32 v90, v6
	v_cvt_f32_i32_e32 v91, v7
	v_cvt_f32_i32_e32 v92, v8
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v5, 0x86, v17
	v_or_b32_e32 v6, 0x85, v17
	v_or_b32_e32 v7, 0x84, v17
	v_or_b32_e32 v8, 0x83, v17
	v_or_b32_e32 v9, 0x82, v17
	v_or_b32_e32 v10, 0x81, v17
	v_or_b32_e32 v11, 0x80, v17
	v_or_b32_e32 v12, 7, v17
	v_or_b32_e32 v13, 6, v17
	v_or_b32_e32 v14, 5, v17
	v_or_b32_e32 v15, 4, v17
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s25, v2
	.loc	1 1401 19                       ; ragged.py:1401:19
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
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v72, v18
	v_cvt_f32_i32_e32 v73, v19
	v_cvt_f32_i32_e32 v76, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v93, s27, v17
	v_or_b32_e32 v95, s27, v5
	v_or_b32_e32 v96, s27, v6
	v_or_b32_e32 v97, s27, v7
	v_or_b32_e32 v98, s27, v8
	v_or_b32_e32 v99, s27, v9
	v_or_b32_e32 v100, s27, v10
	v_or_b32_e32 v101, s27, v11
	v_or_b32_e32 v102, s27, v12
	v_or_b32_e32 v103, s27, v13
	v_or_b32_e32 v104, s27, v14
	v_or_b32_e32 v105, s27, v15
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v84, v16
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s16, s25, v93
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s4, s25, v95
	v_cmp_gt_i32_e64 s5, s25, v96
	v_cmp_gt_i32_e64 s6, s25, v97
	v_cmp_gt_i32_e64 s7, s25, v98
	v_cmp_gt_i32_e64 s9, s25, v100
	v_cmp_gt_i32_e64 s10, s25, v101
	v_cmp_gt_i32_e64 s11, s25, v102
	v_cmp_gt_i32_e64 s12, s25, v103
	v_cmp_gt_i32_e64 s13, s25, v104
	v_cmp_gt_i32_e64 s14, s25, v105
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v16, 3, v17
	v_or_b32_e32 v18, 2, v17
	v_or_b32_e32 v19, 1, v17
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v20, s25, 5, v3
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_mov_b16_e32 v22.h, 0
	.loc	1 1310 18 is_stmt 1             ; ragged.py:1310:18
	v_or_b32_e32 v106, s27, v16
	v_or_b32_e32 v107, s27, v18
	v_or_b32_e32 v108, s27, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_and_b32 s45, s43, 0xffff
	s_mov_b32 s44, s42
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s15, s25, v106
	v_cmp_gt_i32_e64 s17, s25, v107
	v_cmp_gt_i32_e64 s18, s25, v108
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_and_b32_e32 v0, 16, v0
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v2, 16, v65
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add_nc_u32_e32 v21, s8, v3
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v65, 16, v67
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v67, 16, v68
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s25, v99
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v41, v41, v2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v70, v70, 1, 0
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v42, v42, v2
	v_mul_f32_e32 v43, v43, v2
	v_mul_f32_e32 v44, v44, v2
	v_mul_f32_e32 v45, v45, v2
	v_mul_f32_e32 v46, v46, v2
	v_dual_mul_f32 v47, v47, v2 :: v_dual_mul_f32 v52, v52, v65
	v_mul_f32_e32 v48, v48, v2
	v_dual_mul_f32 v57, v57, v2 :: v_dual_mul_f32 v54, v54, v65
	v_dual_mul_f32 v58, v58, v2 :: v_dual_mul_f32 v55, v55, v65
	v_dual_mul_f32 v59, v59, v2 :: v_dual_mul_f32 v56, v56, v65
	v_mul_f32_e32 v60, v60, v2
	v_dual_mul_f32 v61, v61, v2 :: v_dual_mul_f32 v40, v40, v65
	v_dual_mul_f32 v62, v62, v2 :: v_dual_mul_f32 v93, v35, v65
	v_dual_mul_f32 v63, v63, v2 :: v_dual_mul_f32 v68, v33, v65
	v_dual_mul_f32 v2, v64, v2 :: v_dual_mul_f32 v97, v38, v65
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v64, 16, v69
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v53, v53, v65 :: v_dual_lshlrev_b32 v66, 16, v66
	v_mul_f32_e32 v49, v49, v65
	v_mul_f32_e32 v50, v50, v65
	v_mul_f32_e32 v51, v51, v65
	v_mul_f32_e32 v69, v34, v65
	v_dual_mul_f32 v95, v36, v65 :: v_dual_mul_f32 v98, v26, v67
	v_dual_mul_f32 v96, v37, v65 :: v_dual_mul_f32 v99, v27, v67
	v_dual_mul_f32 v39, v39, v65 :: v_dual_mul_f32 v100, v28, v67
	v_mul_f32_e32 v65, v25, v67
	v_mul_f32_e32 v101, v29, v67
	v_mul_f32_e32 v102, v30, v67
	v_mul_f32_e32 v103, v31, v67
	v_mul_f32_e32 v104, v32, v67
	v_mul_f32_e32 v71, v71, v67
	v_mul_f32_e32 v72, v72, v67
	v_mul_f32_e32 v73, v73, v67
	v_mul_f32_e32 v74, v74, v67
	v_mul_f32_e32 v75, v75, v67
	v_mul_f32_e32 v76, v76, v67
	v_mul_f32_e32 v105, v23, v67
	v_mul_f32_e32 v67, v24, v67
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_store_b32 v94, v64
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[23:26], v70
	ds_load_b128 v[27:30], v70 offset:16
	ds_load_b128 v[31:34], v70 offset:512
	ds_load_b128 v[35:38], v70 offset:528
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v64, v77, v66
	v_mul_f32_e32 v70, v86, v66
	v_mul_f32_e32 v86, v88, v66
	v_mul_f32_e32 v77, v78, v66
	v_mul_f32_e32 v78, v79, v66
	v_mul_f32_e32 v79, v80, v66
	v_mul_f32_e32 v80, v81, v66
	v_mul_f32_e32 v81, v82, v66
	v_mul_f32_e32 v82, v83, v66
	v_mul_f32_e32 v83, v84, v66
	v_mul_f32_e32 v84, v85, v66
	v_mul_f32_e32 v85, v87, v66
	v_mul_f32_e32 v87, v89, v66
	v_mul_f32_e32 v88, v90, v66
	v_mul_f32_e32 v89, v91, v66
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v66, v92, v66 :: v_dual_mul_f32 v43, v43, v25
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v41, v41, v23
	v_dual_mul_f32 v51, v51, v25 :: v_dual_mul_f32 v52, v52, v26
	v_dual_mul_f32 v49, v49, v23 :: v_dual_mul_f32 v50, v50, v24
	v_mul_f32_e32 v42, v42, v24
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v44, v44, v26 :: v_dual_mul_f32 v45, v45, v27
	v_dual_mul_f32 v47, v47, v29 :: v_dual_mul_f32 v48, v48, v30
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v90, v93, v33 :: v_dual_mul_f32 v91, v95, v34
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v92, v96, v35 :: v_dual_mul_f32 v93, v97, v36
	v_dual_mul_f32 v65, v65, v23 :: v_dual_mul_f32 v94, v98, v24
	v_dual_mul_f32 v95, v99, v25 :: v_dual_mul_f32 v96, v100, v26
	v_dual_mul_f32 v99, v103, v29 :: v_dual_mul_f32 v100, v104, v30
	v_mul_f32_e32 v23, v64, v23
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v64, v41, 16, 1
	v_bfe_u32 v104, v51, 16, 1
	v_bfe_u32 v103, v50, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v46, v46, v28 :: v_dual_mul_f32 v59, v59, v33
	v_dual_mul_f32 v60, v60, v34 :: v_dual_mul_f32 v63, v63, v37
	v_dual_mul_f32 v2, v2, v38 :: v_dual_mul_f32 v53, v53, v27
	v_dual_mul_f32 v54, v54, v28 :: v_dual_mul_f32 v39, v39, v37
	v_dual_mul_f32 v40, v40, v38 :: v_dual_mul_f32 v97, v101, v27
	v_dual_mul_f32 v98, v102, v28 :: v_dual_mul_f32 v73, v73, v33
	v_dual_mul_f32 v74, v74, v34 :: v_dual_mul_f32 v101, v105, v37
	v_mul_f32_e32 v26, v79, v26
	v_dual_mul_f32 v67, v67, v38 :: v_dual_mul_f32 v24, v77, v24
	v_mul_f32_e32 v28, v81, v28
	v_dual_mul_f32 v33, v85, v33 :: v_dual_mul_f32 v38, v66, v38
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s19, v41, v41
	v_bfe_u32 v66, v42, 16, 1
	v_bfe_u32 v77, v44, 16, 1
	v_bfe_u32 v81, v48, 16, 1
	v_bfe_u32 v102, v49, 16, 1
	v_cmp_o_f32_e64 s38, v51, v51
	v_bfe_u32 v105, v52, 16, 1
	v_add3_u32 v41, v41, v64, 0x7fff
	v_add3_u32 v51, v51, v104, 0x7fff
	v_cmp_o_f32_e64 s37, v50, v50
	v_add3_u32 v50, v50, v103, 0x7fff
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v57, v57, v31 :: v_dual_mul_f32 v58, v58, v32
	v_dual_mul_f32 v55, v55, v29 :: v_dual_mul_f32 v56, v56, v30
	v_dual_mul_f32 v68, v68, v31 :: v_dual_mul_f32 v69, v69, v32
	v_dual_mul_f32 v71, v71, v31 :: v_dual_mul_f32 v72, v72, v32
	v_dual_mul_f32 v27, v80, v27 :: v_dual_mul_f32 v32, v70, v32
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s20, v42, v42
	v_bfe_u32 v70, v43, 16, 1
	v_cmp_o_f32_e64 s22, v44, v44
	v_cmp_o_f32_e64 s26, v48, v48
	v_cmp_o_f32_e64 s36, v49, v49
	v_bfe_u32 v106, v53, 16, 1
	v_add3_u32 v42, v42, v66, 0x7fff
	v_add3_u32 v44, v44, v77, 0x7fff
	v_add3_u32 v48, v48, v81, 0x7fff
	v_add3_u32 v49, v49, v102, 0x7fff
	v_add3_u32 v64, v52, v105, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s19
	v_cmp_o_f32_e64 s19, v52, v52
	v_cndmask_b16 v50.l, 0x7fff, v51.h, s38
	v_bfe_u32 v51, v54, 16, 1
	v_cmp_o_f32_e64 s21, v43, v43
	v_add3_u32 v43, v43, v70, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v42.h, s20
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s22
	v_cndmask_b16 v44.h, 0x7fff, v48.h, s26
	v_cndmask_b16 v48.l, 0x7fff, v49.h, s36
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s37
	v_add3_u32 v49, v53, v106, 0x7fff
	v_cmp_o_f32_e64 s20, v53, v53
	v_cndmask_b16 v50.h, 0x7fff, v64.h, s19
	v_bfe_u32 v52, v55, 16, 1
	v_bfe_u32 v53, v56, 16, 1
	v_add3_u32 v51, v54, v51, 0x7fff
	v_cmp_o_f32_e64 s19, v54, v54
	v_cndmask_b16 v42.l, 0x7fff, v43.h, s21
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s20
	v_add3_u32 v52, v55, v52, 0x7fff
	v_cmp_o_f32_e64 s20, v55, v55
	v_add3_u32 v53, v56, v53, 0x7fff
	v_cmp_o_f32_e64 s21, v56, v56
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s19
	v_bfe_u32 v51, v68, 16, 1
	v_cndmask_b16 v52.l, 0x7fff, v52.h, s20
	v_bfe_u32 v54, v69, 16, 1
	v_cndmask_b16 v52.h, 0x7fff, v53.h, s21
	v_bfe_u32 v53, v90, 16, 1
	v_add3_u32 v51, v68, v51, 0x7fff
	v_cmp_o_f32_e64 s19, v68, v68
	v_bfe_u32 v55, v91, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v29, v82, v29
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v82, v57, 16, 1
	v_add3_u32 v54, v69, v54, 0x7fff
	v_cmp_o_f32_e64 s20, v69, v69
	v_add3_u32 v53, v90, v53, 0x7fff
	v_cmp_o_f32_e64 s21, v90, v90
	v_cndmask_b16 v51.l, 0x7fff, v51.h, s19
	v_add3_u32 v55, v91, v55, 0x7fff
	v_cmp_o_f32_e64 s19, v91, v91
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v25, v78, v25 :: v_dual_mul_f32 v30, v83, v30
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v78, v45, 16, 1
	v_cmp_o_f32_e64 s27, v57, v57
	v_add3_u32 v57, v57, v82, 0x7fff
	v_cndmask_b16 v51.h, 0x7fff, v54.h, s20
	v_bfe_u32 v54, v92, 16, 1
	v_cndmask_b16 v53.l, 0x7fff, v53.h, s21
	v_bfe_u32 v56, v93, 16, 1
	v_cndmask_b16 v53.h, 0x7fff, v55.h, s19
	v_bfe_u32 v55, v39, 16, 1
	v_cmp_o_f32_e64 s23, v45, v45
	v_add3_u32 v45, v45, v78, 0x7fff
	v_cndmask_b16 v45.l, 0x7fff, v57.h, s27
	v_bfe_u32 v57, v40, 16, 1
	v_add3_u32 v54, v92, v54, 0x7fff
	v_cmp_o_f32_e64 s20, v92, v92
	v_add3_u32 v56, v93, v56, 0x7fff
	v_cmp_o_f32_e64 s21, v93, v93
	v_add3_u32 v55, v39, v55, 0x7fff
	v_cmp_o_f32_e64 s19, v39, v39
	v_add3_u32 v39, v40, v57, 0x7fff
	v_bfe_u32 v83, v58, 16, 1
	v_cndmask_b16 v54.l, 0x7fff, v54.h, s20
	v_cndmask_b16 v54.h, 0x7fff, v56.h, s21
	v_bfe_u32 v56, v65, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v55.h, s19
	v_bfe_u32 v55, v94, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v31, v84, v31 :: v_dual_mul_f32 v34, v86, v34
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s28, v58, v58
	v_bfe_u32 v84, v59, 16, 1
	v_add3_u32 v58, v58, v83, 0x7fff
	v_cmp_o_f32_e64 s20, v40, v40
	v_add3_u32 v40, v65, v56, 0x7fff
	v_cmp_o_f32_e64 s21, v65, v65
	v_bfe_u32 v56, v95, 16, 1
	v_bfe_u32 v57, v96, 16, 1
	v_add3_u32 v55, v94, v55, 0x7fff
	v_cmp_o_f32_e64 s19, v94, v94
	v_bfe_u32 v79, v46, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v61, v61, v35 :: v_dual_mul_f32 v62, v62, v36
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s29, v59, v59
	v_bfe_u32 v85, v60, 16, 1
	v_add3_u32 v59, v59, v84, 0x7fff
	v_cndmask_b16 v43.l, 0x7fff, v45.h, s23
	v_cndmask_b16 v45.h, 0x7fff, v58.h, s28
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s20
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s21
	v_add3_u32 v56, v95, v56, 0x7fff
	v_cmp_o_f32_e64 s20, v95, v95
	v_add3_u32 v57, v96, v57, 0x7fff
	v_cmp_o_f32_e64 s21, v96, v96
	v_cndmask_b16 v40.h, 0x7fff, v55.h, s19
	v_bfe_u32 v55, v97, 16, 1
	v_bfe_u32 v58, v98, 16, 1
	v_cmp_o_f32_e64 s24, v46, v46
	v_add3_u32 v46, v46, v79, 0x7fff
	v_cmp_o_f32_e64 s30, v60, v60
	v_bfe_u32 v86, v61, 16, 1
	v_add3_u32 v60, v60, v85, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v59.h, s29
	v_cndmask_b16 v56.l, 0x7fff, v56.h, s20
	v_cndmask_b16 v56.h, 0x7fff, v57.h, s21
	v_bfe_u32 v57, v99, 16, 1
	v_add3_u32 v55, v97, v55, 0x7fff
	v_cmp_o_f32_e64 s19, v97, v97
	v_add3_u32 v58, v98, v58, 0x7fff
	v_cmp_o_f32_e64 s20, v98, v98
	v_bfe_u32 v59, v100, 16, 1
	v_bfe_u32 v80, v47, 16, 1
	v_cmp_o_f32_e64 s31, v61, v61
	v_add3_u32 v61, v61, v86, 0x7fff
	v_cndmask_b16 v43.h, 0x7fff, v46.h, s24
	v_cndmask_b16 v46.h, 0x7fff, v60.h, s30
	v_add3_u32 v57, v99, v57, 0x7fff
	v_cmp_o_f32_e64 s21, v99, v99
	v_cndmask_b16 v55.l, 0x7fff, v55.h, s19
	v_cndmask_b16 v55.h, 0x7fff, v58.h, s20
	v_bfe_u32 v58, v71, 16, 1
	v_bfe_u32 v60, v72, 16, 1
	v_add3_u32 v59, v100, v59, 0x7fff
	v_cmp_o_f32_e64 s19, v100, v100
	v_cmp_o_f32_e64 s25, v47, v47
	v_add3_u32 v47, v47, v80, 0x7fff
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v75, v75, v35 :: v_dual_mul_f32 v76, v76, v36
	v_dual_mul_f32 v35, v87, v35 :: v_dual_mul_f32 v36, v88, v36
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v87, v62, 16, 1
	v_bfe_u32 v88, v63, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v61.h, s31
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s21
	v_add3_u32 v58, v71, v58, 0x7fff
	v_cmp_o_f32_e64 s20, v71, v71
	v_add3_u32 v60, v72, v60, 0x7fff
	v_cmp_o_f32_e64 s21, v72, v72
	v_cndmask_b16 v57.h, 0x7fff, v59.h, s19
	v_bfe_u32 v59, v73, 16, 1
	v_bfe_u32 v61, v74, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v37, v89, v37
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v89, v2, 16, 1
	v_cmp_o_f32_e64 s33, v62, v62
	v_cmp_o_f32_e64 s34, v63, v63
	v_add3_u32 v62, v62, v87, 0x7fff
	v_add3_u32 v63, v63, v88, 0x7fff
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s20
	v_cndmask_b16 v58.h, 0x7fff, v60.h, s21
	v_bfe_u32 v60, v75, 16, 1
	v_add3_u32 v59, v73, v59, 0x7fff
	v_cmp_o_f32_e64 s19, v73, v73
	v_add3_u32 v61, v74, v61, 0x7fff
	v_cmp_o_f32_e64 s20, v74, v74
	v_cmp_o_f32_e64 s35, v2, v2
	v_add3_u32 v2, v2, v89, 0x7fff
	v_cndmask_b16 v44.l, 0x7fff, v47.h, s25
	v_cndmask_b16 v47.h, 0x7fff, v62.h, s33
	v_cndmask_b16 v2.l, 0x7fff, v63.h, s34
	v_add3_u32 v60, v75, v60, 0x7fff
	v_cmp_o_f32_e64 s21, v75, v75
	v_cndmask_b16 v59.l, 0x7fff, v59.h, s19
	v_bfe_u32 v62, v76, 16, 1
	v_cndmask_b16 v59.h, 0x7fff, v61.h, s20
	v_bfe_u32 v61, v101, 16, 1
	v_bfe_u32 v63, v67, 16, 1
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s21
	v_add3_u32 v62, v76, v62, 0x7fff
	v_cmp_o_f32_e64 s19, v76, v76
	v_add3_u32 v61, v101, v61, 0x7fff
	v_cmp_o_f32_e64 s20, v101, v101
	v_add3_u32 v63, v67, v63, 0x7fff
	v_cmp_o_f32_e64 s21, v67, v67
	v_cndmask_b16 v60.h, 0x7fff, v62.h, s19
	v_bfe_u32 v62, v23, 16, 1
	v_cndmask_b16 v61.l, 0x7fff, v61.h, s20
	v_bfe_u32 v64, v24, 16, 1
	v_cndmask_b16 v61.h, 0x7fff, v63.h, s21
	v_bfe_u32 v63, v25, 16, 1
	v_add3_u32 v62, v23, v62, 0x7fff
	v_cmp_o_f32_e64 s19, v23, v23
	v_add3_u32 v23, v24, v64, 0x7fff
	v_cmp_o_f32_e64 s20, v24, v24
	v_add3_u32 v24, v25, v63, 0x7fff
	v_cmp_o_f32_e64 s21, v25, v25
	v_bfe_u32 v25, v26, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v62.h, s19
	v_bfe_u32 v62, v27, 16, 1
	v_bfe_u32 v63, v28, 16, 1
	v_cmp_o_f32_e64 s19, v26, v26
	v_add3_u32 v25, v26, v25, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s20
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s21
	v_add3_u32 v26, v27, v62, 0x7fff
	v_cmp_o_f32_e64 s20, v27, v27
	v_add3_u32 v27, v28, v63, 0x7fff
	v_cmp_o_f32_e64 s21, v28, v28
	v_cndmask_b16 v24.h, 0x7fff, v25.h, s19
	v_bfe_u32 v25, v29, 16, 1
	v_bfe_u32 v28, v30, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s20
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s21
	v_bfe_u32 v27, v31, 16, 1
	v_add3_u32 v25, v29, v25, 0x7fff
	v_cmp_o_f32_e64 s19, v29, v29
	v_add3_u32 v28, v30, v28, 0x7fff
	v_cmp_o_f32_e64 s20, v30, v30
	v_bfe_u32 v29, v32, 16, 1
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cmp_o_f32_e64 s21, v31, v31
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s19
	v_cndmask_b16 v25.h, 0x7fff, v28.h, s20
	v_bfe_u32 v28, v33, 16, 1
	v_bfe_u32 v30, v34, 16, 1
	v_add3_u32 v29, v32, v29, 0x7fff
	v_cmp_o_f32_e64 s19, v32, v32
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s21
	v_add3_u32 v28, v33, v28, 0x7fff
	v_cmp_o_f32_e64 s20, v33, v33
	v_add3_u32 v30, v34, v30, 0x7fff
	v_cmp_o_f32_e64 s21, v34, v34
	v_bfe_u32 v31, v35, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s19
	v_bfe_u32 v29, v36, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s20
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s21
	v_add3_u32 v30, v35, v31, 0x7fff
	v_bfe_u32 v31, v37, 16, 1
	v_cmp_o_f32_e64 s19, v35, v35
	v_bfe_u32 v32, v38, 16, 1
	v_add3_u32 v29, v36, v29, 0x7fff
	v_cmp_o_f32_e64 s20, v36, v36
	v_add3_u32 v31, v37, v31, 0x7fff
	v_cmp_o_f32_e64 s21, v37, v37
	v_add3_u32 v32, v38, v32, 0x7fff
	v_cmp_o_f32_e64 s22, v38, v38
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s19
	v_cmp_eq_u32_e64 s19, 0, v0
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s35
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s20
	v_cndmask_b16 v0.l, 0x7fff, v31.h, s21
	v_cndmask_b16 v0.h, 0x7fff, v32.h, s22
	v_cndmask_b32_e64 v30, v43, v41, s19
	v_cndmask_b32_e64 v31, v41, v43, s19
	v_cndmask_b32_e64 v32, v44, v42, s19
	v_cndmask_b32_e64 v33, v42, v44, s19
	v_cndmask_b32_e64 v43, v54, v51, s19
	v_cndmask_b32_e64 v44, v51, v54, s19
	v_mov_b32_e32 v54, 0x5410
	s_mov_b32 s20, 0x76543210
	v_cndmask_b32_e64 v34, v47, v45, s19
	v_cndmask_b32_e64 v35, v45, v47, s19
	v_cndmask_b32_e64 v36, v2, v46, s19
	v_cndmask_b32_e64 v2, v46, v2, s19
	v_cndmask_b32_e64 v45, v39, v53, s19
	v_cndmask_b32_e64 v39, v53, v39, s19
	v_cndmask_b32_e64 v46, v55, v40, s19
	v_cndmask_b32_e64 v40, v40, v55, s19
	v_cndmask_b32_e64 v53, v26, v23, s19
	v_cndmask_b32_e64 v23, v23, v26, s19
	v_cndmask_b32_e64 v26, v25, v24, s19
	v_cndmask_b32_e64 v24, v24, v25, s19
	v_cndmask_b32_e64 v25, v29, v27, s19
	v_cndmask_b32_e64 v27, v27, v29, s19
	v_cndmask_b32_e64 v29, v0, v28, s19
	v_cndmask_b32_e64 v0, v28, v0, s19
	v_permlanex16_b32 v28, v31, s20, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v31, 0x1054, v54, s19
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_add_lshl_u32 v3, v3, v17, 1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b32_e32 v55, 0x7632
	v_cndmask_b32_e64 v37, v49, v48, s19
	v_cndmask_b32_e64 v38, v48, v49, s19
	v_lshl_or_b32 v31, v31, 8, v31
	v_add_nc_u32_e32 v84, 2, v3
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	v_cndmask_b32_e64 v41, v52, v50, s19
	v_cndmask_b32_e64 v42, v50, v52, s19
	v_and_b32_e32 v31, 0x540054, v31
	v_cndmask_b32_e64 v48, v56, v57, s19
	v_lshl_or_b32 v54, v54, 8, v54
	v_cndmask_b32_e64 v50, v58, v60, s19
	v_cndmask_b32_e64 v52, v59, v61, s19
	v_lshl_or_b32 v31, v31, 4, v31
	v_cndmask_b32_e64 v47, v57, v56, s19
	v_and_b32_e32 v54, 0x760076, v54
	v_cndmask_b32_e64 v49, v60, v58, s19
	v_cndmask_b32_e64 v51, v61, v59, s19
	v_and_b32_e32 v31, 0x5040504, v31
	v_permlanex16_b32 v33, v33, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v54, v54, 4, v54
	v_permlanex16_b32 v35, v35, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v2, v2, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v38, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v42, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v44, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v39, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v40, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v48, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v50, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v52, v52, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v24, v24, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v28, v30, v31
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s19, s3, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_nc_u32_e32 v85, 4, v3
	v_cndmask_b32_e64 v86, 0x80000000, v3, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v28, v28, v30, v54
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v30, v33, v32, v31
	v_perm_b32 v32, v33, v32, v54
	v_perm_b32 v33, v35, v34, v31
	v_perm_b32 v34, v35, v34, v54
	v_perm_b32 v35, v2, v36, v31
	v_perm_b32 v2, v2, v36, v54
	v_perm_b32 v36, v38, v37, v31
	v_perm_b32 v37, v38, v37, v54
	v_perm_b32 v38, v42, v41, v31
	v_perm_b32 v41, v42, v41, v54
	v_perm_b32 v42, v44, v43, v31
	v_perm_b32 v43, v44, v43, v54
	v_perm_b32 v44, v39, v45, v31
	v_perm_b32 v39, v39, v45, v54
	v_perm_b32 v45, v40, v46, v31
	v_perm_b32 v40, v40, v46, v54
	v_perm_b32 v46, v48, v47, v31
	v_perm_b32 v47, v48, v47, v54
	v_perm_b32 v48, v50, v49, v31
	v_perm_b32 v49, v50, v49, v54
	v_perm_b32 v50, v52, v51, v31
	v_perm_b32 v51, v52, v51, v54
	v_perm_b32 v52, v23, v53, v31
	v_perm_b32 v23, v23, v53, v54
	v_perm_b32 v53, v24, v26, v31
	v_perm_b32 v24, v24, v26, v54
	v_perm_b32 v26, v27, v25, v31
	v_perm_b32 v25, v27, v25, v54
	v_perm_b32 v27, v0, v29, v31
	v_perm_b32 v0, v0, v29, v54
	v_mov_b16_e32 v29.l, v55.h
	v_mov_b16_e32 v29.h, v22.h
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	buffer_store_b16 v55, v86, s[44:47], 0 offen
	v_add_nc_u32_e32 v55, 6, v3
	v_mov_b16_e32 v22.l, v28.h
	s_clause 0x1
	buffer_store_b16 v29, v84, s[44:47], 0 offen
	buffer_store_b16 v28, v85, s[44:47], 0 offen
	v_add_nc_u32_e32 v28, 8, v3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_nc_u32_e32 v84, 12, v3
	v_cndmask_b32_e64 v29, 0x80000000, v55, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_nc_u32_e32 v55, 10, v3
	v_cndmask_b32_e64 v28, 0x80000000, v28, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v31.h, v22.h
	v_mov_b16_e32 v54.h, v22.h
	v_mov_b16_e32 v56.h, v22.h
	v_mov_b16_e32 v57.h, v22.h
	v_mov_b16_e32 v58.h, v22.h
	v_mov_b16_e32 v59.h, v22.h
	v_mov_b16_e32 v60.h, v22.h
	v_mov_b16_e32 v61.h, v22.h
	v_mov_b16_e32 v62.h, v22.h
	v_mov_b16_e32 v63.h, v22.h
	v_mov_b16_e32 v64.h, v22.h
	v_mov_b16_e32 v65.h, v22.h
	v_mov_b16_e32 v66.h, v22.h
	v_mov_b16_e32 v67.h, v22.h
	v_mov_b16_e32 v68.h, v22.h
	v_mov_b16_e32 v69.h, v22.h
	v_mov_b16_e32 v70.h, v22.h
	v_mov_b16_e32 v71.h, v22.h
	v_mov_b16_e32 v72.h, v22.h
	v_mov_b16_e32 v73.h, v22.h
	v_mov_b16_e32 v74.h, v22.h
	v_mov_b16_e32 v75.h, v22.h
	v_mov_b16_e32 v76.h, v22.h
	v_mov_b16_e32 v77.h, v22.h
	v_mov_b16_e32 v78.h, v22.h
	v_mov_b16_e32 v79.h, v22.h
	v_mov_b16_e32 v80.h, v22.h
	v_mov_b16_e32 v81.h, v22.h
	v_mov_b16_e32 v82.h, v22.h
	v_mov_b16_e32 v83.h, v22.h
	s_clause 0x1
	buffer_store_b16 v22, v29, s[44:47], 0 offen
	buffer_store_b16 v30, v28, s[44:47], 0 offen
	v_add_nc_u32_e32 v22, 14, v3
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_nc_u32_e32 v28, 0x100, v3
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_nc_u32_e32 v29, 0x102, v3
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v31.l, v32.h
	v_mov_b16_e32 v54.l, v30.h
	v_add_nc_u32_e32 v30, 0x104, v3
	v_cndmask_b32_e64 v28, 0x80000000, v28, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v57.l, v33.h
	v_cndmask_b32_e64 v29, 0x80000000, v29, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v54, v55, s[44:47], 0 offen
	buffer_store_b16 v32, v84, s[44:47], 0 offen
	v_cndmask_b32_e64 v30, 0x80000000, v30, s19
	s_clause 0x1
	buffer_store_b16 v31, v22, s[44:47], 0 offen
	buffer_store_b16 v33, v28, s[44:47], 0 offen
	v_add_nc_u32_e32 v22, 0x106, v3
	v_add_nc_u32_e32 v28, 0x108, v3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v57, v29, s[44:47], 0 offen
	buffer_store_b16 v34, v30, s[44:47], 0 offen
	v_add_nc_u32_e32 v29, 0x10a, v3
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_nc_u32_e32 v30, 0x10c, v3
	v_cndmask_b32_e64 v28, 0x80000000, v28, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v56.l, v34.h
	v_cndmask_b32_e64 v29, 0x80000000, v29, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v59.l, v35.h
	v_cndmask_b32_e64 v30, 0x80000000, v30, s19
	v_add_nc_u32_e32 v3, 0x10e, v3
	v_mov_b16_e32 v58.l, v2.h
	s_clause 0x3
	buffer_store_b16 v56, v22, s[44:47], 0 offen
	buffer_store_b16 v35, v28, s[44:47], 0 offen
	buffer_store_b16 v59, v29, s[44:47], 0 offen
	buffer_store_b16 v2, v30, s[44:47], 0 offen
	v_add_lshl_u32 v2, v21, v17, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s3, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v22, v21, v19, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v28, v21, v18, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v58, v3, s[44:47], 0 offen
	buffer_store_b16 v36, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v21, v16, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v61.l, v36.h
	v_add_lshl_u32 v3, v21, v15, 1
	v_cndmask_b32_e64 v28, 0x80000000, v28, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v60.l, v37.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v61, v22, s[44:47], 0 offen
	buffer_store_b16 v37, v28, s[44:47], 0 offen
	v_add_lshl_u32 v22, v21, v14, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v28, v21, v13, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v60, v2, s[44:47], 0 offen
	buffer_store_b16 v38, v3, s[44:47], 0 offen
	v_add_lshl_u32 v2, v21, v12, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v63.l, v38.h
	v_add_lshl_u32 v3, v21, v11, 1
	v_cndmask_b32_e64 v28, 0x80000000, v28, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v62.l, v41.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v63, v22, s[44:47], 0 offen
	buffer_store_b16 v41, v28, s[44:47], 0 offen
	v_add_lshl_u32 v22, v21, v10, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v28, v21, v9, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v62, v2, s[44:47], 0 offen
	buffer_store_b16 v42, v3, s[44:47], 0 offen
	v_add_lshl_u32 v2, v21, v8, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v21, v7, 1
	v_cndmask_b32_e64 v28, 0x80000000, v28, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v65.l, v42.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v64.l, v43.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	s_clause 0x1
	buffer_store_b16 v65, v22, s[44:47], 0 offen
	buffer_store_b16 v43, v28, s[44:47], 0 offen
	v_add_lshl_u32 v22, v21, v6, 1
	v_add_lshl_u32 v28, v21, v5, 1
	s_clause 0x1
	buffer_store_b16 v64, v2, s[44:47], 0 offen
	buffer_store_b16 v44, v3, s[44:47], 0 offen
	v_add_lshl_u32 v2, v21, v4, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v20, v17, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s4
	s_and_b32 s2, s2, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v67.l, v44.h
	v_cndmask_b32_e64 v28, 0x80000000, v28, s3
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v66.l, v39.h
	v_add_lshl_u32 v21, v20, v19, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	s_clause 0x1
	buffer_store_b16 v67, v22, s[44:47], 0 offen
	buffer_store_b16 v39, v28, s[44:47], 0 offen
	v_add_lshl_u32 v22, v20, v18, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v66, v2, s[44:47], 0 offen
	buffer_store_b16 v45, v3, s[44:47], 0 offen
	v_add_lshl_u32 v2, v20, v16, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v69.l, v45.h
	v_add_lshl_u32 v3, v20, v15, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v68.l, v40.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v69, v21, s[44:47], 0 offen
	buffer_store_b16 v40, v22, s[44:47], 0 offen
	v_add_lshl_u32 v21, v20, v14, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_add_lshl_u32 v22, v20, v13, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v68, v2, s[44:47], 0 offen
	buffer_store_b16 v46, v3, s[44:47], 0 offen
	v_add_lshl_u32 v2, v20, v12, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v71.l, v46.h
	v_add_lshl_u32 v3, v20, v11, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v70.l, v47.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v71, v21, s[44:47], 0 offen
	buffer_store_b16 v47, v22, s[44:47], 0 offen
	v_add_lshl_u32 v21, v20, v10, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_add_lshl_u32 v22, v20, v9, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v70, v2, s[44:47], 0 offen
	buffer_store_b16 v48, v3, s[44:47], 0 offen
	v_add_lshl_u32 v2, v20, v8, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v20, v7, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v73.l, v48.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v72.l, v49.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	s_clause 0x1
	buffer_store_b16 v73, v21, s[44:47], 0 offen
	buffer_store_b16 v49, v22, s[44:47], 0 offen
	v_add_lshl_u32 v21, v20, v6, 1
	s_clause 0x1
	buffer_store_b16 v72, v2, s[44:47], 0 offen
	buffer_store_b16 v50, v3, s[44:47], 0 offen
	v_add_lshl_u32 v2, v20, v4, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v22, v20, v5, 1
	v_add_lshl_u32 v3, v1, v17, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s4
	s_and_b32 s1, s1, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v74.l, v51.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v75.l, v50.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	v_add_lshl_u32 v17, v1, v19, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	v_add_lshl_u32 v18, v1, v18, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x3
	buffer_store_b16 v75, v21, s[44:47], 0 offen
	buffer_store_b16 v51, v22, s[44:47], 0 offen
	buffer_store_b16 v74, v2, s[44:47], 0 offen
	buffer_store_b16 v52, v3, s[44:47], 0 offen
	v_add_lshl_u32 v2, v1, v16, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v15, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v76.l, v23.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v77.l, v52.h
	v_add_lshl_u32 v14, v1, v14, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	v_add_lshl_u32 v13, v1, v13, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x3
	buffer_store_b16 v77, v17, s[44:47], 0 offen
	buffer_store_b16 v23, v18, s[44:47], 0 offen
	buffer_store_b16 v76, v2, s[44:47], 0 offen
	buffer_store_b16 v53, v3, s[44:47], 0 offen
	v_add_lshl_u32 v2, v1, v12, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v11, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v78.l, v24.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v79.l, v53.h
	v_add_lshl_u32 v10, v1, v10, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	v_add_lshl_u32 v9, v1, v9, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x3
	buffer_store_b16 v79, v14, s[44:47], 0 offen
	buffer_store_b16 v24, v13, s[44:47], 0 offen
	buffer_store_b16 v78, v2, s[44:47], 0 offen
	buffer_store_b16 v26, v3, s[44:47], 0 offen
	v_add_lshl_u32 v2, v1, v8, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v7, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v6, v1, v6, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v5, v1, v5, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	v_add_lshl_u32 v1, v1, v4, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v80.l, v25.h
	v_mov_b16_e32 v81.l, v26.h
	v_cndmask_b32_e64 v4, 0x80000000, v6, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v83.l, v27.h
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s1
	v_mov_b16_e32 v82.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x6
	buffer_store_b16 v81, v10, s[44:47], 0 offen
	buffer_store_b16 v25, v9, s[44:47], 0 offen
	buffer_store_b16 v80, v2, s[44:47], 0 offen
	buffer_store_b16 v27, v3, s[44:47], 0 offen
	buffer_store_b16 v83, v4, s[44:47], 0 offen
	buffer_store_b16 v0, v5, s[44:47], 0 offen
	buffer_store_b16 v82, v1, s[44:47], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 157
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 157
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 101
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15248
; TotalNumSgprs: 103
; NumVgprs: 157
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 103
; NumVGPRsForWavesPerEU: 157
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     103
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_bfloat16_scalar_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     157
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
