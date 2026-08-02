	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s8, s2
	v_lshlrev_b32_e32 v72, 1, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s18, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s19, 0xff
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
	s_ashr_i32 s25, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s25, s26
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
	s_abs_i32 s6, s25
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s8, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s8
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s8, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s6
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s8, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_i32 s5, s5, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s10, s2, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_hi_u32 s4, s9, s5
	s_abs_i32 s7, s10
	s_add_i32 s9, s9, s4
	s_xor_b32 s11, s10, s25
	s_mul_hi_u32 s9, s7, s9
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_i32 s12, s9, s6
	s_ashr_i32 s27, s11, 31
	s_sub_i32 s7, s7, s12
	s_add_i32 s11, s9, 1
	s_sub_i32 s12, s7, s6
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s9, s11, s9
	s_cselect_b32 s7, s12, s7
	s_add_i32 s11, s9, 1
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s6, s11, s9
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s9, s8, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s28, s6, s27
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[6:7], s[8:9], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s11, s28, s27
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s12, s11, s25
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s22, s11, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s9, s10, s12
	s_mov_b32 s10, 0
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s16, s9, 8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s23, s3, 5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s4, s[4:5], 0x0
	.loc	1 1329 39                       ; ragged.py:1329:39
	s_mul_i32 s9, s8, s18
	.loc	1 1331 39                       ; ragged.py:1331:39
	s_mul_i32 s3, s8, s19
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s5, s4, 31
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s24, s4, 1
	.loc	1 1324 23 is_stmt 1             ; ragged.py:1324:23
	s_cmp_lt_i32 s23, s24
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s17, s22, s9
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s12, s16, s3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_mov_b32 s10, -1
                                        ; implicit-def: $sgpr17
                                        ; implicit-def: $sgpr12
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[20:21], s[0:1], 0x28
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v69, 15, v0
	v_lshrrev_b32_e32 v71, 1, v0
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v70, 1, v0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1324 23 is_stmt 1             ; ragged.py:1324:23
	s_mul_i32 s26, s26, s8
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x0
	s_load_b32 s29, s[0:1], 0x38
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 2, v0
	v_bfe_u32 v7, v0, 4, 1
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_sub_i32 s8, s27, s26
	s_add_i32 s17, s22, s9
	s_sub_i32 s8, s8, s28
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s16, v71
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_mul_i32 s25, s25, s8
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v8, s22, v1
	v_add_nc_u32_e32 v10, s17, v1
	v_and_or_b32 v1, v72, 30, v7
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_lshl_b32 s8, s25, 8
	s_lshl_b32 s2, s2, 8
	s_add_i32 s8, s8, s3
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_lshlrev_b32_e32 v4, 3, v0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v9, 0x80, v3
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s18, v8
	v_lshlrev_b32_e32 v73, 2, v1
	.loc	1 1324 23                       ; ragged.py:1324:23
	v_add3_u32 v8, s8, s2, v71
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v6, 24, v72
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_lshlrev_b32_e32 v2, 4, v70
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s19, v3
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v3, 24, v4
	v_and_b32_e32 v5, 24, v71
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s19, v9
	v_lshl_or_b32 v6, v69, 5, v6
	v_and_b32_e32 v9, 16, v0
	.loc	1 1324 23                       ; ragged.py:1324:23
	v_add_nc_u32_e32 v12, 0x80, v8
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[65:66], null, s29, v8, v[2:3]
	v_xor_b32_e32 v7, 16, v6
	v_mov_b32_e32 v8, v1
	v_cmp_eq_u32_e64 s2, 0, v9
	v_mov_b32_e32 v9, v1
	v_mad_u64_u32 v[66:67], null, s29, v12, v[2:3]
	v_mov_b32_e32 v2, v1
	v_xor_b32_e32 v4, v4, v5
	v_xor_b32_e32 v5, 8, v6
	v_xor_b32_e32 v11, 24, v6
	v_dual_mov_b32 v12, v1 :: v_dual_add_nc_u32 v77, 0, v7
	v_mov_b32_e32 v7, v1
	v_mad_u64_u32 v[67:68], null, v10, s29, v[3:4]
	v_add_nc_u32_e32 v68, 0, v4
	v_dual_mov_b32 v10, v1 :: v_dual_add_nc_u32 v75, 0, v6
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v76, 0, v5
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v78, 0, v11
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_xor_b32_e32 v74, 4, v73
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v14, v1
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
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s8, s12
	s_mov_b32 s9, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_add_nc_u32_e32 v79, s23, v65
	.loc	1 1335 34 is_stmt 1             ; ragged.py:1335:34
	v_add_nc_u32_e32 v81, s23, v66
	.loc	1 1334 34                       ; ragged.py:1334:34
	v_add_nc_u32_e32 v80, s23, v67
	.loc	1 1346 21                       ; ragged.py:1346:21
	s_add_i32 s23, s23, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cmp_lt_i32 s23, s24
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	v_cndmask_b32_e64 v83, 0x80000000, v81, s1
	.loc	1 1334 34                       ; ragged.py:1334:34
	v_cndmask_b32_e64 v87, 0x80000000, v80, s0
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_clause 0x1
	buffer_load_b128 v[79:82], v79, s[12:15], 0 offen
	buffer_load_b128 v[83:86], v83, s[12:15], 0 offen
	.loc	1 1334 34                       ; ragged.py:1334:34
	buffer_load_b64 v[87:88], v87, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt vmcnt(2)
	ds_bpermute_b32 v101, v73, v79
	ds_bpermute_b32 v102, v73, v80
	ds_bpermute_b32 v103, v74, v79
	ds_bpermute_b32 v104, v74, v80
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v105, v73, v83
	ds_bpermute_b32 v106, v73, v84
	ds_bpermute_b32 v107, v74, v83
	ds_bpermute_b32 v108, v74, v84
	.loc	1 1334 34                       ; ragged.py:1334:34
	s_waitcnt vmcnt(0)
	ds_store_b64 v68, v[87:88]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[87:90], v75 offset1:1
	ds_load_2addr_stride64_b64 v[91:94], v75 offset0:2 offset1:3
	.loc	1 1335 34                       ; ragged.py:1335:34
	ds_bpermute_b32 v109, v73, v81
	ds_bpermute_b32 v110, v73, v82
	ds_bpermute_b32 v111, v74, v81
	ds_bpermute_b32 v112, v74, v82
	ds_bpermute_b32 v113, v73, v85
	ds_bpermute_b32 v114, v73, v86
	ds_bpermute_b32 v115, v74, v85
	ds_bpermute_b32 v116, v74, v86
	.loc	1 1334 34                       ; ragged.py:1334:34
	ds_load_2addr_stride64_b64 v[79:82], v76 offset1:1
	ds_load_2addr_stride64_b64 v[83:86], v76 offset0:2 offset1:3
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v95, v103, v101, s2
	v_cndmask_b32_e64 v96, v104, v102, s2
	v_cndmask_b32_e64 v103, v101, v103, s2
	v_cndmask_b32_e64 v104, v102, v104, s2
	v_cndmask_b32_e64 v99, v107, v105, s2
	v_cndmask_b32_e64 v100, v108, v106, s2
	v_cndmask_b32_e64 v105, v105, v107, s2
	v_cndmask_b32_e64 v106, v106, v108, s2
	.loc	1 1336 31                       ; ragged.py:1336:31
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[95:96], v[87:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[95:96], v[89:90], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[99:100], v[87:88], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[99:100], v[89:90], v[25:32] neg_lo:[1,1,0]
	.loc	1 1334 34                       ; ragged.py:1334:34
	ds_load_2addr_stride64_b64 v[87:90], v77 offset1:1
	.loc	1 1336 31                       ; ragged.py:1336:31
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[95:96], v[91:92], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[95:96], v[93:94], v[49:56] neg_lo:[1,1,0]
	.loc	1 1334 34                       ; ragged.py:1334:34
	ds_load_2addr_stride64_b64 v[95:98], v77 offset0:2 offset1:3
	.loc	1 1336 31                       ; ragged.py:1336:31
	v_wmma_i32_16x16x16_iu4 v[41:48], v[99:100], v[91:92], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[99:100], v[93:94], v[57:64] neg_lo:[1,1,0]
	.loc	1 1334 34                       ; ragged.py:1334:34
	ds_load_2addr_stride64_b64 v[91:94], v78 offset1:1
	ds_load_2addr_stride64_b64 v[99:102], v78 offset0:2 offset1:3
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt lgkmcnt(11)
	v_cndmask_b32_e64 v107, v111, v109, s2
	s_waitcnt lgkmcnt(10)
	v_cndmask_b32_e64 v108, v112, v110, s2
	v_cndmask_b32_e64 v109, v109, v111, s2
	v_cndmask_b32_e64 v110, v110, v112, s2
	s_waitcnt lgkmcnt(7)
	v_cndmask_b32_e64 v111, v115, v113, s2
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v112, v116, v114, s2
	.loc	1 1336 31                       ; ragged.py:1336:31
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[107:108], v[79:80], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[107:108], v[81:82], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[107:108], v[83:84], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[107:108], v[85:86], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[111:112], v[79:80], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[111:112], v[81:82], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[111:112], v[83:84], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[111:112], v[85:86], v[57:64] neg_lo:[1,1,0]
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v113, v113, v115, s2
	v_cndmask_b32_e64 v114, v114, v116, s2
	.loc	1 1336 31                       ; ragged.py:1336:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[103:104], v[87:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[105:106], v[87:88], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[103:104], v[89:90], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[105:106], v[89:90], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[103:104], v[95:96], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[103:104], v[97:98], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[105:106], v[95:96], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[105:106], v[97:98], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[109:110], v[91:92], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[113:114], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[109:110], v[93:94], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[113:114], v[93:94], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[109:110], v[99:100], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[113:114], v[99:100], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[109:110], v[101:102], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[113:114], v[101:102], v[57:64] neg_lo:[1,1,0]
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v96, v1
	v_cvt_f32_i32_e32 v95, v2
	v_cvt_f32_i32_e32 v94, v3
	v_cvt_f32_i32_e32 v93, v4
	v_cvt_f32_i32_e32 v92, v5
	v_cvt_f32_i32_e32 v91, v6
	v_cvt_f32_i32_e32 v90, v7
	v_cvt_f32_i32_e32 v89, v8
	v_cvt_f32_i32_e32 v75, v9
	v_cvt_f32_i32_e32 v74, v10
	v_cvt_f32_i32_e32 v73, v11
	v_cvt_f32_i32_e32 v68, v12
	v_cvt_f32_i32_e32 v66, v13
	v_cvt_f32_i32_e32 v65, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v14, v16
	v_cvt_f32_i32_e32 v88, v17
	v_cvt_f32_i32_e32 v87, v18
	v_cvt_f32_i32_e32 v86, v19
	v_cvt_f32_i32_e32 v85, v20
	v_cvt_f32_i32_e32 v84, v21
	v_cvt_f32_i32_e32 v83, v22
	v_cvt_f32_i32_e32 v82, v23
	v_cvt_f32_i32_e32 v81, v24
	v_cvt_f32_i32_e32 v67, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v25, v27
	v_cvt_f32_i32_e32 v24, v28
	v_cvt_f32_i32_e32 v13, v29
	v_cvt_f32_i32_e32 v12, v30
	v_cvt_f32_i32_e32 v11, v31
	v_cvt_f32_i32_e32 v10, v32
	v_cvt_f32_i32_e32 v80, v33
	v_cvt_f32_i32_e32 v79, v34
	v_cvt_f32_i32_e32 v78, v35
	v_cvt_f32_i32_e32 v77, v36
	v_cvt_f32_i32_e32 v76, v37
	v_cvt_f32_i32_e32 v37, v38
	v_cvt_f32_i32_e32 v36, v39
	v_cvt_f32_i32_e32 v35, v40
	v_cvt_f32_i32_e32 v23, v41
	v_cvt_f32_i32_e32 v22, v42
	v_cvt_f32_i32_e32 v21, v43
	v_cvt_f32_i32_e32 v20, v44
	v_cvt_f32_i32_e32 v9, v45
	v_cvt_f32_i32_e32 v8, v46
	v_cvt_f32_i32_e32 v7, v47
	v_cvt_f32_i32_e32 v6, v48
	v_cvt_f32_i32_e32 v34, v49
	v_cvt_f32_i32_e32 v33, v50
	v_cvt_f32_i32_e32 v32, v51
	v_cvt_f32_i32_e32 v31, v52
	v_cvt_f32_i32_e32 v30, v53
	v_cvt_f32_i32_e32 v29, v54
	v_cvt_f32_i32_e32 v28, v55
	v_cvt_f32_i32_e32 v27, v56
	v_cvt_f32_i32_e32 v19, v57
	v_cvt_f32_i32_e32 v18, v58
	v_cvt_f32_i32_e32 v17, v59
	v_cvt_f32_i32_e32 v16, v60
	v_cvt_f32_i32_e32 v5, v61
	v_cvt_f32_i32_e32 v4, v62
	v_cvt_f32_i32_e32 v3, v63
	v_cvt_f32_i32_e32 v2, v64
	v_mov_b32_e32 v1, v72
	s_add_i32 s12, s16, s3
.LBB0_7:                                ; %._crit_edge
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v38, s22, v69
	.loc	1 1404 21                       ; ragged.py:1404:21
	v_add_lshl_u32 v40, s17, v69, 1
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s5, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v43, 16, v38
	v_or_b32_e32 v42, 32, v38
	v_or_b32_e32 v41, 48, v38
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s2, s18, v38
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v44, 32, v40
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s18, v43
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v45, 64, v40
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s18, v42
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v38, 0x80000000, v40, s2
	v_add_nc_u32_e32 v40, 0x60, v40
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s18, v41
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v43, 0x80000000, v44, s1
	s_mov_b32 s8, s4
	v_cndmask_b32_e64 v42, 0x80000000, v45, s0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v39, s16, v0
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_dual_cndmask_b32 v40, 0x80000000, v40 :: v_dual_and_b32 v1, 28, v1
	s_clause 0x3
	buffer_load_u16 v46, v38, s[8:11], 0 offen
	buffer_load_u16 v47, v43, s[8:11], 0 offen
	buffer_load_u16 v48, v42, s[8:11], 0 offen
	buffer_load_u16 v49, v40, s[8:11], 0 offen
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v38, s12, v0, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s3, s19, v39
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_and_b32 s9, s7, 0xffff
	s_mov_b32 s8, s6
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v40, s19, v69
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	s_mov_b32 s22, s10
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_cndmask_b32_e64 v38, 0x80000000, v38, s3
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s3, s17, s19
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	s_mov_b32 s23, s11
	s_and_b32 s21, s21, 0xffff
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	buffer_load_u16 v51, v38, s[8:11], 0 offen
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v38, 4, v0
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v50, s3, s16, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_add_u32 v64, s19, 5, v50
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v109, 16, v47
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v83, v83, v109 :: v_dual_lshlrev_b32 v108, 16, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v94, v94, v108
	v_dual_mul_f32 v85, v85, v109 :: v_dual_and_b32 v0, 0xf0, v0
	v_dual_mul_f32 v95, v95, v108 :: v_dual_lshlrev_b32 v52, 5, v70
	v_mul_f32_e32 v93, v93, v108
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v54, v0, 2, 0
	v_lshl_add_u32 v55, v0, 1, 0
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v46, 16, v51
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v81, v81, v109 :: v_dual_lshlrev_b32 v110, 16, v48
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_add3_u32 v52, v54, v52, v1
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v92, v92, v108 :: v_dual_lshlrev_b32 v111, 16, v49
	v_dual_mul_f32 v96, v96, v108 :: v_dual_and_b32 v39, 0x70, v71
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_store_b32 v52, v46
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v55
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[0:1], null, s19, 48, v[50:51]
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v90, v90, v108 :: v_dual_mul_f32 v79, v79, v110
	v_dual_mul_f32 v89, v89, v108 :: v_dual_mul_f32 v52, v82, v109
	v_mul_f32_e32 v51, v88, v109
	v_mul_f32_e32 v87, v87, v109
	v_mul_f32_e32 v86, v86, v109
	v_dual_mul_f32 v80, v80, v110 :: v_dual_mul_f32 v33, v33, v111
	v_mul_f32_e32 v78, v78, v110
	v_dual_mul_f32 v77, v77, v110 :: v_dual_mul_f32 v34, v34, v111
	v_dual_mul_f32 v76, v76, v110 :: v_dual_mul_f32 v113, v29, v111
	v_mul_f32_e32 v37, v37, v110
	v_dual_mul_f32 v82, v36, v110 :: v_dual_mul_f32 v27, v27, v111
	v_dual_mul_f32 v88, v35, v110 :: v_dual_mul_f32 v35, v32, v111
	v_mul_f32_e32 v36, v31, v111
	v_mul_f32_e32 v112, v30, v111
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_load_b128 v[29:32], v55 offset:16
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v28, v28, v111 :: v_dual_mul_f32 v85, v85, v49
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v96, v96, v46 :: v_dual_mul_f32 v95, v95, v47
	v_dual_mul_f32 v94, v94, v48 :: v_dual_mul_f32 v87, v87, v47
	v_mul_f32_e32 v93, v93, v49
	v_dual_mul_f32 v51, v51, v46 :: v_dual_mul_f32 v86, v86, v48
	v_dual_mul_f32 v79, v79, v47 :: v_dual_mul_f32 v80, v80, v46
	v_dual_mul_f32 v77, v77, v49 :: v_dual_mul_f32 v78, v78, v48
	v_dual_mul_f32 v47, v33, v47 :: v_dual_mul_f32 v46, v34, v46
	v_dual_mul_f32 v49, v36, v49 :: v_dual_mul_f32 v48, v35, v48
	ds_load_b128 v[33:36], v55 offset:512
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_or_b32 v53, v38, 1, v39
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v91, v91, v108 :: v_dual_mul_f32 v84, v84, v109
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v54, s19, 4, v50
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v92, v92, v29
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v62, 2, v53
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v63, s16, v53
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v61, 4, v53
	v_or_b32_e32 v38, 0x8e, v53
	v_or_b32_e32 v39, 0x8c, v53
	v_or_b32_e32 v40, 0x8a, v53
	v_or_b32_e32 v41, 0x88, v53
	v_or_b32_e32 v42, 0x86, v53
	v_or_b32_e32 v43, 0x84, v53
	v_or_b32_e32 v44, 0x82, v53
	v_or_b32_e32 v45, 0x80, v53
	v_or_b32_e32 v56, 14, v53
	v_or_b32_e32 v57, 12, v53
	v_or_b32_e32 v58, 10, v53
	v_or_b32_e32 v59, 8, v53
	v_or_b32_e32 v60, 6, v53
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v107, s16, v62
	.loc	1 1415 17 is_stmt 1             ; ragged.py:1415:17
	v_dual_mul_f32 v91, v91, v30 :: v_dual_mul_f32 v90, v90, v31
	v_dual_mul_f32 v89, v89, v32 :: v_dual_mul_f32 v84, v84, v29
	v_dual_mul_f32 v83, v83, v30 :: v_dual_mul_f32 v52, v52, v31
	v_dual_mul_f32 v81, v81, v32 :: v_dual_mul_f32 v76, v76, v29
	v_mul_f32_e32 v27, v27, v32
	v_dual_mul_f32 v37, v37, v30 :: v_dual_mul_f32 v82, v82, v31
	v_mul_f32_e32 v29, v112, v29
	v_dual_mul_f32 v88, v88, v32 :: v_dual_mul_f32 v67, v67, v109
	v_mul_f32_e32 v30, v113, v30
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v32, v75, v108 :: v_dual_mul_f32 v25, v25, v109
	v_dual_mul_f32 v74, v74, v108 :: v_dual_mul_f32 v23, v23, v110
	v_dual_mul_f32 v68, v68, v108 :: v_dual_mul_f32 v21, v21, v110
	v_dual_mul_f32 v26, v26, v109 :: v_dual_mul_f32 v113, v17, v111
	v_dual_mul_f32 v24, v24, v109 :: v_dual_mul_f32 v75, v19, v111
	v_mul_f32_e32 v112, v18, v111
	v_mul_f32_e32 v114, v16, v111
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_load_b128 v[16:19], v55 offset:528
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v20, v20, v110 :: v_dual_mul_f32 v67, v67, v33
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s3, s19, v63
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v106, s16, v61
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v50, v53, 2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v69, s16, v38
	v_or_b32_e32 v70, s16, v39
	v_or_b32_e32 v71, s16, v40
	v_or_b32_e32 v72, s16, v41
	v_or_b32_e32 v97, s16, v42
	v_or_b32_e32 v98, s16, v43
	v_or_b32_e32 v99, s16, v44
	v_or_b32_e32 v100, s16, v45
	v_or_b32_e32 v101, s16, v56
	v_or_b32_e32 v102, s16, v57
	v_or_b32_e32 v103, s16, v58
	v_or_b32_e32 v104, s16, v59
	v_or_b32_e32 v105, s16, v60
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v32, v32, v33 :: v_dual_mul_f32 v25, v25, v35
	v_dual_mul_f32 v55, v74, v34 :: v_dual_mul_f32 v68, v68, v36
	v_dual_mul_f32 v21, v21, v35 :: v_dual_mul_f32 v24, v24, v36
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v13, v13, v109
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v23, v23, v33 :: v_dual_mul_f32 v20, v20, v36
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v11, v11, v109
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v33, v75, v33 :: v_dual_mul_f32 v36, v114, v36
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v9, v9, v110
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v114, v54, v53, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s17, s19, v107
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s4, s2, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v63, v50, v62, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s18, s19, v106
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s4, s19, v69
	v_cmp_gt_i32_e64 s5, s19, v70
	v_cmp_gt_i32_e64 s6, s19, v71
	v_cmp_gt_i32_e64 s7, s19, v72
	v_cmp_gt_i32_e64 s8, s19, v97
	v_cmp_gt_i32_e64 s9, s19, v98
	v_cmp_gt_i32_e64 s10, s19, v99
	v_cmp_gt_i32_e64 s11, s19, v100
	v_cmp_gt_i32_e64 s12, s19, v101
	v_cmp_gt_i32_e64 s13, s19, v102
	v_cmp_gt_i32_e64 s14, s19, v103
	v_cmp_gt_i32_e64 s15, s19, v104
	v_cmp_gt_i32_e64 s16, s19, v105
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s1, s3
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v28, v28, v31 :: v_dual_mul_f32 v73, v73, v108
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v31, v50, v61, 2
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v22, v22, v110
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v106, 0x80000000, v114, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s2, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v74, v50, v60, 2
	v_cndmask_b32_e64 v63, 0x80000000, v63, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s2, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v75, v50, v59, 2
	v_cndmask_b32_e64 v31, 0x80000000, v31, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s2, s16
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v73, v73, v35 :: v_dual_mul_f32 v26, v26, v34
	v_dual_mul_f32 v35, v113, v35 :: v_dual_mul_f32 v22, v22, v34
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v65, v65, v108 :: v_dual_mul_f32 v34, v112, v34
	v_mul_f32_e32 v15, v15, v108
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v112, v50, v58, 2
	v_cndmask_b32_e64 v74, 0x80000000, v74, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s2, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v113, v50, v57, 2
	v_cndmask_b32_e64 v75, 0x80000000, v75, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s2, s14
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v66, v66, v108 :: v_dual_mul_f32 v7, v7, v110
	v_dual_mul_f32 v14, v14, v108 :: v_dual_mul_f32 v5, v5, v111
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v108, v50, v56, 2
	v_cndmask_b32_e64 v112, 0x80000000, v112, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s2, s13
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v12, v12, v109 :: v_dual_mul_f32 v3, v3, v111
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v10, v10, v109 :: v_dual_mul_f32 v15, v15, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v109, v50, v45, 2
	v_cndmask_b32_e64 v113, 0x80000000, v113, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s2, s12
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v8, v8, v110 :: v_dual_mul_f32 v65, v65, v17
	v_dual_mul_f32 v6, v6, v110 :: v_dual_mul_f32 v13, v13, v16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v110, v50, v44, 2
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v4, v4, v111 :: v_dual_mul_f32 v11, v11, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v108, 0x80000000, v108, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s2, s11
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v2, v2, v111 :: v_dual_mul_f32 v9, v9, v16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v111, v50, v43, 2
	v_cndmask_b32_e64 v109, 0x80000000, v109, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s2, s10
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v66, v66, v16 :: v_dual_mul_f32 v7, v7, v18
	v_dual_mul_f32 v14, v14, v19 :: v_dual_mul_f32 v5, v5, v16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v16, v50, v42, 2
	v_cndmask_b32_e64 v110, 0x80000000, v110, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s2, s9
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v12, v12, v17 :: v_dual_mul_f32 v3, v3, v18
	v_mul_f32_e32 v8, v8, v17
	v_mul_f32_e32 v4, v4, v17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v17, v50, v41, 2
	v_cndmask_b32_e64 v111, 0x80000000, v111, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s2, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v18, v50, v40, 2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s2, s7
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v10, v10, v19
	v_mul_f32_e32 v6, v6, v19
	v_mul_f32_e32 v2, v2, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v50, v39, 2
	v_add_lshl_u32 v50, v50, v38, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s2, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b32 v96, v1, s[20:23], 0 offen
	v_add_lshl_u32 v1, v54, v62, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s2, s5
	s_and_b32 s2, s2, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v96, v54, v61, 2
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v69, v54, v60, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v70, v54, v59, 2
	v_cndmask_b32_e64 v96, 0x80000000, v96, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v71, v54, v58, 2
	v_cndmask_b32_e64 v69, 0x80000000, v69, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v72, v54, v57, 2
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v97, v54, v56, 2
	v_cndmask_b32_e64 v71, 0x80000000, v71, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v98, v54, v45, 2
	v_cndmask_b32_e64 v72, 0x80000000, v72, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v99, v54, v44, 2
	v_cndmask_b32_e64 v97, 0x80000000, v97, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v100, v54, v43, 2
	v_cndmask_b32_e64 v98, 0x80000000, v98, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v101, v54, v42, 2
	v_cndmask_b32_e64 v99, 0x80000000, v99, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v102, v54, v41, 2
	v_cndmask_b32_e64 v100, 0x80000000, v100, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v103, v54, v40, 2
	v_cndmask_b32_e64 v101, 0x80000000, v101, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v104, v54, v39, 2
	v_add_lshl_u32 v54, v54, v38, 2
	v_cndmask_b32_e64 v102, 0x80000000, v102, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v105, v64, v53, 2
	v_cndmask_b32_e64 v103, 0x80000000, v103, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, s1, s5
	s_and_b32 s1, s1, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v107, v64, v62, 2
	v_cndmask_b32_e64 v54, 0x80000000, v54, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s19
	v_cndmask_b32_e64 v104, 0x80000000, v104, s2
	s_clause 0x1d
	buffer_store_b32 v95, v63, s[20:23], 0 offen
	buffer_store_b32 v94, v31, s[20:23], 0 offen
	buffer_store_b32 v93, v74, s[20:23], 0 offen
	buffer_store_b32 v92, v75, s[20:23], 0 offen
	buffer_store_b32 v91, v112, s[20:23], 0 offen
	buffer_store_b32 v90, v113, s[20:23], 0 offen
	buffer_store_b32 v89, v108, s[20:23], 0 offen
	buffer_store_b32 v32, v109, s[20:23], 0 offen
	buffer_store_b32 v55, v110, s[20:23], 0 offen
	buffer_store_b32 v73, v111, s[20:23], 0 offen
	buffer_store_b32 v68, v16, s[20:23], 0 offen
	buffer_store_b32 v66, v17, s[20:23], 0 offen
	buffer_store_b32 v65, v18, s[20:23], 0 offen
	buffer_store_b32 v15, v19, s[20:23], 0 offen
	buffer_store_b32 v14, v50, s[20:23], 0 offen
	buffer_store_b32 v51, v106, s[20:23], 0 offen
	buffer_store_b32 v87, v1, s[20:23], 0 offen
	buffer_store_b32 v86, v96, s[20:23], 0 offen
	buffer_store_b32 v85, v69, s[20:23], 0 offen
	buffer_store_b32 v84, v70, s[20:23], 0 offen
	buffer_store_b32 v83, v71, s[20:23], 0 offen
	buffer_store_b32 v52, v72, s[20:23], 0 offen
	buffer_store_b32 v81, v97, s[20:23], 0 offen
	buffer_store_b32 v67, v98, s[20:23], 0 offen
	buffer_store_b32 v26, v99, s[20:23], 0 offen
	buffer_store_b32 v25, v100, s[20:23], 0 offen
	buffer_store_b32 v24, v101, s[20:23], 0 offen
	buffer_store_b32 v13, v102, s[20:23], 0 offen
	buffer_store_b32 v12, v103, s[20:23], 0 offen
	buffer_store_b32 v11, v104, s[20:23], 0 offen
	v_add_lshl_u32 v1, v64, v61, 2
	v_cndmask_b32_e64 v11, 0x80000000, v105, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v10, v54, s[20:23], 0 offen
	buffer_store_b32 v80, v11, s[20:23], 0 offen
	v_cndmask_b32_e64 v12, 0x80000000, v107, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v10, v64, v60, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	s_clause 0x1
	buffer_store_b32 v79, v12, s[20:23], 0 offen
	buffer_store_b32 v78, v1, s[20:23], 0 offen
	v_add_lshl_u32 v1, v64, v59, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v11, v64, v58, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v12, v64, v57, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v77, v10, s[20:23], 0 offen
	buffer_store_b32 v76, v1, s[20:23], 0 offen
	v_cndmask_b32_e64 v11, 0x80000000, v11, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v64, v56, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	v_add_lshl_u32 v10, v64, v45, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v37, v11, s[20:23], 0 offen
	buffer_store_b32 v82, v12, s[20:23], 0 offen
	v_add_lshl_u32 v11, v64, v44, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v12, v64, v43, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v88, v1, s[20:23], 0 offen
	buffer_store_b32 v23, v10, s[20:23], 0 offen
	v_cndmask_b32_e64 v11, 0x80000000, v11, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v64, v42, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	v_add_lshl_u32 v10, v64, v41, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v22, v11, s[20:23], 0 offen
	buffer_store_b32 v21, v12, s[20:23], 0 offen
	v_add_lshl_u32 v11, v64, v40, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v12, v64, v39, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v20, v1, s[20:23], 0 offen
	buffer_store_b32 v9, v10, s[20:23], 0 offen
	v_cndmask_b32_e64 v11, 0x80000000, v11, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v64, v38, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	s_clause 0x1
	buffer_store_b32 v8, v11, s[20:23], 0 offen
	buffer_store_b32 v7, v12, s[20:23], 0 offen
	v_add_lshl_u32 v7, v0, v53, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s0, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v8, v0, v62, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v9, v0, v61, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v6, v1, s[20:23], 0 offen
	buffer_store_b32 v46, v7, s[20:23], 0 offen
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v0, v60, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	v_add_lshl_u32 v6, v0, v59, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v7, v0, v58, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v47, v8, s[20:23], 0 offen
	buffer_store_b32 v48, v9, s[20:23], 0 offen
	v_add_lshl_u32 v8, v0, v57, 2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v49, v1, s[20:23], 0 offen
	buffer_store_b32 v29, v6, s[20:23], 0 offen
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v0, v56, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	v_add_lshl_u32 v6, v0, v45, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v30, v7, s[20:23], 0 offen
	buffer_store_b32 v28, v8, s[20:23], 0 offen
	v_add_lshl_u32 v7, v0, v44, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v8, v0, v43, 2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v27, v1, s[20:23], 0 offen
	buffer_store_b32 v33, v6, s[20:23], 0 offen
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v0, v42, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	v_add_lshl_u32 v6, v0, v41, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v34, v7, s[20:23], 0 offen
	buffer_store_b32 v35, v8, s[20:23], 0 offen
	v_add_lshl_u32 v7, v0, v40, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v8, v0, v39, 2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_add_lshl_u32 v0, v0, v38, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s5
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v36, v1, s[20:23], 0 offen
	buffer_store_b32 v5, v6, s[20:23], 0 offen
	buffer_store_b32 v4, v7, s[20:23], 0 offen
	buffer_store_b32 v3, v8, s[20:23], 0 offen
	buffer_store_b32 v2, v0, s[20:23], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 117
		.amdhsa_next_free_sgpr 30
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
		.amdhsa_inst_pref_size 45
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 117
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5684
; TotalNumSgprs: 32
; NumVgprs: 117
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 32
; NumVGPRsForWavesPerEU: 117
; Occupancy: 12
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     117
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
