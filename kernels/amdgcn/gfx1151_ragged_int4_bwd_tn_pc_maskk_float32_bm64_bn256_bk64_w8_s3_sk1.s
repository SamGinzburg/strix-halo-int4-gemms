	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v95, 63, v0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v93, 15, v0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_b32_e32 v97, 0xe0, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v96, 0xc0, v0
	v_lshlrev_b32_e32 v94, 1, v0
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
	s_sub_i32 s30, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s30, s4
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
	s_ashr_i32 s31, s30, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s6, s4, s8
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s7, s6, s5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[4:5], s[30:31], 2
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s2, s2, s7
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s33, s6, 6
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s31, s2, 8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s20, s4
	s_addc_u32 s5, s21, s5
	s_load_b32 s20, s[4:5], 0x0
	s_clause 0x1
	s_load_b32 s4, s[0:1], 0x38
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s33, v95
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v65, s31, v0
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s2, s3, 5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s28, v1
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s0, s20, 31
	s_lshr_b32 s0, s0, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s0, s20, s0
	s_ashr_i32 s3, s0, 6
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s29, v65
	.loc	1 1349 39                       ; ragged.py:1349:39
	s_lshl_b32 s21, s3, 5
	.loc	1 1355 39                       ; ragged.py:1355:39
	s_mul_i32 s3, s30, s4
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_ge_i32 s2, s21
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mad_u64_u32 v[66:67], null, s29, 3, v[65:66]
	v_lshrrev_b32_e32 v2, 1, v0
	v_lshrrev_b32_e32 v7, 2, v0
	.loc	1 1317 18 is_stmt 1             ; ragged.py:1317:18
	v_lshrrev_b32_e32 v1, 3, v96
	v_lshl_add_u32 v5, v95, 5, 0
	v_lshl_add_u32 v121, s29, 1, v65
	v_xor_b32_e32 v2, v94, v2
	v_mad_u64_u32 v[67:68], null, s29, 5, v[65:66]
	v_mad_u64_u32 v[68:69], null, s29, 6, v[65:66]
	v_mad_u64_u32 v[69:70], null, s29, 7, v[65:66]
	v_mad_u64_u32 v[70:71], null, s29, 9, v[65:66]
	v_mad_u64_u32 v[71:72], null, s29, 10, v[65:66]
	v_mad_u64_u32 v[72:73], null, s29, 11, v[65:66]
	v_mad_u64_u32 v[73:74], null, s29, 12, v[65:66]
	v_xor_b32_e32 v7, v94, v7
	v_mad_u64_u32 v[74:75], null, s29, 13, v[65:66]
	v_mad_u64_u32 v[75:76], null, s29, 14, v[65:66]
	v_mad_u64_u32 v[76:77], null, s29, 15, v[65:66]
	v_mad_u64_u32 v[77:78], null, s29, 17, v[65:66]
	v_mad_u64_u32 v[78:79], null, s29, 18, v[65:66]
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v2, 24, v2
	v_lshlrev_b32_e32 v3, 5, v93
	v_lshlrev_b32_e32 v15, 4, v97
	v_and_b32_e32 v7, 24, v7
	v_mad_u64_u32 v[79:80], null, s29, 19, v[65:66]
	v_mad_u64_u32 v[80:81], null, s29, 20, v[65:66]
	v_mad_u64_u32 v[81:82], null, s29, 21, v[65:66]
	v_mad_u64_u32 v[82:83], null, s29, 22, v[65:66]
	v_mad_u64_u32 v[83:84], null, s29, 23, v[65:66]
	v_mul_lo_u32 v125, s28, v1
	v_xor_b32_e32 v1, v2, v1
	v_lshl_or_b32 v2, v0, 5, v2
	v_mov_b32_e32 v26, v25
	v_and_or_b32 v4, v94, 24, v3
	v_mov_b32_e32 v28, v25
	v_mov_b32_e32 v30, v25
	v_or3_b32 v3, v7, v15, v3
	v_mad_u64_u32 v[84:85], null, s29, 24, v[65:66]
	v_mad_u64_u32 v[85:86], null, s29, 25, v[65:66]
	v_mad_u64_u32 v[86:87], null, s29, 26, v[65:66]
	v_mad_u64_u32 v[87:88], null, s29, 27, v[65:66]
	v_mad_u64_u32 v[88:89], null, s29, 28, v[65:66]
	v_xor_b32_e32 v6, 8, v4
	v_xor_b32_e32 v8, 16, v4
	v_xor_b32_e32 v9, 24, v4
	v_xor_b32_e32 v10, 0x208, v4
	v_xor_b32_e32 v11, 0x218, v4
	v_xor_b32_e32 v12, 0x210, v4
	v_xor_b32_e32 v13, 0x410, v4
	v_xor_b32_e32 v14, 0x418, v4
	v_xor_b32_e32 v16, 0x408, v4
	v_xor_b32_e32 v17, 0x618, v4
	v_xor_b32_e32 v18, 0x610, v4
	v_xor_b32_e32 v7, 0x608, v4
	v_xor_b32_e32 v15, 8, v2
	v_xor_b32_e32 v19, 16, v2
	v_xor_b32_e32 v20, 24, v2
	v_xor_b32_e32 v21, 8, v3
	v_xor_b32_e32 v22, 16, v3
	v_xor_b32_e32 v23, 24, v3
	v_mad_u64_u32 v[89:90], null, s29, 29, v[65:66]
	v_mad_u64_u32 v[90:91], null, s29, 30, v[65:66]
	v_mad_u64_u32 v[91:92], null, s29, 31, v[65:66]
	v_add_nc_u32_e32 v98, v5, v1
	v_dual_mov_b32 v32, v25 :: v_dual_add_nc_u32 v99, 0, v4
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v100, 0, v6
	v_dual_mov_b32 v58, v25 :: v_dual_add_nc_u32 v101, 0, v8
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v102, 0, v9
	v_dual_mov_b32 v60, v25 :: v_dual_add_nc_u32 v103, 0, v10
	v_dual_mov_b32 v31, v25 :: v_dual_add_nc_u32 v104, 0, v11
	v_dual_mov_b32 v62, v25 :: v_dual_add_nc_u32 v105, 0, v12
	v_dual_mov_b32 v57, v25 :: v_dual_add_nc_u32 v106, 0, v13
	v_dual_mov_b32 v64, v25 :: v_dual_add_nc_u32 v107, 0, v14
	v_dual_mov_b32 v59, v25 :: v_dual_add_nc_u32 v108, 0, v16
	v_dual_mov_b32 v50, v25 :: v_dual_add_nc_u32 v109, 0, v17
	v_dual_mov_b32 v61, v25 :: v_dual_add_nc_u32 v110, 0, v18
	v_dual_mov_b32 v52, v25 :: v_dual_add_nc_u32 v111, 0, v7
	v_dual_mov_b32 v63, v25 :: v_dual_add_nc_u32 v112, 0, v2
	v_dual_mov_b32 v54, v25 :: v_dual_add_nc_u32 v113, 0, v15
	v_dual_mov_b32 v49, v25 :: v_dual_add_nc_u32 v114, 0, v19
	v_dual_mov_b32 v56, v25 :: v_dual_add_nc_u32 v115, 0, v20
	v_dual_mov_b32 v51, v25 :: v_dual_add_nc_u32 v116, 0, v3
	v_dual_mov_b32 v42, v25 :: v_dual_add_nc_u32 v117, 0, v21
	v_dual_mov_b32 v53, v25 :: v_dual_add_nc_u32 v118, 0, v22
	v_dual_mov_b32 v44, v25 :: v_dual_add_nc_u32 v119, 0, v23
	v_dual_mov_b32 v55, v25 :: v_dual_add_nc_u32 v120, s29, v65
	v_mov_b32_e32 v41, v25
	v_mov_b32_e32 v43, v25
	v_mov_b32_e32 v45, v25
	v_mov_b32_e32 v46, v25
	v_mov_b32_e32 v47, v25
	v_mov_b32_e32 v48, v25
	v_mov_b32_e32 v33, v25
	v_mov_b32_e32 v34, v25
	v_mov_b32_e32 v35, v25
	v_mov_b32_e32 v36, v25
	v_mov_b32_e32 v37, v25
	v_mov_b32_e32 v38, v25
	v_mov_b32_e32 v39, v25
	v_mov_b32_e32 v40, v25
	v_mov_b32_e32 v17, v25
	v_mov_b32_e32 v18, v25
	v_mov_b32_e32 v19, v25
	v_mov_b32_e32 v20, v25
	v_mov_b32_e32 v21, v25
	v_mov_b32_e32 v22, v25
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v24, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	v_lshl_add_u32 v122, s29, 2, v65
	v_lshl_add_u32 v123, s29, 3, v65
	v_lshl_add_u32 v124, s29, 4, v65
	.loc	1 1352 23                       ; ragged.py:1352:23
	v_add3_u32 v92, v95, v125, s33
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_lshl_b32 s24, s28, 1
	s_mul_i32 s25, s28, 3
	s_lshl_b32 s26, s28, 2
	s_mul_i32 s27, s28, 5
	s_mul_i32 s34, s28, 6
	s_mul_i32 s35, s28, 7
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1362 42                       ; ragged.py:1362:42
	s_add_i32 s37, s2, s3
	.loc	1 1374 21                       ; ragged.py:1374:21
	s_add_i32 s2, s2, 32
	v_mad_u64_u32 v[125:126], null, s37, s28, v[92:93]
	.loc	1 1363 42                       ; ragged.py:1363:42
	s_mul_i32 s36, s37, s29
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_lt_i32 s2, s21
	.loc	1 1363 42                       ; ragged.py:1363:42
	v_add_nc_u32_e32 v128, s36, v69
	v_add_nc_u32_e32 v127, s36, v67
	v_add_nc_u32_e32 v129, s36, v68
	v_add_nc_u32_e32 v126, s36, v122
	v_add_nc_u32_e32 v130, s36, v66
	v_add_nc_u32_e32 v131, s36, v121
	v_add_nc_u32_e32 v132, s36, v120
	v_add_nc_u32_e32 v133, s36, v65
	v_add_nc_u32_e32 v134, s36, v73
	v_add_nc_u32_e32 v135, s36, v74
	v_add_nc_u32_e32 v136, s36, v76
	v_add_nc_u32_e32 v137, s36, v75
	v_add_nc_u32_e32 v138, s36, v72
	v_add_nc_u32_e32 v139, s36, v71
	v_add_nc_u32_e32 v140, s36, v70
	v_add_nc_u32_e32 v141, s36, v123
	v_add_nc_u32_e32 v142, s36, v80
	v_add_nc_u32_e32 v143, s36, v81
	v_add_nc_u32_e32 v144, s36, v83
	v_add_nc_u32_e32 v145, s36, v82
	v_add_nc_u32_e32 v146, s36, v79
	v_add_nc_u32_e32 v147, s36, v78
	v_add_nc_u32_e32 v148, s36, v77
	v_add_nc_u32_e32 v149, s36, v124
	v_add_nc_u32_e32 v150, s36, v88
	v_add_nc_u32_e32 v151, s36, v89
	v_add_nc_u32_e32 v152, s36, v91
	v_add_nc_u32_e32 v153, s36, v90
	v_add_nc_u32_e32 v156, s36, v85
	v_add_nc_u32_e32 v154, s36, v87
	v_add_nc_u32_e32 v155, s36, v86
	.loc	1 1363 34 is_stmt 0             ; ragged.py:1363:34
	v_cndmask_b32_e64 v128, 0x80000000, v128, s0
	v_add_nc_u32_e32 v160, s35, v125
	v_cndmask_b32_e64 v127, 0x80000000, v127, s0
	v_add_nc_u32_e32 v159, s27, v125
	v_cndmask_b32_e64 v129, 0x80000000, v129, s0
	v_add_nc_u32_e32 v158, s26, v125
	v_add_nc_u32_e32 v161, s34, v125
	.loc	1 1363 42                       ; ragged.py:1363:42
	v_add_nc_u32_e32 v157, s36, v84
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e64 v126, 0x80000000, v126, s0
	v_add_nc_u32_e32 v162, s25, v125
	v_add_nc_u32_e32 v163, s24, v125
	v_add_nc_u32_e32 v164, s28, v125
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
	v_cndmask_b32_e64 v151, 0x80000000, v151, s0
	v_cndmask_b32_e64 v152, 0x80000000, v152, s0
	v_cndmask_b32_e64 v153, 0x80000000, v153, s0
	v_cndmask_b32_e64 v156, 0x80000000, v156, s0
	.loc	1 1362 34 is_stmt 1             ; ragged.py:1362:34
	v_cndmask_b32_e64 v125, 0x80000000, v125, s1
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e64 v154, 0x80000000, v154, s0
	v_cndmask_b32_e64 v155, 0x80000000, v155, s0
	s_clause 0x1e
	buffer_load_u8 v128, v128, s[8:11], 0 offen
	buffer_load_u8 v127, v127, s[8:11], 0 offen
	buffer_load_u8 v165, v129, s[8:11], 0 offen
	buffer_load_u8 v166, v126, s[8:11], 0 offen
	buffer_load_u8 v126, v130, s[8:11], 0 offen
	buffer_load_u8 v167, v131, s[8:11], 0 offen
	buffer_load_u8 v129, v132, s[8:11], 0 offen
	buffer_load_u8 v133, v133, s[8:11], 0 offen
	buffer_load_u8 v130, v136, s[8:11], 0 offen
	buffer_load_u8 v131, v135, s[8:11], 0 offen
	buffer_load_u8 v135, v137, s[8:11], 0 offen
	buffer_load_u8 v136, v134, s[8:11], 0 offen
	buffer_load_u8 v132, v138, s[8:11], 0 offen
	buffer_load_u8 v137, v139, s[8:11], 0 offen
	buffer_load_u8 v134, v140, s[8:11], 0 offen
	buffer_load_u8 v138, v141, s[8:11], 0 offen
	buffer_load_u8 v139, v144, s[8:11], 0 offen
	buffer_load_u8 v140, v143, s[8:11], 0 offen
	buffer_load_u8 v141, v145, s[8:11], 0 offen
	buffer_load_u8 v142, v142, s[8:11], 0 offen
	buffer_load_u8 v143, v146, s[8:11], 0 offen
	buffer_load_u8 v144, v147, s[8:11], 0 offen
	buffer_load_u8 v145, v148, s[8:11], 0 offen
	buffer_load_u8 v146, v149, s[8:11], 0 offen
	buffer_load_u8 v147, v152, s[8:11], 0 offen
	buffer_load_u8 v148, v151, s[8:11], 0 offen
	buffer_load_u8 v149, v153, s[8:11], 0 offen
	buffer_load_u8 v150, v150, s[8:11], 0 offen
	buffer_load_u8 v151, v154, s[8:11], 0 offen
	buffer_load_u8 v152, v155, s[8:11], 0 offen
	buffer_load_u8 v153, v156, s[8:11], 0 offen
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_cndmask_b32_e64 v156, 0x80000000, v160, s1
	v_cndmask_b32_e64 v155, 0x80000000, v159, s1
	v_cndmask_b32_e64 v154, 0x80000000, v158, s1
	v_cndmask_b32_e64 v158, 0x80000000, v161, s1
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e64 v157, 0x80000000, v157, s0
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_cndmask_b32_e64 v159, 0x80000000, v162, s1
	v_cndmask_b32_e64 v160, 0x80000000, v163, s1
	v_cndmask_b32_e64 v161, 0x80000000, v164, s1
	s_clause 0x7
	buffer_load_u8 v162, v125, s[4:7], 0 offen
	buffer_load_u8 v156, v156, s[4:7], 0 offen
	buffer_load_u8 v155, v155, s[4:7], 0 offen
	buffer_load_u8 v158, v158, s[4:7], 0 offen
	buffer_load_u8 v154, v154, s[4:7], 0 offen
	buffer_load_u8 v159, v159, s[4:7], 0 offen
	buffer_load_u8 v160, v160, s[4:7], 0 offen
	buffer_load_u8 v161, v161, s[4:7], 0 offen
	.loc	1 1363 34                       ; ragged.py:1363:34
	buffer_load_u8 v157, v157, s[8:11], 0 offen
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt vmcnt(39)
	v_lshlrev_b16 v125.l, 8, v128.l
	s_waitcnt vmcnt(38)
	v_lshlrev_b16 v125.h, 8, v127.l
	s_waitcnt vmcnt(35)
	v_lshlrev_b16 v126.l, 8, v126.l
	s_waitcnt vmcnt(25)
	v_or_b16 v134.h, v165.l, v125.l
	v_lshlrev_b16 v126.h, 8, v129.l
	v_lshlrev_b16 v127.l, 8, v130.l
	v_lshlrev_b16 v127.h, 8, v131.l
	v_or_b16 v133.h, v167.l, v126.l
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b16 v133.l, v133.l, v126.h
	v_lshlrev_b16 v128.l, 8, v132.l
	v_or_b16 v136.h, v135.l, v127.l
	v_lshlrev_b16 v128.h, 8, v134.l
	v_or_b16 v134.l, v166.l, v125.h
	s_waitcnt vmcnt(23)
	v_lshlrev_b16 v129.l, 8, v139.l
	s_waitcnt vmcnt(22)
	v_lshlrev_b16 v129.h, 8, v140.l
	v_or_b16 v136.l, v136.l, v127.h
	v_or_b16 v135.h, v137.l, v128.l
	s_waitcnt vmcnt(19)
	v_lshlrev_b16 v130.l, 8, v143.l
	v_or_b16 v135.l, v138.l, v128.h
	s_waitcnt vmcnt(17)
	v_lshlrev_b16 v130.h, 8, v145.l
	v_or_b16 v138.h, v141.l, v129.l
	s_waitcnt vmcnt(15)
	v_lshlrev_b16 v131.l, 8, v147.l
	s_waitcnt vmcnt(14)
	v_lshlrev_b16 v131.h, 8, v148.l
	v_or_b16 v138.l, v142.l, v129.h
	v_or_b16 v137.h, v144.l, v130.l
	s_waitcnt vmcnt(11)
	v_lshlrev_b16 v132.l, 8, v151.l
	v_or_b16 v137.l, v146.l, v130.h
	s_waitcnt vmcnt(9)
	v_lshlrev_b16 v132.h, 8, v153.l
	v_or_b16 v140.h, v149.l, v131.l
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt vmcnt(7)
	v_lshlrev_b16 v125.l, 8, v156.l
	s_waitcnt vmcnt(6)
	v_lshlrev_b16 v125.h, 8, v155.l
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_or_b16 v140.l, v150.l, v131.h
	v_or_b16 v139.h, v152.l, v132.l
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v126.l, 8, v159.l
	v_or_b16 v128.h, v158.l, v125.l
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v126.h, 8, v161.l
	v_or_b16 v128.l, v154.l, v125.h
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt vmcnt(0)
	v_or_b16 v139.l, v157.l, v132.h
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_or_b16 v127.h, v160.l, v126.l
	v_or_b16 v127.l, v162.l, v126.h
	ds_store_b64 v98, v[127:128]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[149:150], v100
	ds_load_b64 v[151:152], v101
	ds_load_b64 v[153:154], v102
	ds_load_b64 v[155:156], v103
	ds_load_b64 v[157:158], v104
	ds_load_b64 v[159:160], v105
	ds_load_b64 v[161:162], v106
	ds_load_b64 v[163:164], v107
	ds_load_b64 v[165:166], v108
	ds_load_b64 v[167:168], v109
	ds_load_b64 v[169:170], v110
	ds_load_b64 v[171:172], v111
	ds_load_2addr_stride64_b64 v[125:128], v99 offset1:1
	ds_load_2addr_stride64_b64 v[129:132], v99 offset0:2 offset1:3
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v112, v[133:134]
	ds_store_b64 v113, v[135:136]
	ds_store_b64 v114, v[137:138]
	ds_store_b64 v115, v[139:140]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[133:136], v116 offset1:8
	ds_load_2addr_stride64_b64 v[137:140], v117 offset1:8
	ds_load_2addr_stride64_b64 v[141:144], v118 offset1:8
	ds_load_2addr_stride64_b64 v[145:148], v119 offset1:8
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[133:134], v[155:156], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[135:136], v[155:156], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[133:134], v[161:162], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[135:136], v[161:162], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[133:134], v[167:168], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[133:134], v[125:126], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[135:136], v[125:126], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[135:136], v[167:168], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[137:138], v[127:128], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[139:140], v[127:128], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[137:138], v[149:150], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[139:140], v[149:150], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[137:138], v[163:164], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[139:140], v[163:164], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[137:138], v[169:170], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[139:140], v[169:170], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[141:142], v[151:152], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[143:144], v[151:152], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[141:142], v[157:158], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[141:142], v[171:172], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[143:144], v[171:172], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[143:144], v[157:158], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[141:142], v[129:130], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[143:144], v[129:130], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[145:146], v[131:132], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[147:148], v[131:132], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[145:146], v[153:154], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[147:148], v[153:154], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[145:146], v[159:160], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[147:148], v[159:160], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[145:146], v[165:166], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[147:148], v[165:166], v[17:24] neg_lo:[1,1,0]
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
	v_mov_b32_e32 v40, v8
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v38, v8
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v36, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v34, v8
	v_mov_b32_e32 v33, v8
	v_mov_b32_e32 v48, v8
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v46, v8
	v_mov_b32_e32 v45, v8
	v_mov_b32_e32 v44, v8
	v_mov_b32_e32 v43, v8
	v_mov_b32_e32 v42, v8
	v_mov_b32_e32 v41, v8
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
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1314 27 is_stmt 1             ; ragged.py:1314:27
	s_add_i32 s4, s20, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s5, s4, 31
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s24, s4, 1
	.loc	1 1375 20 is_stmt 1             ; ragged.py:1375:20
	s_cmp_lt_i32 s2, s24
	.loc	1 1375 17 is_stmt 0             ; ragged.py:1375:17
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %._crit_edge._crit_edge
	.loc	1 1545 26 is_stmt 1             ; ragged.py:1545:26
	s_lshl_b32 s8, s29, 4
	v_lshrrev_b32_e32 v66, 1, v97
	s_cbranch_execz .LBB0_7
	s_branch .LBB0_8
.LBB0_6:
                                        ; implicit-def: $sgpr8
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	v_lshrrev_b32_e32 v66, 1, v97
.LBB0_7:
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	s_or_b32 s4, s2, 1
	s_or_b32 s5, s2, 2
	s_or_b32 s6, s2, 3
	s_or_b32 s7, s2, 4
	s_or_b32 s8, s2, 5
	s_or_b32 s25, s2, 6
	s_or_b32 s26, s2, 7
	s_or_b32 s27, s2, 8
	s_or_b32 s40, s2, 9
	s_or_b32 s41, s2, 10
	s_or_b32 s42, s2, 11
	s_or_b32 s64, s2, 12
	s_or_b32 s45, s2, 13
	s_or_b32 s46, s2, 14
	s_or_b32 s47, s2, 15
	s_or_b32 s65, s2, 16
	s_or_b32 s51, s2, 17
	s_or_b32 s52, s2, 18
	s_or_b32 s53, s2, 19
	s_or_b32 s66, s2, 20
	s_or_b32 s57, s2, 21
	s_or_b32 s59, s2, 22
	s_or_b32 s61, s2, 23
	s_or_b32 s68, s2, 24
	s_or_b32 s69, s2, 25
	s_or_b32 s71, s2, 26
	s_or_b32 s91, s2, 27
	s_or_b32 s94, s2, 28
	s_or_b32 s95, s2, 29
	s_or_b32 s96, s2, 30
	s_or_b32 s97, s2, 31
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cmp_lt_i32 s4, s24
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_lshrrev_b32_e32 v67, 6, v96
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s5, s24
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_add_nc_u32_e32 v181, 0, v93
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s6, s24
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v76, s64, v67
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s7, s24
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v77, s65, v67
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s8, s24
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v78, s66, v67
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s25, s24
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v79, s68, v67
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s26, s24
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v73, s2, v67
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s27, s24
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v74, s7, v67
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s40, s24
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v75, s27, v67
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s41, s24
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v80, s94, v67
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s42, s24
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mul_lo_u32 v67, s28, v67
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s64, s24
	v_cmp_gt_i32_e32 vcc_lo, s24, v73
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s45, s24
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_add_nc_u32_e32 v180, 0, v0
	.loc	1 1385 30                       ; ragged.py:1385:30
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s46, s24
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s47, s24
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s65, s24
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s51, s24
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s52, s24
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s53, s24
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s66, s24
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s57, s24
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s59, s24
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s61, s24
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s68, s24
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s69, s24
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s71, s24
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s91, s24
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s94, s24
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s95, s24
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s96, s24
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s97, s24
	s_cselect_b32 s44, -1, 0
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_and_b32 s9, s20, 0x80000001
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cmp_eq_u32 s9, 1
	s_cselect_b32 s9, -1, 0
	.loc	1 1386 63 is_stmt 0             ; ragged.py:1386:63
	s_add_i32 s10, s24, -1
	.loc	1 1386 56                       ; ragged.py:1386:56
	s_cmp_eq_u32 s2, s10
	s_cselect_b32 s11, -1, 0
	s_cmp_eq_u32 s4, s10
	s_cselect_b32 s20, -1, 0
	s_cmp_eq_u32 s5, s10
	s_cselect_b32 s21, -1, 0
	s_cmp_eq_u32 s6, s10
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s6, s24, v78
	.loc	1 1386 56                       ; ragged.py:1386:56
	s_cselect_b32 s34, -1, 0
	s_cmp_eq_u32 s7, s10
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s7, s24, v79
	.loc	1 1386 56                       ; ragged.py:1386:56
	s_cselect_b32 s35, -1, 0
	s_cmp_eq_u32 s8, s10
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s8, s24, v80
	.loc	1 1386 56                       ; ragged.py:1386:56
	s_cselect_b32 s36, -1, 0
	s_cmp_eq_u32 s25, s10
	s_cselect_b32 s37, -1, 0
	s_cmp_eq_u32 s26, s10
	s_mov_b32 s26, 0x7ffffffe
	s_cselect_b32 s38, -1, 0
	s_cmp_eq_u32 s27, s10
	s_mov_b32 s27, 0x31027000
	s_cselect_b32 s39, -1, 0
	s_cmp_eq_u32 s40, s10
	s_cselect_b32 s40, -1, 0
	s_cmp_eq_u32 s41, s10
	s_cselect_b32 s41, -1, 0
	s_cmp_eq_u32 s42, s10
	s_cselect_b32 s42, -1, 0
	s_cmp_eq_u32 s64, s10
	s_cselect_b32 s43, -1, 0
	s_cmp_eq_u32 s45, s10
	s_cselect_b32 s45, -1, 0
	s_cmp_eq_u32 s46, s10
	s_cselect_b32 s46, -1, 0
	s_cmp_eq_u32 s47, s10
	s_cselect_b32 s47, -1, 0
	s_cmp_eq_u32 s65, s10
	s_cselect_b32 s49, -1, 0
	s_cmp_eq_u32 s51, s10
	s_cselect_b32 s51, -1, 0
	s_cmp_eq_u32 s52, s10
	s_cselect_b32 s52, -1, 0
	s_cmp_eq_u32 s53, s10
	s_cselect_b32 s53, -1, 0
	s_cmp_eq_u32 s66, s10
	s_cselect_b32 s56, -1, 0
	s_cmp_eq_u32 s57, s10
	s_cselect_b32 s57, -1, 0
	s_cmp_eq_u32 s59, s10
	s_cselect_b32 s59, -1, 0
	s_cmp_eq_u32 s61, s10
	s_cselect_b32 s61, -1, 0
	s_cmp_eq_u32 s68, s10
	s_cselect_b32 s63, -1, 0
	s_cmp_eq_u32 s69, s10
	s_cselect_b32 s64, -1, 0
	s_cmp_eq_u32 s71, s10
	s_cselect_b32 s65, -1, 0
	s_cmp_eq_u32 s91, s10
	s_cselect_b32 s66, -1, 0
	s_cmp_eq_u32 s94, s10
	s_cselect_b32 s68, -1, 0
	s_cmp_eq_u32 s95, s10
	s_cselect_b32 s69, -1, 0
	s_cmp_eq_u32 s96, s10
	s_cselect_b32 s71, -1, 0
	s_cmp_eq_u32 s97, s10
	s_cselect_b32 s91, -1, 0
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s94, s2, s3
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s2, s24, v74
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_mul_i32 s4, s94, s28
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s3, s24, v75
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s5, s4, s33
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, vcc_lo
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add3_u32 v67, s5, v95, v67
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s4, s24, v76
	v_cmp_gt_i32_e64 s5, s24, v77
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s94, s94, s29
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_and_b32 s25, s13, 0xffff
	.loc	1 1387 42 is_stmt 0             ; ragged.py:1387:42
	v_mad_u64_u32 v[68:69], null, s28, 12, v[67:68]
	v_lshl_add_u32 v81, s28, 2, v67
	v_lshl_add_u32 v82, s28, 3, v67
	v_lshl_add_u32 v83, s28, 4, v67
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_mov_b32 s24, s12
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	v_add3_u32 v105, s94, s29, v65
	v_add_nc_u32_e32 v104, s94, v65
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[69:70], null, s28, 20, v[67:68]
	v_mad_u64_u32 v[70:71], null, s28, 24, v[67:68]
	v_mad_u64_u32 v[71:72], null, s28, 28, v[67:68]
	.loc	1 1387 34 is_stmt 0             ; ragged.py:1387:34
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s2
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_mul_i32 s2, s29, 3
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v72, 0x80000000, v81, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s3
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_lshl_b32 s3, s29, 2
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v81, 0x80000000, v82, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s4
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_mul_i32 s4, s29, 5
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s5
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_mul_i32 s5, s29, 6
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v82, 0x80000000, v83, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s6
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_mul_i32 s6, s29, 7
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s7
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_lshl_b32 s7, s29, 3
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s8
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_lshl_b32 s1, s29, 1
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	s_clause 0x7
	buffer_load_u8 v83, v67, s[24:27], 0 offen
	buffer_load_u8 v72, v72, s[24:27], 0 offen
	buffer_load_u8 v81, v81, s[24:27], 0 offen
	buffer_load_u8 v86, v68, s[24:27], 0 offen
	buffer_load_u8 v87, v82, s[24:27], 0 offen
	buffer_load_u8 v88, v69, s[24:27], 0 offen
	buffer_load_u8 v89, v70, s[24:27], 0 offen
	buffer_load_u8 v90, v71, s[24:27], 0 offen
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v67, s94, s1, v65
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s93
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v68, s94, s2, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v105, 0x80000000, v105, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s92
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v69, s94, s3, v65
	v_add3_u32 v70, s94, s4, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s90
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v71, s94, s5, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s89
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v82, s94, s6, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s88
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s12, s29, 9
	s_mul_i32 s24, s29, 11
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s87
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v84, s94, s7, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v104, 0x80000000, v104, s0
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s25, s29, 12
	v_add3_u32 v85, s94, s12, v65
	v_add3_u32 v92, s94, s24, v65
	s_mul_i32 s24, s29, 23
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s86
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s13, s29, 10
	s_mul_i32 s2, s29, 14
	v_add3_u32 v95, s94, s25, v65
	v_add3_u32 v108, s94, s24, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_and_b32 s25, s15, 0xffff
	s_mov_b32 s24, s14
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s85
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v91, s94, s13, v65
	v_add3_u32 v97, s94, s2, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x7
	buffer_load_u8 v104, v104, s[24:27], 0 offen
	buffer_load_u8 v105, v105, s[24:27], 0 offen
	buffer_load_u8 v116, v67, s[24:27], 0 offen
	buffer_load_u8 v117, v68, s[24:27], 0 offen
	buffer_load_u8 v118, v69, s[24:27], 0 offen
	buffer_load_u8 v119, v70, s[24:27], 0 offen
	buffer_load_u8 v120, v71, s[24:27], 0 offen
	buffer_load_u8 v121, v82, s[24:27], 0 offen
	v_cndmask_b32_e32 v67, 0x80000000, v84, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s84
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s1, s29, 13
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v68, 0x80000000, v85, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s83
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v96, s94, s1, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v69, 0x80000000, v91, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s82
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s3, s29, 15
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v70, 0x80000000, v92, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s81
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_lshl_b32 s8, s29, 4
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v71, 0x80000000, v95, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s80
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v98, s94, s3, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v82, 0x80000000, v96, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s79
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s4, s29, 17
	v_add3_u32 v106, s94, s8, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v84, 0x80000000, v97, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s78
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s5, s29, 18
	v_add3_u32 v99, s94, s4, v65
	s_mul_i32 s6, s29, 19
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v85, 0x80000000, v98, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s77
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v100, s94, s5, v65
	v_add3_u32 v101, s94, s6, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x7
	buffer_load_u8 v91, v67, s[24:27], 0 offen
	buffer_load_u8 v92, v68, s[24:27], 0 offen
	buffer_load_u8 v95, v69, s[24:27], 0 offen
	buffer_load_u8 v96, v70, s[24:27], 0 offen
	buffer_load_u8 v97, v71, s[24:27], 0 offen
	buffer_load_u8 v98, v82, s[24:27], 0 offen
	buffer_load_u8 v122, v84, s[24:27], 0 offen
	buffer_load_u8 v123, v85, s[24:27], 0 offen
	v_cndmask_b32_e32 v67, 0x80000000, v106, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s76
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s7, s29, 20
	s_mul_i32 s12, s29, 21
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v68, 0x80000000, v99, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s75
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v102, s94, s7, v65
	v_add3_u32 v103, s94, s12, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v69, 0x80000000, v100, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s74
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s13, s29, 22
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v70, 0x80000000, v101, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s73
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v107, s94, s13, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v71, 0x80000000, v102, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s72
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s1, s29, 24
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v82, 0x80000000, v103, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s70
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s2, s29, 25
	v_add3_u32 v109, s94, s1, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v84, 0x80000000, v107, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s67
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s3, s29, 26
	v_add3_u32 v110, s94, s2, v65
	s_mul_i32 s4, s29, 27
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v85, 0x80000000, v108, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s62
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v111, s94, s3, v65
	v_add3_u32 v112, s94, s4, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x7
	buffer_load_u8 v99, v67, s[24:27], 0 offen
	buffer_load_u8 v100, v68, s[24:27], 0 offen
	buffer_load_u8 v101, v69, s[24:27], 0 offen
	buffer_load_u8 v102, v70, s[24:27], 0 offen
	buffer_load_u8 v103, v71, s[24:27], 0 offen
	buffer_load_u8 v106, v82, s[24:27], 0 offen
	buffer_load_u8 v107, v84, s[24:27], 0 offen
	buffer_load_u8 v108, v85, s[24:27], 0 offen
	v_cndmask_b32_e32 v67, 0x80000000, v109, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s60
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s5, s29, 28
	s_mul_i32 s6, s29, 29
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v68, 0x80000000, v110, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s58
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v113, s94, s5, v65
	v_add3_u32 v114, s94, s6, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v69, 0x80000000, v111, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s55
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s7, s29, 30
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v70, 0x80000000, v112, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s54
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s12, s29, 31
	v_add3_u32 v115, s94, s7, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v71, 0x80000000, v113, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s50
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v65, s94, s12, v65
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v82, 0x80000000, v114, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s48
	.loc	1 1386 56 is_stmt 1             ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s1, s10, v74
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v84, 0x80000000, v115, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s44
	.loc	1 1386 56 is_stmt 1             ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s2, s10, v75
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	s_clause 0x7
	buffer_load_u8 v109, v67, s[24:27], 0 offen
	buffer_load_u8 v110, v68, s[24:27], 0 offen
	buffer_load_u8 v111, v69, s[24:27], 0 offen
	buffer_load_u8 v112, v70, s[24:27], 0 offen
	buffer_load_u8 v113, v71, s[24:27], 0 offen
	buffer_load_u8 v114, v82, s[24:27], 0 offen
	buffer_load_u8 v115, v84, s[24:27], 0 offen
	buffer_load_u8 v124, v65, s[24:27], 0 offen
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e32 vcc_lo, s10, v73
	v_cmp_eq_u32_e64 s3, s10, v76
	v_cmp_eq_u32_e64 s4, s10, v77
	v_cmp_eq_u32_e64 s5, s10, v78
	v_cmp_eq_u32_e64 s6, s10, v79
	v_cmp_eq_u32_e64 s7, s10, v80
	.loc	1 1386 32 is_stmt 0             ; ragged.py:1386:32
	s_and_b32 s10, s9, vcc_lo
	s_and_b32 s1, s9, s1
	s_and_b32 s2, s9, s2
	s_and_b32 s3, s9, s3
	s_and_b32 s4, s9, s4
	s_and_b32 s5, s9, s5
	s_and_b32 s6, s9, s6
	s_and_b32 s7, s9, s7
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s11, s9, s11
	s_and_b32 s12, s9, s20
	s_and_b32 s13, s9, s21
	s_and_b32 s14, s9, s34
	s_and_b32 s15, s9, s35
	s_and_b32 s20, s9, s36
	s_and_b32 s21, s9, s37
	s_and_b32 s24, s9, s38
	s_and_b32 s25, s9, s39
	s_and_b32 s26, s9, s40
	s_and_b32 s27, s9, s41
	s_and_b32 s34, s9, s42
	s_and_b32 s35, s9, s43
	s_and_b32 s36, s9, s45
	s_and_b32 s37, s9, s46
	s_and_b32 s38, s9, s47
	s_and_b32 s39, s9, s49
	s_and_b32 s40, s9, s51
	s_and_b32 s41, s9, s52
	s_and_b32 s42, s9, s53
	s_and_b32 s43, s9, s56
	s_and_b32 s44, s9, s57
	s_and_b32 s45, s9, s59
	s_and_b32 s46, s9, s61
	s_and_b32 s47, s9, s63
	s_and_b32 s48, s9, s64
	s_and_b32 s49, s9, s65
	s_and_b32 s50, s9, s66
	s_and_b32 s51, s9, s68
	s_and_b32 s52, s9, s69
	s_and_b32 s53, s9, s71
	s_and_b32 s9, s9, s91
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(39)
	v_and_b16 v65.l, v83.l, 15
	s_waitcnt vmcnt(38)
	v_and_b16 v65.h, v72.l, 15
	s_waitcnt vmcnt(37)
	v_and_b16 v67.l, v81.l, 15
	s_waitcnt vmcnt(36)
	v_and_b16 v68.l, v86.l, 15
	s_waitcnt vmcnt(35)
	v_and_b16 v67.h, v87.l, 15
	.loc	1 1389 34 is_stmt 0             ; ragged.py:1389:34
	v_cndmask_b16 v65.l, v83.l, v65.l, s10
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(34)
	v_and_b16 v68.h, v88.l, 15
	s_waitcnt vmcnt(33)
	v_and_b16 v69.l, v89.l, 15
	s_waitcnt vmcnt(32)
	v_and_b16 v69.h, v90.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v65.h, v72.l, v65.h, s1
	v_cndmask_b16 v67.l, v81.l, v67.l, s2
	v_cndmask_b16 v68.l, v86.l, v68.l, s3
	v_cndmask_b16 v67.h, v87.l, v67.h, s4
	v_cndmask_b16 v68.h, v88.l, v68.h, s5
	v_cndmask_b16 v69.l, v89.l, v69.l, s6
	v_cndmask_b16 v69.h, v90.l, v69.h, s7
	ds_store_b8 v180, v65
	ds_store_b8_d16_hi v180, v65 offset:256
	ds_store_b8 v180, v67 offset:512
	ds_store_b8 v180, v68 offset:768
	ds_store_b8_d16_hi v180, v67 offset:1024
	ds_store_b8_d16_hi v180, v68 offset:1280
	ds_store_b8 v180, v69 offset:1536
	ds_store_b8_d16_hi v180, v69 offset:1792
	v_or_b32_e32 v65, 0x3f0, v0
	v_or_b32_e32 v67, 0x7f0, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1390 62 is_stmt 1             ; ragged.py:1390:62
	s_waitcnt vmcnt(31)
	v_and_b16 v70.l, v104.l, 15
	s_waitcnt vmcnt(30)
	v_and_b16 v70.h, v105.l, 15
	s_waitcnt vmcnt(29)
	v_and_b16 v71.l, v116.l, 15
	s_waitcnt vmcnt(28)
	v_and_b16 v71.h, v117.l, 15
	s_waitcnt vmcnt(27)
	v_and_b16 v72.l, v118.l, 15
	s_waitcnt vmcnt(26)
	v_and_b16 v72.h, v119.l, 15
	s_waitcnt vmcnt(25)
	v_and_b16 v73.l, v120.l, 15
	s_waitcnt vmcnt(24)
	v_and_b16 v73.h, v121.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v164.l, v104.l, v70.l, s11
	v_cndmask_b16 v164.h, v105.l, v70.h, s12
	v_cndmask_b16 v165.l, v116.l, v71.l, s13
	v_cndmask_b16 v165.h, v117.l, v71.h, s14
	v_cndmask_b16 v166.l, v118.l, v72.l, s15
	v_cndmask_b16 v166.h, v119.l, v72.h, s20
	v_cndmask_b16 v167.l, v120.l, v73.l, s21
	v_cndmask_b16 v167.h, v121.l, v73.h, s24
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(23)
	v_and_b16 v74.l, v91.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v74.h, v92.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v75.l, v95.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v75.h, v96.l, 15
	s_waitcnt vmcnt(19)
	v_and_b16 v76.l, v97.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v76.h, v98.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v77.l, v122.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v77.h, v123.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v168.l, v91.l, v74.l, s25
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_add_nc_u32_e32 v91, 0, v67
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v168.h, v92.l, v74.h, s26
	v_cndmask_b16 v169.l, v95.l, v75.l, s27
	v_cndmask_b16 v169.h, v96.l, v75.h, s34
	v_cndmask_b16 v170.l, v97.l, v76.l, s35
	v_cndmask_b16 v170.h, v98.l, v76.h, s36
	v_cndmask_b16 v171.l, v122.l, v77.l, s37
	v_cndmask_b16 v171.h, v123.l, v77.h, s38
	.loc	1 1390 62 is_stmt 0             ; ragged.py:1390:62
	s_waitcnt vmcnt(15)
	v_and_b16 v78.l, v99.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v78.h, v100.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v79.l, v101.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v79.h, v102.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v80.l, v103.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v80.h, v106.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v81.l, v107.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v81.h, v108.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v172.l, v99.l, v78.l, s39
	v_cndmask_b16 v172.h, v100.l, v78.h, s40
	v_cndmask_b16 v173.l, v101.l, v79.l, s41
	v_cndmask_b16 v173.h, v102.l, v79.h, s42
	v_cndmask_b16 v174.l, v103.l, v80.l, s43
	v_cndmask_b16 v174.h, v106.l, v80.h, s44
	v_cndmask_b16 v175.l, v107.l, v81.l, s45
	v_cndmask_b16 v175.h, v108.l, v81.h, s46
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(7)
	v_and_b16 v82.l, v109.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v82.h, v110.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v83.l, v111.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v83.h, v112.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v84.l, v113.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v84.h, v114.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v85.l, v115.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v85.h, v124.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v176.l, v109.l, v82.l, s47
	v_cndmask_b16 v176.h, v110.l, v82.h, s48
	v_cndmask_b16 v177.l, v111.l, v83.l, s49
	v_cndmask_b16 v179.l, v115.l, v85.l, s53
	v_cndmask_b16 v179.h, v124.l, v85.h, s9
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_add_nc_u32_e32 v85, 0, v65
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v177.h, v112.l, v83.h, s50
	v_cndmask_b16 v178.l, v113.l, v84.l, s51
	v_cndmask_b16 v178.h, v114.l, v84.h, s52
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v182, v181 offset:192
	ds_load_u8 v183, v181 offset:128
	ds_load_u8 v116, v181 offset:208
	ds_load_u8 v117, v181 offset:144
	ds_load_u8 v86, v181 offset:224
	ds_load_u8 v87, v181 offset:160
	ds_load_u8 v65, v181 offset:240
	ds_load_u8 v67, v181 offset:176
	ds_load_u8 v184, v181 offset:448
	ds_load_u8 v185, v181 offset:384
	ds_load_u8 v134, v181 offset:464
	ds_load_u8 v135, v181 offset:400
	ds_load_u8 v103, v181 offset:480
	ds_load_u8 v104, v181 offset:416
	ds_load_u8 v68, v181 offset:496
	ds_load_u8 v69, v181 offset:432
	ds_load_u8 v186, v181 offset:320
	ds_load_u8 v187, v181 offset:256
	ds_load_u8 v138, v181 offset:336
	ds_load_u8 v139, v181 offset:272
	ds_load_u8 v107, v181 offset:352
	ds_load_u8 v108, v181 offset:288
	ds_load_u8 v72, v181 offset:368
	ds_load_u8 v73, v181 offset:304
	ds_load_u8 v188, v181 offset:64
	ds_load_u8 v142, v181 offset:80
	ds_load_u8 v110, v181 offset:96
	ds_load_u8 v74, v181 offset:112
	ds_load_u8 v189, v181
	ds_load_u8 v145, v181 offset:16
	ds_load_u8 v114, v181 offset:32
	ds_load_u8 v75, v181 offset:48
	ds_load_u8 v190, v181 offset:704
	ds_load_u8 v191, v181 offset:640
	ds_load_u8 v140, v181 offset:720
	ds_load_u8 v141, v181 offset:656
	ds_load_u8 v105, v181 offset:736
	ds_load_u8 v106, v181 offset:672
	ds_load_u8 v70, v181 offset:752
	ds_load_u8 v71, v181 offset:688
	ds_load_u8 v192, v181 offset:576
	ds_load_u8 v193, v181 offset:512
	ds_load_u8 v146, v181 offset:592
	ds_load_u8 v147, v181 offset:528
	ds_load_u8 v112, v181 offset:608
	ds_load_u8 v115, v181 offset:544
	ds_load_u8 v76, v181 offset:624
	ds_load_u8 v77, v181 offset:560
	ds_load_u8 v194, v181 offset:960
	ds_load_u8 v195, v181 offset:896
	ds_load_u8 v196, v181 offset:1024
	ds_load_u8 v148, v181 offset:976
	ds_load_u8 v149, v181 offset:912
	ds_load_u8 v118, v181 offset:992
	ds_load_u8 v119, v181 offset:928
	ds_load_u8 v78, v181 offset:944
	ds_load_u8 v197, v181 offset:832
	ds_load_u8 v198, v181 offset:768
	ds_load_u8 v153, v181 offset:848
	ds_load_u8 v155, v181 offset:784
	ds_load_u8 v123, v181 offset:864
	ds_load_u8 v125, v181 offset:800
	ds_load_u8 v89, v181 offset:880
	ds_load_u8 v92, v181 offset:816
	ds_load_u8 v199, v181 offset:1216
	ds_load_u8 v200, v181 offset:1280
	ds_load_u8 v150, v181 offset:1232
	ds_load_u8 v151, v181 offset:1168
	ds_load_u8 v120, v181 offset:1248
	ds_load_u8 v121, v181 offset:1184
	ds_load_u8 v81, v181 offset:1264
	ds_load_u8 v83, v181 offset:1200
	ds_load_u8 v201, v181 offset:1152
	ds_load_u8 v202, v181 offset:1088
	ds_load_u8 v152, v181 offset:1104
	ds_load_u8 v154, v181 offset:1040
	ds_load_u8 v122, v181 offset:1120
	ds_load_u8 v124, v181 offset:1056
	ds_load_u8 v88, v181 offset:1136
	ds_load_u8 v90, v181 offset:1072
	ds_load_u8 v203, v181 offset:1472
	ds_load_u8 v204, v181 offset:1536
	ds_load_u8 v156, v181 offset:1488
	ds_load_u8 v157, v181 offset:1424
	ds_load_u8 v126, v181 offset:1504
	ds_load_u8 v127, v181 offset:1440
	ds_load_u8 v96, v181 offset:1520
	ds_load_u8 v98, v181 offset:1456
	ds_load_u8 v205, v181 offset:1408
	ds_load_u8 v206, v181 offset:1344
	ds_load_u8 v158, v181 offset:1360
	ds_load_u8 v159, v181 offset:1296
	ds_load_u8 v128, v181 offset:1376
	ds_load_u8 v129, v181 offset:1312
	ds_load_u8 v99, v181 offset:1392
	ds_load_u8 v100, v181 offset:1328
	ds_load_u8 v207, v181 offset:1728
	ds_load_u8 v208, v181 offset:1792
	ds_load_u8 v136, v181 offset:1744
	ds_load_u8 v137, v181 offset:1680
	ds_load_u8 v101, v181 offset:1760
	ds_load_u8 v102, v181 offset:1696
	ds_load_u8 v79, v181 offset:1776
	ds_load_u8 v80, v181 offset:1712
	ds_load_u8 v209, v181 offset:1664
	ds_load_u8 v210, v181 offset:1600
	ds_load_u8 v143, v181 offset:1616
	ds_load_u8 v144, v181 offset:1552
	ds_load_u8 v111, v181 offset:1632
	ds_load_u8 v113, v181 offset:1568
	ds_load_u8 v82, v181 offset:1648
	ds_load_u8 v84, v181 offset:1584
	ds_load_u8 v109, v85
	ds_load_u8 v85, v91
	ds_load_u8 v211, v181 offset:1984
	ds_load_u8 v160, v181 offset:2000
	ds_load_u8 v130, v181 offset:2016
	ds_load_u8 v161, v181 offset:1936
	ds_load_u8 v131, v181 offset:1952
	ds_load_u8 v91, v181 offset:1968
	ds_load_u8 v212, v181 offset:1920
	ds_load_u8 v213, v181 offset:1856
	ds_load_u8 v162, v181 offset:1872
	ds_load_u8 v163, v181 offset:1808
	ds_load_u8 v132, v181 offset:1888
	ds_load_u8 v133, v181 offset:1824
	ds_load_u8 v95, v181 offset:1904
	ds_load_u8 v97, v181 offset:1840
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_add_nc_u32_e32 v181, v181, v66
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v180, v164
	ds_store_b8_d16_hi v180, v164 offset:256
	ds_store_b8 v180, v165 offset:512
	ds_store_b8_d16_hi v180, v165 offset:768
	ds_store_b8 v180, v166 offset:1024
	ds_store_b8_d16_hi v180, v166 offset:1280
	ds_store_b8 v180, v167 offset:1536
	ds_store_b8_d16_hi v180, v167 offset:1792
	ds_store_b8 v180, v168 offset:2048
	ds_store_b8_d16_hi v180, v168 offset:2304
	ds_store_b8 v180, v169 offset:2560
	ds_store_b8_d16_hi v180, v169 offset:2816
	ds_store_b8 v180, v170 offset:3072
	ds_store_b8_d16_hi v180, v170 offset:3328
	ds_store_b8 v180, v171 offset:3584
	ds_store_b8_d16_hi v180, v171 offset:3840
	ds_store_b8 v180, v172 offset:4096
	ds_store_b8_d16_hi v180, v172 offset:4352
	ds_store_b8 v180, v173 offset:4608
	ds_store_b8_d16_hi v180, v173 offset:4864
	ds_store_b8 v180, v174 offset:5120
	ds_store_b8_d16_hi v180, v174 offset:5376
	ds_store_b8 v180, v175 offset:5632
	ds_store_b8_d16_hi v180, v175 offset:5888
	ds_store_b8 v180, v176 offset:6144
	ds_store_b8_d16_hi v180, v176 offset:6400
	ds_store_b8 v180, v177 offset:6656
	ds_store_b8_d16_hi v180, v177 offset:6912
	ds_store_b8 v180, v178 offset:7168
	ds_store_b8_d16_hi v180, v178 offset:7424
	ds_store_b8 v180, v179 offset:7680
	ds_store_b8_d16_hi v180, v179 offset:7936
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v164, v181 offset:1280
	ds_load_u8 v166, v181 offset:1024
	ds_load_u8 v167, v181 offset:1792
	ds_load_u8 v168, v181 offset:1536
	ds_load_u8 v169, v181 offset:256
	ds_load_u8 v170, v181
	ds_load_u8 v172, v181 offset:768
	ds_load_u8 v173, v181 offset:512
	v_perm_b32 v165, v187, v186, 0xc0c0004
	v_perm_b32 v171, v185, v184, 0xc0c0004
	v_perm_b32 v174, v189, v188, 0xc0c0004
	ds_load_u8 v176, v181 offset:1920
	ds_load_u8 v177, v181 offset:1664
	ds_load_u8 v178, v181 offset:1408
	ds_load_u8 v179, v181 offset:1152
	v_perm_b32 v175, v183, v182, 0xc0c0004
	ds_load_u8 v180, v181 offset:896
	ds_load_u8 v182, v181 offset:640
	ds_load_u8 v183, v181 offset:384
	ds_load_u8 v184, v181 offset:128
	v_lshl_or_b32 v165, v171, 16, v165
	v_perm_b32 v189, v198, v197, 0xc0c0004
	v_perm_b32 v194, v195, v194, 0xc0c0004
	v_perm_b32 v192, v193, v192, 0xc0c0004
	v_perm_b32 v190, v191, v190, 0xc0c0004
	v_perm_b32 v198, v201, v199, 0xc0c0004
	v_perm_b32 v138, v139, v138, 0xc0c0004
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v166, v166, v164, 0xc0c0004
	v_lshl_or_b32 v164, v175, 16, v174
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	v_perm_b32 v174, v200, v206, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v168, v170, v169, 0xc0c0004
	ds_load_u8 v170, v181 offset:3328
	ds_load_u8 v171, v181 offset:3072
	ds_load_u8 v185, v181 offset:3840
	ds_load_u8 v186, v181 offset:3584
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v169, v173, v172, 0xc0c0004
	ds_load_u8 v172, v181 offset:2304
	ds_load_u8 v173, v181 offset:2048
	ds_load_u8 v187, v181 offset:2816
	ds_load_u8 v188, v181 offset:2560
	v_lshl_or_b32 v167, v167, 16, v166
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	ds_load_u8 v179, v181 offset:4352
	ds_load_u8 v199, v181 offset:4096
	ds_load_u8 v200, v181 offset:4864
	ds_load_u8 v201, v181 offset:4608
	v_lshl_or_b32 v166, v169, 16, v168
	v_lshl_or_b32 v169, v194, 16, v189
	v_lshl_or_b32 v168, v190, 16, v192
	ds_load_u8 v189, v181 offset:3968
	ds_load_u8 v190, v181 offset:3712
	ds_load_u8 v191, v181 offset:3456
	ds_load_u8 v192, v181 offset:3200
	v_perm_b32 v175, v205, v203, 0xc0c0004
	v_perm_b32 v176, v177, v176, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v177, v184, v183, 0xc0c0004
	v_perm_b32 v180, v182, v180, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[166:167], v[164:165], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v135, v145, v142, 0xc0c0004
	v_perm_b32 v116, v117, v116, 0xc0c0004
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v171, v186, v185, 0xc0c0004
	ds_load_u8 v185, v181 offset:2944
	ds_load_u8 v186, v181 offset:2688
	ds_load_u8 v193, v181 offset:2432
	ds_load_u8 v194, v181 offset:2176
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v173, v188, v187, 0xc0c0004
	v_perm_b32 v187, v196, v202, 0xc0c0004
	ds_load_u8 v188, v181 offset:5376
	ds_load_u8 v195, v181 offset:5120
	ds_load_u8 v196, v181 offset:5888
	ds_load_u8 v197, v181 offset:5632
	v_lshl_or_b32 v171, v171, 16, v170
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v179, v199, v179, 0xc0c0004
	v_lshl_or_b32 v170, v173, 16, v172
	v_lshl_or_b32 v173, v175, 16, v174
	v_lshl_or_b32 v175, v176, 16, v178
	v_lshl_or_b32 v174, v180, 16, v177
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v191, v192, v191, 0xc0c0004
	v_lshl_or_b32 v172, v198, 16, v187
	ds_load_u8 v178, v181 offset:6016
	ds_load_u8 v180, v181 offset:5760
	ds_load_u8 v182, v181 offset:5504
	ds_load_u8 v183, v181 offset:5248
	v_wmma_i32_16x16x16_iu4 v[57:64], v[174:175], v[164:165], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v104, v114, v110, 0xc0c0004
	v_lshl_or_b32 v165, v189, 16, v191
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	v_perm_b32 v186, v204, v210, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v190, v194, v193, 0xc0c0004
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v176, v195, v188, 0xc0c0004
	ds_load_u8 v184, v181 offset:4992
	ds_load_u8 v187, v181 offset:4736
	ds_load_u8 v188, v181 offset:4480
	ds_load_u8 v195, v181 offset:4224
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v177, v197, v196, 0xc0c0004
	v_perm_b32 v196, v201, v200, 0xc0c0004
	v_lshl_or_b32 v164, v185, 16, v190
	v_perm_b32 v185, v212, v211, 0xc0c0004
	v_perm_b32 v72, v73, v72, 0xc0c0004
	v_lshl_or_b32 v177, v177, 16, v176
	v_lshl_or_b32 v176, v196, 16, v179
	v_perm_b32 v179, v208, v213, 0xc0c0004
	ds_load_u8 v189, v181 offset:7424
	ds_load_u8 v190, v181 offset:7168
	ds_load_u8 v191, v181 offset:7936
	ds_load_u8 v192, v181 offset:7680
	ds_load_u8 v193, v181 offset:6400
	ds_load_u8 v194, v181 offset:6144
	ds_load_u8 v196, v181 offset:6912
	ds_load_u8 v197, v181 offset:6656
	v_perm_b32 v69, v69, v68, 0xc0c0004
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_perm_b32 v65, v67, v65, 0xc0c0004
	v_lshl_or_b32 v179, v185, 16, v179
	ds_load_u8 v185, v181 offset:8064
	ds_load_u8 v199, v181 offset:7808
	ds_load_u8 v200, v181 offset:7552
	ds_load_u8 v201, v181 offset:7296
	ds_load_u8 v202, v181 offset:7040
	ds_load_u8 v203, v181 offset:6784
	ds_load_u8 v204, v181 offset:6528
	ds_load_u8 v205, v181 offset:6272
	v_wmma_i32_16x16x16_iu4 v[25:32], v[170:171], v[168:169], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[164:165], v[168:169], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v168, v183, v182, 0xc0c0004
	v_perm_b32 v169, v180, v178, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v180, v187, v184, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v178, v195, v188, 0xc0c0004
	v_perm_b32 v139, v155, v153, 0xc0c0004
	v_perm_b32 v142, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v181, v190, v189, 0xc0c0004
	v_perm_b32 v145, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v182, v192, v191, 0xc0c0004
	v_perm_b32 v140, v141, v140, 0xc0c0004
	v_lshl_or_b32 v117, v134, 16, v138
	v_lshl_or_b32 v116, v116, 16, v135
	v_perm_b32 v108, v144, v143, 0xc0c0004
	v_perm_b32 v110, v137, v136, 0xc0c0004
	v_lshl_or_b32 v87, v103, 16, v107
	v_lshl_or_b32 v86, v86, 16, v104
	v_perm_b32 v103, v125, v123, 0xc0c0004
	v_perm_b32 v104, v119, v118, 0xc0c0004
	v_perm_b32 v107, v115, v112, 0xc0c0004
	v_perm_b32 v105, v106, v105, 0xc0c0004
	v_lshl_or_b32 v73, v69, 16, v72
	v_lshl_or_b32 v72, v65, 16, v74
	v_perm_b32 v65, v92, v89, 0xc0c0004
	v_perm_b32 v69, v78, v109, 0xc0c0004
	v_perm_b32 v74, v77, v76, 0xc0c0004
	v_perm_b32 v71, v71, v70, 0xc0c0004
	v_lshl_or_b32 v169, v169, 16, v168
	v_lshl_or_b32 v168, v180, 16, v178
	v_lshl_or_b32 v181, v182, 16, v181
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v205, v204, 0xc0c0004
	v_perm_b32 v141, v203, v202, 0xc0c0004
	v_lshl_or_b32 v135, v142, 16, v139
	v_lshl_or_b32 v134, v140, 16, v145
	v_perm_b32 v140, v159, v158, 0xc0c0004
	v_perm_b32 v142, v157, v156, 0xc0c0004
	v_perm_b32 v145, v154, v152, 0xc0c0004
	v_perm_b32 v146, v151, v150, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[166:167], v[116:117], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[174:175], v[116:117], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v144, v110, 16, v108
	v_wmma_i32_16x16x16_iu4 v[33:40], v[166:167], v[86:87], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v104, v104, 16, v103
	v_lshl_or_b32 v103, v105, 16, v107
	v_perm_b32 v105, v129, v128, 0xc0c0004
	v_perm_b32 v106, v127, v126, 0xc0c0004
	v_perm_b32 v107, v124, v122, 0xc0c0004
	v_perm_b32 v108, v121, v120, 0xc0c0004
	v_perm_b32 v67, v113, v111, 0xc0c0004
	v_perm_b32 v75, v102, v101, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[174:175], v[86:87], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[166:167], v[72:73], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v70, v69, 16, v65
	v_lshl_or_b32 v69, v71, 16, v74
	v_perm_b32 v65, v100, v99, 0xc0c0004
	v_perm_b32 v71, v98, v96, 0xc0c0004
	v_perm_b32 v74, v90, v88, 0xc0c0004
	v_perm_b32 v76, v83, v81, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[174:175], v[72:73], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v198, v209, v207, 0xc0c0004
	v_perm_b32 v183, v194, v193, 0xc0c0004
	v_perm_b32 v184, v197, v196, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[176:177], v[172:173], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[168:169], v[172:173], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v172, v201, v200, 0xc0c0004
	v_perm_b32 v173, v199, v185, 0xc0c0004
	v_lshl_or_b32 v138, v141, 16, v182
	v_lshl_or_b32 v141, v142, 16, v140
	v_lshl_or_b32 v140, v146, 16, v145
	v_wmma_i32_16x16x16_iu4 v[49:56], v[170:171], v[134:135], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v142, v163, v162, 0xc0c0004
	v_perm_b32 v145, v161, v160, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[164:165], v[134:135], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[170:171], v[103:104], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v106, 16, v105
	v_lshl_or_b32 v105, v108, 16, v107
	v_perm_b32 v107, v133, v132, 0xc0c0004
	v_perm_b32 v108, v131, v130, 0xc0c0004
	v_lshl_or_b32 v67, v75, 16, v67
	v_wmma_i32_16x16x16_iu4 v[17:24], v[164:165], v[103:104], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[170:171], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v75, v71, 16, v65
	v_lshl_or_b32 v74, v76, 16, v74
	v_perm_b32 v65, v97, v95, 0xc0c0004
	v_perm_b32 v71, v91, v85, 0xc0c0004
	v_perm_b32 v72, v84, v82, 0xc0c0004
	v_perm_b32 v73, v80, v79, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[164:165], v[69:70], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v178, v198, 16, v186
	v_lshl_or_b32 v180, v184, 16, v183
	v_lshl_or_b32 v139, v173, 16, v172
	v_wmma_i32_16x16x16_iu4 v[49:56], v[176:177], v[140:141], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v145, v145, 16, v142
	v_wmma_i32_16x16x16_iu4 v[41:48], v[168:169], v[140:141], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[176:177], v[105:106], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v68, v108, 16, v107
	v_wmma_i32_16x16x16_iu4 v[17:24], v[168:169], v[105:106], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[176:177], v[74:75], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v70, v71, 16, v65
	v_lshl_or_b32 v69, v73, 16, v72
	v_wmma_i32_16x16x16_iu4 v[1:8], v[168:169], v[74:75], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[180:181], v[178:179], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[138:139], v[178:179], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[180:181], v[144:145], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[138:139], v[144:145], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[180:181], v[67:68], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[138:139], v[67:68], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[180:181], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[138:139], v[69:70], v[1:8] neg_lo:[1,1,0]
.LBB0_8:
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v65, s33, v93
	.loc	1 1404 33                       ; ragged.py:1404:33
	s_mul_i32 s1, s30, s28
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s4, s33, s1
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v27, v27
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v69, 16, v65
	.loc	1 1404 21                       ; ragged.py:1404:21
	v_add_lshl_u32 v70, s4, v93, 1
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v68, 32, v65
	v_or_b32_e32 v67, 48, v65
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s3, s28, v65
	v_cmp_gt_i32_e64 s2, s28, v69
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v71, 32, v70
	v_add_nc_u32_e32 v72, 64, v70
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s28, v68
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v65, 0x80000000, v70, s3
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s28, v67
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v70, 0x60, v70
	v_cndmask_b32_e64 v69, 0x80000000, v71, s2
	v_cndmask_b32_e64 v68, 0x80000000, v72, s1
	s_and_b32 s25, s17, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_mov_b32 s24, s16
	v_cndmask_b32_e32 v67, 0x80000000, v70, vcc_lo
	s_clause 0x3
	buffer_load_u16 v65, v65, s[24:27], 0 offen
	buffer_load_u16 v69, v69, s[24:27], 0 offen
	buffer_load_u16 v68, v68, s[24:27], 0 offen
	buffer_load_u16 v67, v67, s[24:27], 0 offen
	.loc	1 1411 33                       ; ragged.py:1411:33
	s_mul_i32 s5, s30, s29
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_and_b32 s25, s19, 0xffff
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s5, s31, s5
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_mov_b32 s24, s18
	v_add_lshl_u32 v70, s5, v0, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v71, 4, v0
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v81, v2
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v2, s29, v93
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v70, 0x80000000, v70, s0
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v80, v1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshlrev_b32_e32 v1, 5, v0
	v_and_b32_e32 v0, 0xf0, v0
	.loc	1 1410 36                       ; ragged.py:1410:36
	buffer_load_u16 v70, v70, s[24:27], 0 offen
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_or_b32 v66, v71, 1, v66
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s4, s4, s29
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v73, v10
	v_cvt_f32_i32_e32 v74, v11
	v_cvt_f32_i32_e32 v75, v12
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v11, 28, v94
	v_and_b32_e32 v1, 32, v1
	v_lshl_add_u32 v12, v0, 2, 0
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v10, s4, s31, v2
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v2, 0x8e, v66
	v_or_b32_e32 v94, 2, v66
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v76, v13
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_add3_u32 v11, v12, v1, v11
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v13, s31, v66
	v_or_b32_e32 v12, s31, v2
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v93, 4, v66
	v_or_b32_e32 v92, 6, v66
	.loc	1 1401 19 is_stmt 1             ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v85, v6
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v6, 0x86, v66
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v107, s31, v94
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s29, v12
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v91, 8, v66
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v86, v7
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v71, v0, 1, 0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v7, 0x84, v66
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[0:1], null, s29, 48, v[10:11]
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v106, s31, v93
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v90, 10, v66
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_add_lshl_u32 v1, v10, v66, 2
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v87, v8
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v8, 0x82, v66
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v105, s31, v92
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v89, 12, v66
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v97, s31, v6
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s18, s29, v107
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v72, v9
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v9, 0x80, v66
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v104, s31, v91
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v88, 14, v66
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v98, s31, v7
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s17, s29, v106
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v103, s31, v90
	v_or_b32_e32 v99, s31, v8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v108, v10, v93, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s16, s29, v105
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v102, s31, v89
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s7, s29, v97
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v100, s31, v9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v109, v10, v92, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s15, s29, v104
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v101, s31, v88
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s9, s29, v98
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v110, v10, v91, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s14, s29, v103
	v_cmp_gt_i32_e64 s10, s29, v99
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v111, v10, v90, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s29, v102
	v_cmp_gt_i32_e64 s11, s29, v100
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v84, v5
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v5, 0x88, v66
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v112, v10, v89, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s29, v101
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v83, v4
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v4, 0x8a, v66
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v113, v10, v88, 2
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v82, v3
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v3, 0x8c, v66
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v114, v10, v9, 2
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v79, v16
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v16, s31, v5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v115, v10, v8, 2
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v78, v15
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v15, s31, v4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v116, v10, v7, 2
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v77, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v14, s31, v3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v117, v10, v6, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s6, s29, v16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v118, v10, v5, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s5, s29, v15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v119, v10, v4, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s4, s29, v14
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v96, s29, 5, v10
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add_lshl_u32 v120, v10, v3, 2
	.loc	1 1401 19 is_stmt 1             ; ragged.py:1401:19
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
	s_and_b32 s25, s23, 0xffff
	s_mov_b32 s24, s22
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v12, 16, v65
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add_nc_u32_e32 v95, s8, v10
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s29, v13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v13, v10, v94, 2
	v_add_lshl_u32 v10, v10, v2, 2
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v30, v30, v12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v121, v95, v66, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s8
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v32, v32, v12 :: v_dual_lshlrev_b32 v67, 16, v67
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s2, s8
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v26, v26, v12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v97, 0x80000000, v121, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s18
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v27, v27, v12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v98, 0x80000000, v13, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s17
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v28, v28, v12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v99, 0x80000000, v108, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s16
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v29, v29, v12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v100, 0x80000000, v109, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s15
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v57, v57, v12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v101, 0x80000000, v110, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v122, v95, v94, 2
	v_cndmask_b32_e64 v102, 0x80000000, v111, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v123, v95, v93, 2
	v_cndmask_b32_e64 v103, 0x80000000, v112, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s12
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v31, v31, v12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v104, 0x80000000, v113, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s11
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v79, v79, v67
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v105, 0x80000000, v114, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s10
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v72, v72, v67
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v106, 0x80000000, v115, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s9
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v73, v73, v67
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v107, 0x80000000, v116, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s7
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v74, v74, v67
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v108, 0x80000000, v117, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s6
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v75, v75, v67
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v109, 0x80000000, v118, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s5
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v76, v76, v67
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v110, 0x80000000, v119, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s4
	s_and_b32 s3, s3, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v111, 0x80000000, v120, s19
	v_cndmask_b32_e64 v65, 0x80000000, v10, s3
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_lshlrev_b32_e32 v10, 16, v69
	v_lshlrev_b32_e32 v13, 16, v68
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v68, v25, v12
	v_mul_f32_e32 v58, v58, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v59, v59, v12 :: v_dual_mul_f32 v54, v54, v10
	v_dual_mul_f32 v60, v60, v12 :: v_dual_mul_f32 v53, v53, v10
	v_dual_mul_f32 v61, v61, v12 :: v_dual_mul_f32 v56, v56, v10
	v_dual_mul_f32 v62, v62, v12 :: v_dual_mul_f32 v55, v55, v10
	v_dual_mul_f32 v63, v63, v12 :: v_dual_mul_f32 v42, v42, v10
	v_dual_mul_f32 v64, v64, v12 :: v_dual_mul_f32 v41, v41, v10
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v12, 16, v70
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v49, v49, v10
	v_mul_f32_e32 v50, v50, v10
	v_mul_f32_e32 v51, v51, v10
	v_mul_f32_e32 v52, v52, v10
	v_dual_mul_f32 v43, v43, v10 :: v_dual_mul_f32 v34, v34, v13
	v_dual_mul_f32 v44, v44, v10 :: v_dual_mul_f32 v33, v33, v13
	v_dual_mul_f32 v45, v45, v10 :: v_dual_mul_f32 v36, v36, v13
	v_dual_mul_f32 v46, v46, v10 :: v_dual_mul_f32 v35, v35, v13
	v_dual_mul_f32 v47, v47, v10 :: v_dual_mul_f32 v38, v38, v13
	v_dual_mul_f32 v48, v48, v10 :: v_dual_mul_f32 v37, v37, v13
	v_mul_f32_e32 v39, v39, v13
	v_mul_f32_e32 v40, v40, v13
	v_mul_f32_e32 v69, v17, v13
	v_mul_f32_e32 v70, v18, v13
	v_dual_mul_f32 v112, v19, v13 :: v_dual_mul_f32 v77, v77, v67
	v_dual_mul_f32 v113, v20, v13 :: v_dual_mul_f32 v78, v78, v67
	v_mul_f32_e32 v114, v21, v13
	v_mul_f32_e32 v115, v22, v13
	v_mul_f32_e32 v116, v23, v13
	v_mul_f32_e32 v117, v24, v13
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_store_b32 v11, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v71
	ds_load_b128 v[14:17], v71 offset:16
	ds_load_b128 v[18:21], v71 offset:512
	ds_load_b128 v[22:25], v71 offset:528
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v71, v81, v67
	v_mul_f32_e32 v81, v82, v67
	v_mul_f32_e32 v80, v80, v67
	v_mul_f32_e32 v82, v83, v67
	v_mul_f32_e32 v83, v84, v67
	v_mul_f32_e32 v84, v85, v67
	v_mul_f32_e32 v85, v86, v67
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s18
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v67, v87, v67 :: v_dual_mul_f32 v68, v68, v10
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v26, v26, v11 :: v_dual_mul_f32 v29, v29, v14
	v_dual_mul_f32 v27, v27, v12 :: v_dual_mul_f32 v28, v28, v13
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v30, v30, v15 :: v_dual_mul_f32 v57, v57, v18
	v_dual_mul_f32 v31, v31, v16 :: v_dual_mul_f32 v32, v32, v17
	v_dual_mul_f32 v58, v58, v19 :: v_dual_mul_f32 v59, v59, v20
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v60, v60, v21 :: v_dual_mul_f32 v61, v61, v22
	v_dual_mul_f32 v62, v62, v23 :: v_dual_mul_f32 v63, v63, v24
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0xe
	buffer_store_b32 v68, v1, s[24:27], 0 offen
	buffer_store_b32 v26, v98, s[24:27], 0 offen
	buffer_store_b32 v27, v99, s[24:27], 0 offen
	buffer_store_b32 v28, v100, s[24:27], 0 offen
	buffer_store_b32 v29, v101, s[24:27], 0 offen
	buffer_store_b32 v30, v102, s[24:27], 0 offen
	buffer_store_b32 v31, v103, s[24:27], 0 offen
	buffer_store_b32 v32, v104, s[24:27], 0 offen
	buffer_store_b32 v57, v105, s[24:27], 0 offen
	buffer_store_b32 v58, v106, s[24:27], 0 offen
	buffer_store_b32 v59, v107, s[24:27], 0 offen
	buffer_store_b32 v60, v108, s[24:27], 0 offen
	buffer_store_b32 v61, v109, s[24:27], 0 offen
	buffer_store_b32 v62, v110, s[24:27], 0 offen
	buffer_store_b32 v63, v111, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v122, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s17
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v64, v64, v25 :: v_dual_mul_f32 v49, v49, v10
	v_dual_mul_f32 v50, v50, v11 :: v_dual_mul_f32 v51, v51, v12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v26, 0x80000000, v123, s3
	v_add_lshl_u32 v27, v95, v92, 2
	s_clause 0x3
	buffer_store_b32 v64, v65, s[24:27], 0 offen
	buffer_store_b32 v49, v97, s[24:27], 0 offen
	buffer_store_b32 v50, v1, s[24:27], 0 offen
	buffer_store_b32 v51, v26, s[24:27], 0 offen
	v_add_lshl_u32 v1, v95, v91, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s16
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v52, v52, v13 :: v_dual_mul_f32 v53, v53, v14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v26, 0x80000000, v27, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v27, v95, v90, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_add_lshl_u32 v28, v95, v89, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v52, v26, s[24:27], 0 offen
	buffer_store_b32 v53, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, v95, v88, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s13
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v54, v54, v15 :: v_dual_mul_f32 v55, v55, v16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v26, v95, v9, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s12
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v56, v56, v17 :: v_dual_mul_f32 v41, v41, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v54, v27, s[24:27], 0 offen
	buffer_store_b32 v55, v28, s[24:27], 0 offen
	v_add_lshl_u32 v27, v95, v8, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	v_add_lshl_u32 v28, v95, v7, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v56, v1, s[24:27], 0 offen
	buffer_store_b32 v41, v26, s[24:27], 0 offen
	v_add_lshl_u32 v1, v95, v6, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s9
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v42, v42, v19 :: v_dual_mul_f32 v43, v43, v20
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v26, v95, v5, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s7
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v44, v44, v21 :: v_dual_mul_f32 v45, v45, v22
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v42, v27, s[24:27], 0 offen
	buffer_store_b32 v43, v28, s[24:27], 0 offen
	v_add_lshl_u32 v27, v95, v4, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	v_add_lshl_u32 v28, v95, v3, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v44, v1, s[24:27], 0 offen
	buffer_store_b32 v45, v26, s[24:27], 0 offen
	v_add_lshl_u32 v1, v95, v2, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s4
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v46, v46, v23 :: v_dual_mul_f32 v47, v47, v24
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v26, v96, v66, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s2, s0
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v48, v48, v25 :: v_dual_mul_f32 v33, v33, v10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v46, v27, s[24:27], 0 offen
	buffer_store_b32 v47, v28, s[24:27], 0 offen
	v_add_lshl_u32 v27, v96, v94, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_add_lshl_u32 v28, v96, v93, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v48, v1, s[24:27], 0 offen
	buffer_store_b32 v33, v26, s[24:27], 0 offen
	v_add_lshl_u32 v1, v96, v92, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s17
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v34, v34, v11 :: v_dual_mul_f32 v35, v35, v12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v26, v96, v91, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s16
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v36, v36, v13 :: v_dual_mul_f32 v37, v37, v14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v34, v27, s[24:27], 0 offen
	buffer_store_b32 v35, v28, s[24:27], 0 offen
	v_add_lshl_u32 v27, v96, v90, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_add_lshl_u32 v28, v96, v89, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v36, v1, s[24:27], 0 offen
	buffer_store_b32 v37, v26, s[24:27], 0 offen
	v_add_lshl_u32 v1, v96, v88, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s13
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v38, v38, v15 :: v_dual_mul_f32 v39, v39, v16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v26, v96, v9, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s12
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v40, v40, v17 :: v_dual_mul_f32 v69, v69, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v38, v27, s[24:27], 0 offen
	buffer_store_b32 v39, v28, s[24:27], 0 offen
	v_add_lshl_u32 v27, v96, v8, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_add_lshl_u32 v28, v96, v7, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v40, v1, s[24:27], 0 offen
	buffer_store_b32 v69, v26, s[24:27], 0 offen
	v_add_lshl_u32 v1, v96, v6, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s9
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v70, v70, v19 :: v_dual_mul_f32 v87, v113, v21
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v26, v96, v5, 2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v86, v112, v20 :: v_dual_mul_f32 v113, v115, v23
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s7
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v112, v114, v22
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v70, v27, s[24:27], 0 offen
	buffer_store_b32 v86, v28, s[24:27], 0 offen
	v_add_lshl_u32 v27, v96, v4, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_add_lshl_u32 v28, v96, v3, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v87, v1, s[24:27], 0 offen
	buffer_store_b32 v112, v26, s[24:27], 0 offen
	v_add_lshl_u32 v1, v96, v2, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v26, v0, v66, 2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v114, v116, v24 :: v_dual_mul_f32 v115, v117, v25
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s1, s0
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v10, v72, v10 :: v_dual_mul_f32 v11, v73, v11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v113, v27, s[24:27], 0 offen
	buffer_store_b32 v114, v28, s[24:27], 0 offen
	v_add_lshl_u32 v27, v0, v94, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	v_add_lshl_u32 v28, v0, v93, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v115, v1, s[24:27], 0 offen
	buffer_store_b32 v10, v26, s[24:27], 0 offen
	v_add_lshl_u32 v1, v0, v92, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v10, v0, v91, 2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v12, v74, v12 :: v_dual_mul_f32 v13, v75, v13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v28, 0x80000000, v28, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s16
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v14, v76, v14 :: v_dual_mul_f32 v15, v77, v15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v11, v27, s[24:27], 0 offen
	buffer_store_b32 v12, v28, s[24:27], 0 offen
	v_add_lshl_u32 v11, v0, v90, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s1
	v_add_lshl_u32 v12, v0, v89, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v13, v1, s[24:27], 0 offen
	buffer_store_b32 v14, v10, s[24:27], 0 offen
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
	v_dual_mul_f32 v16, v78, v16 :: v_dual_mul_f32 v17, v79, v17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s11
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v18, v80, v18 :: v_dual_mul_f32 v19, v71, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v8, v0, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	v_add_lshl_u32 v7, v0, v7, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x3
	buffer_store_b32 v15, v11, s[24:27], 0 offen
	buffer_store_b32 v16, v12, s[24:27], 0 offen
	buffer_store_b32 v17, v1, s[24:27], 0 offen
	buffer_store_b32 v18, v9, s[24:27], 0 offen
	v_add_lshl_u32 v1, v0, v6, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v5, v0, v5, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s7
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
	v_dual_mul_f32 v20, v81, v20 :: v_dual_mul_f32 v21, v82, v21
	v_dual_mul_f32 v22, v83, v22 :: v_dual_mul_f32 v23, v84, v23
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v2, 0x80000000, v4, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, vcc_lo, s4
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v24, v85, v24 :: v_dual_mul_f32 v25, v67, v25
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x6
	buffer_store_b32 v19, v8, s[24:27], 0 offen
	buffer_store_b32 v20, v7, s[24:27], 0 offen
	buffer_store_b32 v21, v1, s[24:27], 0 offen
	buffer_store_b32 v22, v5, s[24:27], 0 offen
	buffer_store_b32 v23, v2, s[24:27], 0 offen
	buffer_store_b32 v24, v3, s[24:27], 0 offen
	buffer_store_b32 v25, v0, s[24:27], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 214
		.amdhsa_next_free_sgpr 98
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 214
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 98
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14076
; TotalNumSgprs: 100
; NumVgprs: 214
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 100
; NumVGPRsForWavesPerEU: 214
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     100
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     214
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
