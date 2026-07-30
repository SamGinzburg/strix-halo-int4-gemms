	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm32_bn128_bk64_w4_s2_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm32_bn128_bk64_w4_s2_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm32_bn128_bk64_w4_s2_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm32_bn128_bk64_w4_s2_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm32_bn128_bk64_w4_s2_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1256 0                        ; ragged.py:1256:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[22:23], s[0:1], 0x30
.Ltmp0:
	.loc	1 1275 21 prologue_end          ; ragged.py:1275:21
	s_abs_i32 s8, s2
	.loc	1 1280 36                       ; ragged.py:1280:36
	v_and_b32_e32 v38, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1272:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s22, 31
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1273:21 ]
	s_add_i32 s4, s23, 0x7f
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1272:21 ]
	s_ashr_i32 s5, s3, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1273:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1272:21 ]
	s_lshr_b32 s5, s5, 27
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1273:21 ]
	s_lshr_b32 s6, s6, 25
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1272:21 ]
	s_add_i32 s3, s3, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1273:21 ]
	s_add_i32 s4, s4, s6
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1272:21 ]
	s_ashr_i32 s3, s3, 5
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1273:21 ]
	s_ashr_i32 s6, s4, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1274 28 is_stmt 1             ; ragged.py:1274:28
	s_mul_i32 s3, s6, s3
	.loc	1 1275 21                       ; ragged.py:1275:21
	s_abs_i32 s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s7, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s5
	s_mul_hi_u32 s7, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s7
	s_xor_b32 s7, s2, s3
	s_mul_hi_u32 s5, s8, s5
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s5, s4
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s8, s4
	s_cmp_ge_u32 s8, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s8, s4
	s_cselect_b32 s4, s9, s5
	.loc	1 1277 17                       ; ragged.py:1277:17
	s_abs_i32 s5, s6
	.loc	1 1275 21                       ; ragged.py:1275:21
	s_xor_b32 s4, s4, s7
	.loc	1 1277 17                       ; ragged.py:1277:17
	s_cvt_f32_u32 s8, s5
	.loc	1 1275 21                       ; ragged.py:1275:21
	s_sub_i32 s33, s4, s7
	.loc	1 1277 17                       ; ragged.py:1277:17
	s_sub_i32 s4, 0, s5
	.loc	1 1276 22                       ; ragged.py:1276:22
	s_mul_i32 s3, s33, s3
	.loc	1 1277 17                       ; ragged.py:1277:17
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 1276 16                       ; ragged.py:1276:16
	s_sub_i32 s9, s2, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	.loc	1 1277 17                       ; ragged.py:1277:17
	v_readfirstlane_b32 s8, v1
	.loc	1 1281 36                       ; ragged.py:1281:36
	v_and_b32_e32 v1, 0x60, v0
	.loc	1 1277 17                       ; ragged.py:1277:17
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s4, s8
	s_mul_hi_u32 s2, s8, s4
	s_abs_i32 s4, s9
	s_add_i32 s8, s8, s2
	s_load_b64 s[2:3], s[0:1], 0x20
	s_mul_hi_u32 s7, s4, s8
	s_xor_b32 s8, s9, s6
	s_mul_i32 s10, s7, s5
	s_ashr_i32 s8, s8, 31
	s_sub_i32 s4, s4, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s4, s11, s4
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s4, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_xor_b32 s5, s4, s8
	.loc	1 1286 49                       ; ragged.py:1286:49
	s_lshl_b32 s4, s33, 1
	.loc	1 1277 17                       ; ragged.py:1277:17
	s_sub_i32 s8, s5, s8
	.loc	1 1286 20                       ; ragged.py:1286:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1278 24                       ; ragged.py:1278:24
	s_mul_i32 s10, s8, s6
	.loc	1 1286 20                       ; ragged.py:1286:20
	s_lshl_b64 s[6:7], s[4:5], 2
	.loc	1 1278 17                       ; ragged.py:1278:17
	s_sub_i32 s4, s9, s10
	.loc	1 1280 18                       ; ragged.py:1280:18
	s_lshl_b32 s36, s8, 5
	.loc	1 1286 20                       ; ragged.py:1286:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s2, s6
	s_addc_u32 s3, s3, s7
	.loc	1 1280 18                       ; ragged.py:1280:18
	v_or_b32_e32 v71, s36, v38
	.loc	1 1286 20                       ; ragged.py:1286:20
	s_load_b64 s[34:35], s[2:3], 0x0
	s_mov_b32 s5, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1280 18                       ; ragged.py:1280:18
	v_or_b32_e32 v72, 16, v71
	.loc	1 1282 20                       ; ragged.py:1282:20
	v_cmp_gt_i32_e64 s3, s22, v71
	v_cmp_gt_i32_e64 s2, s22, v72
	.loc	1 1290 15                       ; ragged.py:1290:15
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s34, s35
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1319 18                       ; ragged.py:1319:18
	s_lshl_b32 s37, s23, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; ragged.py:0:18
	s_mov_b32 s5, -1
                                        ; implicit-def: $sgpr37
.LBB0_3:                                ; %Flow225
	s_load_b64 s[20:21], s[0:1], 0x28
	v_lshrrev_b32_e32 v63, 1, v1
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v64, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s38, s4, 7
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 1281 18 is_stmt 1             ; ragged.py:1281:18
	v_or_b32_e32 v9, s38, v0
	v_dual_mov_b32 v68, 0 :: v_dual_and_b32 v5, 0x70, v0
	v_dual_mov_b32 v66, 0 :: v_dual_lshlrev_b32 v7, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[10:11], null, s23, 3, v[9:10]
	v_dual_mov_b32 v60, 0 :: v_dual_lshlrev_b32 v31, 1, v0
	v_dual_mov_b32 v58, 0 :: v_dual_and_b32 v7, 32, v7
	s_clause 0x1
	s_load_b256 s[4:11], s[0:1], 0x0
	s_load_b32 s1, s[0:1], 0x38
	v_dual_mov_b32 v69, 0 :: v_dual_and_b32 v2, 31, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[11:12], null, s23, 5, v[9:10]
	v_mad_u64_u32 v[12:13], null, s23, 6, v[9:10]
	v_mad_u64_u32 v[13:14], null, s23, 7, v[9:10]
	v_mad_u64_u32 v[14:15], null, s23, 9, v[9:10]
	v_mad_u64_u32 v[15:16], null, s23, 10, v[9:10]
	v_mad_u64_u32 v[16:17], null, s23, 11, v[9:10]
	v_mad_u64_u32 v[17:18], null, s23, 12, v[9:10]
	v_mad_u64_u32 v[18:19], null, s23, 13, v[9:10]
	v_mad_u64_u32 v[19:20], null, s23, 14, v[9:10]
	v_mad_u64_u32 v[20:21], null, s23, 15, v[9:10]
	v_mad_u64_u32 v[21:22], null, s23, 17, v[9:10]
	v_mad_u64_u32 v[22:23], null, s23, 18, v[9:10]
	v_mad_u64_u32 v[23:24], null, s23, 19, v[9:10]
	v_mad_u64_u32 v[24:25], null, s23, 20, v[9:10]
	v_mad_u64_u32 v[25:26], null, s23, 21, v[9:10]
	v_mad_u64_u32 v[26:27], null, s23, 22, v[9:10]
	v_mad_u64_u32 v[27:28], null, s23, 23, v[9:10]
	v_mad_u64_u32 v[28:29], null, s23, 24, v[9:10]
	v_dual_mov_b32 v62, 0 :: v_dual_lshlrev_b32 v29, 2, v5
	.loc	1 1291 53                       ; ragged.py:1291:53
	v_lshrrev_b32_e32 v1, 5, v1
	v_or_b32_e32 v30, 0xf80, v0
	v_dual_mov_b32 v54, 0 :: v_dual_and_b32 v31, 28, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v7, 0, v29, v7
	.loc	1 1280 18                       ; ragged.py:1280:18
	v_or_b32_e32 v3, s36, v2
	v_mul_lo_u32 v1, s22, v1
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v85, 0, v30
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v86, v7, v31
	v_mad_u64_u32 v[30:31], null, s23, 25, v[9:10]
	v_mad_u64_u32 v[31:32], null, s23, 26, v[9:10]
	v_mad_u64_u32 v[32:33], null, s23, 27, v[9:10]
	.loc	1 1282 20                       ; ragged.py:1282:20
	v_cmp_gt_i32_e64 s0, s22, v3
	v_or_b32_e32 v3, 0x380, v0
	v_or_b32_e32 v4, 0x3f0, v0
	v_or_b32_e32 v6, 0x780, v0
	v_or_b32_e32 v8, 0xb80, v0
	v_dual_mov_b32 v52, 0 :: v_dual_lshlrev_b32 v5, 1, v5
	v_mad_u64_u32 v[33:34], null, s23, 28, v[9:10]
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v78, 0, v38
	v_mad_u64_u32 v[34:35], null, s23, 29, v[9:10]
	s_mov_b32 s12, 0
	v_mad_u64_u32 v[35:36], null, s23, 30, v[9:10]
	v_mad_u64_u32 v[36:37], null, s23, 31, v[9:10]
	s_lshl_b32 s37, s23, 4
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 1290 15                       ; ragged.py:1290:15
	v_add3_u32 v29, v2, v1, s36
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v81, 0, v3
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v82, 0, v4
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v83, 0, v6
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v84, 0, v8
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v87, 0, v5
	v_mov_b32_e32 v1, s12
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v73, s23, v9
	v_lshl_add_u32 v74, s23, 1, v9
	v_lshl_add_u32 v75, s23, 2, v9
	v_lshl_add_u32 v76, s23, 3, v9
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v77, s37, v9
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v79, v78, v63
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v80, 0, v0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v8, s19
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v37, 0
	v_mov_b32_e32 v3, s14
	v_mov_b32_e32 v5, s16
	v_mov_b32_e32 v7, s18
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s39, s22, 2
	s_lshl_b32 s40, s22, 3
	s_mul_i32 s41, s22, 12
	s_lshl_b32 s42, s22, 4
	s_mul_i32 s43, s22, 20
	s_mul_i32 s44, s22, 24
	s_mul_i32 s45, s22, 28
	s_mov_b32 s24, s4
	s_mov_b32 s25, s5
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s26
	s_mov_b32 s7, s27
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
	.loc	1 1283 20                       ; ragged.py:1283:20
	v_cmp_gt_i32_e32 vcc_lo, s23, v9
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1291 27                       ; ragged.py:1291:27
	s_mul_i32 s12, s34, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	v_mad_u64_u32 v[88:89], null, s12, s22, v[29:30]
	.loc	1 1292 27                       ; ragged.py:1292:27
	s_mul_i32 s13, s12, s23
	.loc	1 1306 29                       ; ragged.py:1306:29
	s_mul_i32 s12, s34, s22
	.loc	1 1294 34                       ; ragged.py:1294:34
	v_add_nc_u32_e32 v89, s13, v9
	v_add_nc_u32_e32 v90, s13, v73
	v_add_nc_u32_e32 v91, s13, v74
	v_add_nc_u32_e32 v92, s13, v10
	v_add_nc_u32_e32 v93, s13, v75
	v_add_nc_u32_e32 v94, s13, v11
	v_add_nc_u32_e32 v95, s13, v12
	v_add_nc_u32_e32 v96, s13, v13
	v_add_nc_u32_e32 v97, s13, v76
	v_add_nc_u32_e32 v98, s13, v14
	v_add_nc_u32_e32 v99, s13, v15
	v_add_nc_u32_e32 v100, s13, v16
	v_add_nc_u32_e32 v101, s13, v17
	v_add_nc_u32_e32 v102, s13, v18
	v_add_nc_u32_e32 v103, s13, v19
	v_add_nc_u32_e32 v104, s13, v20
	v_add_nc_u32_e32 v105, s13, v77
	v_add_nc_u32_e32 v106, s13, v21
	v_add_nc_u32_e32 v107, s13, v22
	v_add_nc_u32_e32 v108, s13, v23
	v_add_nc_u32_e32 v109, s13, v24
	v_add_nc_u32_e32 v110, s13, v25
	v_add_nc_u32_e32 v111, s13, v26
	v_add_nc_u32_e32 v112, s13, v27
	v_add_nc_u32_e32 v113, s13, v28
	v_add_nc_u32_e32 v114, s13, v30
	v_add_nc_u32_e32 v115, s13, v31
	v_add_nc_u32_e32 v116, s13, v32
	v_add_nc_u32_e32 v117, s13, v33
	v_add_nc_u32_e32 v118, s13, v34
	v_add_nc_u32_e32 v119, s13, v35
	v_add_nc_u32_e32 v120, s13, v36
	.loc	1 1294 26 is_stmt 0             ; ragged.py:1294:26
	v_dual_cndmask_b32 v89, 0x80000000, v89 :: v_dual_cndmask_b32 v90, 0x80000000, v90
	v_add_nc_u32_e32 v121, s39, v88
	v_add_nc_u32_e32 v122, s40, v88
	v_dual_cndmask_b32 v91, 0x80000000, v91 :: v_dual_cndmask_b32 v92, 0x80000000, v92
	v_add_nc_u32_e32 v123, s41, v88
	v_add_nc_u32_e32 v124, s42, v88
	v_add_nc_u32_e32 v125, s43, v88
	v_add_nc_u32_e32 v126, s44, v88
	v_add_nc_u32_e32 v127, s45, v88
	v_dual_cndmask_b32 v93, 0x80000000, v93 :: v_dual_cndmask_b32 v94, 0x80000000, v94
	.loc	1 1293 26 is_stmt 1             ; ragged.py:1293:26
	v_cndmask_b32_e64 v88, 0x80000000, v88, s0
	.loc	1 1294 26                       ; ragged.py:1294:26
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	v_dual_cndmask_b32 v99, 0x80000000, v99 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	v_dual_cndmask_b32 v101, 0x80000000, v101 :: v_dual_cndmask_b32 v102, 0x80000000, v102
	v_dual_cndmask_b32 v103, 0x80000000, v103 :: v_dual_cndmask_b32 v104, 0x80000000, v104
	v_dual_cndmask_b32 v105, 0x80000000, v105 :: v_dual_cndmask_b32 v106, 0x80000000, v106
	v_dual_cndmask_b32 v107, 0x80000000, v107 :: v_dual_cndmask_b32 v108, 0x80000000, v108
	v_dual_cndmask_b32 v109, 0x80000000, v109 :: v_dual_cndmask_b32 v110, 0x80000000, v110
	v_dual_cndmask_b32 v111, 0x80000000, v111 :: v_dual_cndmask_b32 v112, 0x80000000, v112
	v_dual_cndmask_b32 v113, 0x80000000, v113 :: v_dual_cndmask_b32 v114, 0x80000000, v114
	v_dual_cndmask_b32 v115, 0x80000000, v115 :: v_dual_cndmask_b32 v116, 0x80000000, v116
	v_dual_cndmask_b32 v117, 0x80000000, v117 :: v_dual_cndmask_b32 v118, 0x80000000, v118
	v_dual_cndmask_b32 v119, 0x80000000, v119 :: v_dual_cndmask_b32 v120, 0x80000000, v120
	s_clause 0x1f
	buffer_load_u8 v141, v89, s[4:7], 0 offen
	buffer_load_u8 v142, v90, s[4:7], 0 offen
	buffer_load_u8 v143, v91, s[4:7], 0 offen
	buffer_load_u8 v144, v92, s[4:7], 0 offen
	buffer_load_u8 v145, v93, s[4:7], 0 offen
	buffer_load_u8 v146, v94, s[4:7], 0 offen
	buffer_load_u8 v147, v95, s[4:7], 0 offen
	buffer_load_u8 v148, v96, s[4:7], 0 offen
	buffer_load_u8 v149, v97, s[4:7], 0 offen
	buffer_load_u8 v150, v98, s[4:7], 0 offen
	buffer_load_u8 v151, v99, s[4:7], 0 offen
	buffer_load_u8 v152, v100, s[4:7], 0 offen
	buffer_load_u8 v153, v101, s[4:7], 0 offen
	buffer_load_u8 v156, v102, s[4:7], 0 offen
	buffer_load_u8 v162, v103, s[4:7], 0 offen
	buffer_load_u8 v163, v104, s[4:7], 0 offen
	buffer_load_u8 v164, v105, s[4:7], 0 offen
	buffer_load_u8 v165, v106, s[4:7], 0 offen
	buffer_load_u8 v166, v107, s[4:7], 0 offen
	buffer_load_u8 v167, v108, s[4:7], 0 offen
	buffer_load_u8 v168, v109, s[4:7], 0 offen
	buffer_load_u8 v169, v110, s[4:7], 0 offen
	buffer_load_u8 v170, v111, s[4:7], 0 offen
	buffer_load_u8 v171, v112, s[4:7], 0 offen
	buffer_load_u8 v172, v113, s[4:7], 0 offen
	buffer_load_u8 v173, v114, s[4:7], 0 offen
	buffer_load_u8 v174, v115, s[4:7], 0 offen
	buffer_load_u8 v175, v116, s[4:7], 0 offen
	buffer_load_u8 v176, v117, s[4:7], 0 offen
	buffer_load_u8 v177, v118, s[4:7], 0 offen
	buffer_load_u8 v178, v119, s[4:7], 0 offen
	buffer_load_u8 v179, v120, s[4:7], 0 offen
	.loc	1 1293 26                       ; ragged.py:1293:26
	v_cndmask_b32_e64 v89, 0x80000000, v121, s0
	v_cndmask_b32_e64 v90, 0x80000000, v122, s0
	v_cndmask_b32_e64 v91, 0x80000000, v123, s0
	v_cndmask_b32_e64 v92, 0x80000000, v124, s0
	v_cndmask_b32_e64 v93, 0x80000000, v125, s0
	v_cndmask_b32_e64 v94, 0x80000000, v126, s0
	v_cndmask_b32_e64 v95, 0x80000000, v127, s0
	s_clause 0x7
	buffer_load_u8 v88, v88, s[24:27], 0 offen
	buffer_load_u8 v89, v89, s[24:27], 0 offen
	buffer_load_u8 v90, v90, s[24:27], 0 offen
	buffer_load_u8 v91, v91, s[24:27], 0 offen
	buffer_load_u8 v92, v92, s[24:27], 0 offen
	buffer_load_u8 v93, v93, s[24:27], 0 offen
	buffer_load_u8 v94, v94, s[24:27], 0 offen
	buffer_load_u8 v95, v95, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1311 29                       ; ragged.py:1311:29
	s_mul_i32 s13, s34, s23
	.loc	1 1316 13                       ; ragged.py:1316:13
	s_add_i32 s34, s34, 1
	.loc	1 1293 26                       ; ragged.py:1293:26
	s_waitcnt vmcnt(7)
	ds_store_b8 v80, v88
	s_waitcnt vmcnt(6)
	ds_store_b8 v80, v89 offset:128
	s_waitcnt vmcnt(5)
	ds_store_b8 v80, v90 offset:256
	s_waitcnt vmcnt(4)
	ds_store_b8 v80, v91 offset:384
	s_waitcnt vmcnt(3)
	ds_store_b8 v80, v92 offset:512
	s_waitcnt vmcnt(2)
	ds_store_b8 v80, v93 offset:640
	s_waitcnt vmcnt(1)
	ds_store_b8 v80, v94 offset:768
	s_waitcnt vmcnt(0)
	ds_store_b8 v81, v95
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1295 24                       ; ragged.py:1295:24
	ds_load_u8 v88, v78 offset:160
	ds_load_u8 v89, v78 offset:128
	ds_load_u8 v131, v78 offset:224
	ds_load_u8 v132, v78 offset:192
	ds_load_u8 v90, v78 offset:240
	ds_load_u8 v92, v78 offset:208
	ds_load_u8 v91, v78 offset:176
	ds_load_u8 v93, v78 offset:144
	ds_load_u8 v138, v78 offset:96
	ds_load_u8 v140, v78 offset:64
	ds_load_u8 v133, v78 offset:32
	ds_load_u8 v135, v78
	ds_load_u8 v94, v78 offset:112
	ds_load_u8 v95, v78 offset:80
	ds_load_u8 v96, v78 offset:48
	ds_load_u8 v97, v78 offset:16
	ds_load_u8 v134, v78 offset:352
	ds_load_u8 v136, v78 offset:320
	ds_load_u8 v137, v78 offset:288
	ds_load_u8 v139, v78 offset:256
	ds_load_u8 v98, v78 offset:368
	ds_load_u8 v99, v78 offset:336
	ds_load_u8 v100, v78 offset:304
	ds_load_u8 v101, v78 offset:272
	ds_load_u8 v180, v78 offset:480
	ds_load_u8 v181, v78 offset:448
	ds_load_u8 v182, v78 offset:416
	ds_load_u8 v183, v78 offset:384
	ds_load_u8 v106, v78 offset:496
	ds_load_u8 v107, v78 offset:464
	ds_load_u8 v109, v78 offset:432
	ds_load_u8 v159, v78 offset:400
	ds_load_u8 v102, v78 offset:608
	ds_load_u8 v103, v78 offset:576
	ds_load_u8 v104, v78 offset:544
	ds_load_u8 v105, v78 offset:512
	ds_load_u8 v114, v78 offset:624
	ds_load_u8 v115, v78 offset:592
	ds_load_u8 v113, v78 offset:560
	ds_load_u8 v116, v78 offset:528
	ds_load_u8 v108, v78 offset:736
	ds_load_u8 v110, v78 offset:704
	ds_load_u8 v160, v78 offset:672
	ds_load_u8 v161, v78 offset:640
	ds_load_u8 v112, v78 offset:752
	ds_load_u8 v123, v78 offset:720
	ds_load_u8 v111, v78 offset:688
	ds_load_u8 v126, v78 offset:656
	ds_load_u8 v117, v78 offset:992
	ds_load_u8 v118, v78 offset:960
	ds_load_u8 v120, v78 offset:928
	ds_load_u8 v122, v78 offset:896
	ds_load_u8 v130, v82
	ds_load_u8 v154, v78 offset:976
	ds_load_u8 v129, v78 offset:944
	ds_load_u8 v155, v78 offset:912
	ds_load_u8 v119, v78 offset:864
	ds_load_u8 v121, v78 offset:832
	ds_load_u8 v124, v78 offset:800
	ds_load_u8 v125, v78 offset:768
	ds_load_u8 v128, v78 offset:880
	ds_load_u8 v157, v78 offset:848
	ds_load_u8 v127, v78 offset:816
	ds_load_u8 v158, v78 offset:784
	.loc	1 1294 26                       ; ragged.py:1294:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v80, v141
	ds_store_b8 v80, v142 offset:128
	ds_store_b8 v80, v143 offset:256
	ds_store_b8 v80, v144 offset:384
	ds_store_b8 v80, v145 offset:512
	ds_store_b8 v80, v146 offset:640
	ds_store_b8 v80, v147 offset:768
	ds_store_b8 v80, v149 offset:1024
	ds_store_b8 v80, v150 offset:1152
	ds_store_b8 v80, v151 offset:1280
	ds_store_b8 v80, v152 offset:1408
	ds_store_b8 v80, v153 offset:1536
	ds_store_b8 v80, v156 offset:1664
	ds_store_b8 v80, v162 offset:1792
	ds_store_b8 v80, v164 offset:2048
	ds_store_b8 v80, v165 offset:2176
	ds_store_b8 v80, v166 offset:2304
	ds_store_b8 v80, v167 offset:2432
	ds_store_b8 v80, v168 offset:2560
	ds_store_b8 v80, v169 offset:2688
	ds_store_b8 v80, v170 offset:2816
	ds_store_b8 v80, v172 offset:3072
	ds_store_b8 v80, v173 offset:3200
	ds_store_b8 v80, v174 offset:3328
	ds_store_b8 v80, v175 offset:3456
	ds_store_b8 v80, v176 offset:3584
	ds_store_b8 v80, v177 offset:3712
	ds_store_b8 v81, v148
	ds_store_b8 v83, v163
	ds_store_b8 v84, v171
	ds_store_b8 v80, v178 offset:3840
	ds_store_b8 v85, v179
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1295 24                       ; ragged.py:1295:24
	ds_load_u8 v141, v79 offset:640
	ds_load_u8 v142, v79 offset:512
	ds_load_u8 v143, v79 offset:896
	ds_load_u8 v144, v79 offset:768
	ds_load_u8 v145, v79 offset:128
	ds_load_u8 v146, v79
	ds_load_u8 v147, v79 offset:384
	ds_load_u8 v148, v79 offset:256
	ds_load_u8 v162, v79 offset:1664
	ds_load_u8 v163, v79 offset:960
	ds_load_u8 v164, v79 offset:832
	v_perm_b32 v151, v89, v88, 0xc0c0004
	ds_load_u8 v88, v79 offset:704
	ds_load_u8 v165, v79 offset:64
	v_perm_b32 v152, v132, v131, 0xc0c0004
	v_perm_b32 v153, v140, v138, 0xc0c0004
	ds_load_u8 v140, v79 offset:448
	ds_load_u8 v131, v79 offset:1536
	v_perm_b32 v156, v135, v133, 0xc0c0004
	ds_load_u8 v133, v79 offset:320
	v_perm_b32 v150, v136, v134, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v142, v142, v141, 0xc0c0004
	ds_load_u8 v141, v79 offset:192
	ds_load_u8 v134, v79 offset:1600
	ds_load_u8 v89, v79 offset:576
	v_perm_b32 v92, v92, v90, 0xc0c0004
	ds_load_u8 v90, v79 offset:2944
	v_perm_b32 v111, v126, v111, 0xc0c0004
	ds_load_u8 v126, v79 offset:3072
	v_perm_b32 v112, v123, v112, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v138, v164, v163, 0xc0c0004
	ds_load_u8 v123, v79 offset:3456
	v_perm_b32 v113, v116, v113, 0xc0c0004
	v_perm_b32 v116, v118, v117, 0xc0c0004
	v_perm_b32 v117, v125, v124, 0xc0c0004
	ds_load_u8 v125, v79 offset:3264
	ds_load_u8 v164, v79 offset:2816
	ds_load_u8 v132, v79 offset:1920
	ds_load_u8 v166, v79 offset:1984
	ds_load_u8 v168, v79 offset:1728
	ds_load_u8 v135, v79 offset:1792
	v_perm_b32 v149, v139, v137, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v139, v165, v141, 0xc0c0004
	v_perm_b32 v91, v93, v91, 0xc0c0004
	v_perm_b32 v93, v95, v94, 0xc0c0004
	v_perm_b32 v94, v97, v96, 0xc0c0004
	ds_load_u8 v165, v79 offset:2176
	v_perm_b32 v95, v159, v109, 0xc0c0004
	ds_load_u8 v109, v79 offset:2048
	v_perm_b32 v96, v107, v106, 0xc0c0004
	v_perm_b32 v97, v101, v100, 0xc0c0004
	ds_load_u8 v107, v79 offset:2752
	v_perm_b32 v101, v105, v104, 0xc0c0004
	v_perm_b32 v131, v131, v162, 0xc0c0004
	ds_load_u8 v163, v79 offset:2560
	ds_load_u8 v106, v79 offset:2432
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v104, v164, v90, 0xc0c0004
	ds_load_u8 v90, v79 offset:2112
	ds_load_u8 v167, v79 offset:1856
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v132, v135, v132, 0xc0c0004
	ds_load_u8 v135, v79 offset:1152
	ds_load_u8 v136, v79 offset:1024
	ds_load_u8 v162, v79 offset:1472
	ds_load_u8 v169, v79 offset:1344
	ds_load_u8 v170, v79 offset:1216
	ds_load_u8 v171, v79 offset:1088
	v_perm_b32 v99, v161, v160, 0xc0c0004
	v_perm_b32 v100, v110, v108, 0xc0c0004
	ds_load_u8 v108, v79 offset:2624
	ds_load_u8 v110, v79 offset:2496
	ds_load_u8 v160, v79 offset:2368
	ds_load_u8 v161, v79 offset:2240
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v105, v109, v165, 0xc0c0004
	ds_load_u8 v109, v79 offset:2304
	v_perm_b32 v140, v133, v140, 0xc0c0004
	v_perm_b32 v133, v134, v168, 0xc0c0004
	ds_load_u8 v159, v79 offset:3008
	ds_load_u8 v168, v79 offset:3392
	v_perm_b32 v102, v103, v102, 0xc0c0004
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v164, v79 offset:3904
	ds_load_u8 v165, v79 offset:3776
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v134, v167, v166, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v141, v169, v162, 0xc0c0004
	ds_load_u8 v162, v79 offset:2688
	v_perm_b32 v137, v136, v135, 0xc0c0004
	ds_load_u8 v135, v79 offset:1408
	ds_load_u8 v136, v79 offset:1280
	v_perm_b32 v115, v122, v120, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v167, v79 offset:3520
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v110, v160, v110, 0xc0c0004
	ds_load_u8 v160, v79 offset:3200
	ds_load_u8 v166, v79 offset:2880
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v106, v109, v106, 0xc0c0004
	v_perm_b32 v109, v90, v161, 0xc0c0004
	ds_load_u8 v90, v79 offset:3840
	ds_load_u8 v161, v79 offset:4032
	v_perm_b32 v144, v144, v143, 0xc0c0004
	v_perm_b32 v146, v146, v145, 0xc0c0004
	v_perm_b32 v148, v148, v147, 0xc0c0004
	v_perm_b32 v145, v183, v182, 0xc0c0004
	v_perm_b32 v147, v181, v180, 0xc0c0004
	v_perm_b32 v118, v121, v119, 0xc0c0004
	v_perm_b32 v130, v154, v130, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v103, v163, v162, 0xc0c0004
	ds_load_u8 v162, v79 offset:3712
	ds_load_u8 v163, v79 offset:3584
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v143, v136, v135, 0xc0c0004
	v_perm_b32 v135, v89, v88, 0xc0c0004
	.loc	1 1310 32                       ; ragged.py:1310:32
	v_add_lshl_u32 v88, v9, s13, 1
	.loc	1 1305 32                       ; ragged.py:1305:32
	v_add_lshl_u32 v89, v71, s12, 1
	.loc	1 1295 24                       ; ragged.py:1295:24
	v_perm_b32 v136, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v108, v166, v159, 0xc0c0004
	ds_load_u8 v159, v79 offset:3968
	ds_load_u8 v166, v79 offset:3648
	.loc	1 1310 32                       ; ragged.py:1310:32
	v_cndmask_b32_e32 v88, 0x80000000, v88, vcc_lo
	.loc	1 1305 32                       ; ragged.py:1305:32
	v_cndmask_b32_e64 v89, 0x80000000, v89, s3
	.loc	1 1295 24                       ; ragged.py:1295:24
	v_perm_b32 v121, v126, v160, 0xc0c0004
	v_lshl_or_b32 v152, v152, 16, v151
	v_lshl_or_b32 v151, v153, 16, v156
	v_lshl_or_b32 v154, v144, 16, v142
	v_lshl_or_b32 v153, v148, 16, v146
	v_lshl_or_b32 v132, v132, 16, v131
	v_lshl_or_b32 v131, v143, 16, v137
	v_lshl_or_b32 v138, v138, 16, v135
	v_lshl_or_b32 v137, v140, 16, v139
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v119, v163, v162, 0xc0c0004
	v_lshl_or_b32 v134, v134, 16, v133
	v_lshl_or_b32 v133, v141, 16, v136
	v_lshl_or_b32 v136, v92, 16, v91
	v_lshl_or_b32 v135, v93, 16, v94
	v_perm_b32 v127, v158, v127, 0xc0c0004
	v_perm_b32 v128, v157, v128, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v120, v90, v159, 0xc0c0004
	ds_load_u8 v159, v79 offset:3136
	ds_load_u8 v90, v79 offset:3328
	v_lshl_or_b32 v145, v147, 16, v145
	v_lshl_or_b32 v144, v150, 16, v149
	v_lshl_or_b32 v140, v96, 16, v95
	v_lshl_or_b32 v139, v98, 16, v97
	v_lshl_or_b32 v158, v116, 16, v115
	v_lshl_or_b32 v157, v118, 16, v117
	v_lshl_or_b32 v160, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[91:98], v[153:154], v[151:152], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v124, v164, v161, 0xc0c0004
	v_perm_b32 v126, v168, v167, 0xc0c0004
	v_perm_b32 v129, v155, v129, 0xc0c0004
	v_lshl_or_b32 v142, v100, 16, v99
	v_lshl_or_b32 v141, v102, 16, v101
	v_lshl_or_b32 v147, v104, 16, v103
	v_lshl_or_b32 v146, v106, 16, v105
	v_lshl_or_b32 v149, v108, 16, v107
	v_lshl_or_b32 v148, v110, 16, v109
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v125, v159, v125, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v90, v123, 0xc0c0004
	.loc	1 1305 32                       ; ragged.py:1305:32
	v_add_lshl_u32 v90, v72, s12, 1
	.loc	1 1295 24                       ; ragged.py:1295:24
	v_lshl_or_b32 v156, v112, 16, v111
	v_lshl_or_b32 v155, v114, 16, v113
	v_wmma_i32_16x16x16_iu4 v[91:98], v[131:132], v[144:145], v[91:98] neg_lo:[1,1,0]
	v_lshl_or_b32 v159, v122, 16, v121
	.loc	1 1305 32                       ; ragged.py:1305:32
	v_cndmask_b32_e64 v123, 0x80000000, v90, s2
	.loc	1 1310 32                       ; ragged.py:1310:32
	buffer_load_u16 v90, v88, s[8:11], 0 offen
	.loc	1 1305 32                       ; ragged.py:1305:32
	s_clause 0x1
	buffer_load_u16 v88, v89, s[28:31], 0 offen
	buffer_load_u16 v89, v123, s[28:31], 0 offen
	.loc	1 1295 24                       ; ragged.py:1295:24
	v_wmma_i32_16x16x16_iu4 v[115:122], v[137:138], v[135:136], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v123, v166, v165, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[99:106], v[137:138], v[151:152], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[133:134], v[139:140], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[107:114], v[153:154], v[135:136], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v124, v124, 16, v123
	v_lshl_or_b32 v123, v126, 16, v125
	v_lshl_or_b32 v125, v128, 16, v127
	v_lshl_or_b32 v126, v130, 16, v129
	v_wmma_i32_16x16x16_iu4 v[91:98], v[146:147], v[141:142], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[115:122], v[148:149], v[155:156], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[99:106], v[133:134], v[144:145], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[107:114], v[131:132], v[139:140], v[107:114] neg_lo:[1,1,0]
	.loc	1 1315 20                       ; ragged.py:1315:20
	s_waitcnt lgkmcnt(0)
	.loc	1 1295 24                       ; ragged.py:1295:24
	v_wmma_i32_16x16x16_iu4 v[91:98], v[159:160], v[157:158], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[115:122], v[123:124], v[125:126], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[99:106], v[148:149], v[141:142], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[107:114], v[146:147], v[155:156], v[107:114] neg_lo:[1,1,0]
	.loc	1 1315 20                       ; ragged.py:1315:20
	s_barrier
	.loc	1 1295 24                       ; ragged.py:1295:24
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v121, v121
	v_wmma_i32_16x16x16_iu4 v[99:106], v[123:124], v[157:158], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[107:114], v[159:160], v[125:126], v[107:114] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v123, v92
	v_cvt_f32_i32_e32 v124, v93
	v_cvt_f32_i32_e32 v125, v94
	v_cvt_f32_i32_e32 v126, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v122, v122
	.loc	1 1290 15                       ; ragged.py:1290:15
	s_cmp_lt_i32 s34, s35
	.loc	1 1305 32                       ; ragged.py:1305:32
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v127, 16, v88
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v128, 16, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1315 20                       ; ragged.py:1315:20
	v_dual_mul_f32 v129, v91, v127 :: v_dual_lshlrev_b32 v90, 16, v90
	v_mul_f32_e32 v121, v121, v128
	ds_store_b32 v86, v90
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[88:91], v87
	ds_load_b128 v[92:95], v87 offset:16
	v_dual_mul_f32 v130, v96, v127 :: v_dual_mul_f32 v107, v107, v128
	.loc	1 1315 13 is_stmt 0             ; ragged.py:1315:13
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v53, v107, v88 :: v_dual_fmac_f32 v66, v130, v93
	.loc	1 1315 20                       ; ragged.py:1315:20
	v_mul_f32_e32 v131, v97, v127
	v_mul_f32_e32 v132, v98, v127
	v_mul_f32_e32 v133, v99, v127
	v_mul_f32_e32 v134, v100, v127
	v_mul_f32_e32 v135, v101, v127
	v_mul_f32_e32 v136, v102, v127
	v_mul_f32_e32 v137, v103, v127
	ds_load_b128 v[96:99], v87 offset:256
	ds_load_b128 v[100:103], v87 offset:272
	v_mul_f32_e32 v123, v123, v127
	v_mul_f32_e32 v124, v124, v127
	v_dual_mul_f32 v125, v125, v127 :: v_dual_mul_f32 v108, v108, v128
	v_mul_f32_e32 v109, v109, v128
	v_mul_f32_e32 v110, v110, v128
	v_dual_mul_f32 v126, v126, v127 :: v_dual_mul_f32 v111, v111, v128
	v_mul_f32_e32 v112, v112, v128
	v_mul_f32_e32 v113, v113, v128
	v_mul_f32_e32 v114, v114, v128
	v_mul_f32_e32 v115, v115, v128
	v_mul_f32_e32 v116, v116, v128
	v_mul_f32_e32 v117, v117, v128
	v_mul_f32_e32 v118, v118, v128
	v_mul_f32_e32 v104, v104, v127
	v_mul_f32_e32 v105, v105, v127
	v_dual_mul_f32 v106, v106, v127 :: v_dual_mul_f32 v119, v119, v128
	v_mul_f32_e32 v120, v120, v128
	v_mul_f32_e32 v122, v122, v128
	.loc	1 1315 13                       ; ragged.py:1315:13
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v64, v129, v88 :: v_dual_fmac_f32 v41, v118, v99
	v_dual_fmac_f32 v70, v123, v89 :: v_dual_fmac_f32 v69, v124, v90
	v_fmac_f32_e32 v68, v125, v91
	v_dual_fmac_f32 v52, v108, v89 :: v_dual_fmac_f32 v51, v109, v90
	v_fmac_f32_e32 v50, v110, v91
	v_dual_fmac_f32 v67, v126, v92 :: v_dual_fmac_f32 v62, v132, v95
	v_fmac_f32_e32 v65, v131, v94
	v_dual_fmac_f32 v49, v111, v92 :: v_dual_fmac_f32 v48, v112, v93
	v_dual_fmac_f32 v47, v113, v94 :: v_dual_fmac_f32 v46, v114, v95
	v_dual_fmac_f32 v61, v133, v96 :: v_dual_fmac_f32 v60, v134, v97
	v_fmac_f32_e32 v45, v115, v96
	v_dual_fmac_f32 v59, v135, v98 :: v_dual_fmac_f32 v58, v136, v99
	v_dual_fmac_f32 v43, v117, v98 :: v_dual_fmac_f32 v44, v116, v97
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v57, v137, v100 :: v_dual_fmac_f32 v56, v104, v101
	v_dual_fmac_f32 v55, v105, v102 :: v_dual_fmac_f32 v54, v106, v103
	v_dual_fmac_f32 v39, v120, v101 :: v_dual_fmac_f32 v40, v119, v100
	v_dual_fmac_f32 v37, v122, v103 :: v_dual_fmac_f32 v42, v121, v102
	.loc	1 1290 15 is_stmt 1             ; ragged.py:1290:15
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
	.loc	1 1281 36                       ; ragged.py:1281:36
	v_lshrrev_b32_e32 v0, 4, v0
	.loc	1 1318 23                       ; ragged.py:1318:23
	s_mul_i32 s33, s33, s22
	.loc	1 1319 9                        ; ragged.py:1319:9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	.loc	1 1319 18 is_stmt 0             ; ragged.py:1319:18
	s_add_i32 s14, s36, s33
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 1281 36 is_stmt 1             ; ragged.py:1281:36
	v_and_or_b32 v0, v0, 1, v63
	.loc	1 1319 18                       ; ragged.py:1319:18
	s_mul_i32 s15, s14, s23
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1281 36                       ; ragged.py:1281:36
	v_or_b32_e32 v3, 0x4a, v0
	v_or_b32_e32 v1, 0x4e, v0
	v_or_b32_e32 v2, 0x4c, v0
	v_or_b32_e32 v6, 0x44, v0
	v_or_b32_e32 v7, 0x42, v0
	.loc	1 1281 18 is_stmt 0             ; ragged.py:1281:18
	v_or_b32_e32 v11, s38, v3
	.loc	1 1281 36                       ; ragged.py:1281:36
	v_or_b32_e32 v4, 0x48, v0
	v_or_b32_e32 v5, 0x46, v0
	v_or_b32_e32 v8, 64, v0
	.loc	1 1281 18                       ; ragged.py:1281:18
	v_or_b32_e32 v9, s38, v1
	v_or_b32_e32 v10, s38, v2
	v_or_b32_e32 v14, s38, v6
	v_or_b32_e32 v15, s38, v7
	.loc	1 1283 20 is_stmt 1             ; ragged.py:1283:20
	v_cmp_gt_i32_e64 s1, s23, v11
	.loc	1 1281 36                       ; ragged.py:1281:36
	v_or_b32_e32 v11, 12, v0
	.loc	1 1281 18 is_stmt 0             ; ragged.py:1281:18
	v_or_b32_e32 v12, s38, v4
	v_or_b32_e32 v13, s38, v5
	.loc	1 1283 20 is_stmt 1             ; ragged.py:1283:20
	v_cmp_gt_i32_e32 vcc_lo, s23, v9
	v_cmp_gt_i32_e64 s0, s23, v10
	.loc	1 1281 18                       ; ragged.py:1281:18
	v_or_b32_e32 v9, s38, v8
	.loc	1 1281 36 is_stmt 0             ; ragged.py:1281:36
	v_or_b32_e32 v10, 14, v0
	.loc	1 1283 20 is_stmt 1             ; ragged.py:1283:20
	v_cmp_gt_i32_e64 s6, s23, v14
	v_cmp_gt_i32_e64 s7, s23, v15
	.loc	1 1281 18                       ; ragged.py:1281:18
	v_or_b32_e32 v14, s38, v11
	.loc	1 1281 36 is_stmt 0             ; ragged.py:1281:36
	v_or_b32_e32 v15, 6, v0
	.loc	1 1283 20 is_stmt 1             ; ragged.py:1283:20
	v_cmp_gt_i32_e64 s4, s23, v12
	v_cmp_gt_i32_e64 s5, s23, v13
	v_cmp_gt_i32_e64 s8, s23, v9
	.loc	1 1281 36                       ; ragged.py:1281:36
	v_or_b32_e32 v9, 10, v0
	.loc	1 1281 18 is_stmt 0             ; ragged.py:1281:18
	v_or_b32_e32 v12, s38, v10
	.loc	1 1281 36                       ; ragged.py:1281:36
	v_or_b32_e32 v13, 8, v0
	.loc	1 1283 20 is_stmt 1             ; ragged.py:1283:20
	v_cmp_gt_i32_e64 s10, s23, v14
	.loc	1 1281 18                       ; ragged.py:1281:18
	v_or_b32_e32 v14, s38, v15
	v_or_b32_e32 v16, s38, v9
	.loc	1 1283 20                       ; ragged.py:1283:20
	v_cmp_gt_i32_e64 s9, s23, v12
	.loc	1 1281 18                       ; ragged.py:1281:18
	v_or_b32_e32 v12, s38, v13
	v_or_b32_e32 v19, s38, v0
	.loc	1 1283 20                       ; ragged.py:1283:20
	v_cmp_gt_i32_e64 s13, s23, v14
	.loc	1 1319 18                       ; ragged.py:1319:18
	v_mul_lo_u32 v14, s23, v38
	.loc	1 1283 20                       ; ragged.py:1283:20
	v_cmp_gt_i32_e64 s11, s23, v16
	.loc	1 1281 36                       ; ragged.py:1281:36
	v_or_b32_e32 v16, 4, v0
	.loc	1 1283 20                       ; ragged.py:1283:20
	v_cmp_gt_i32_e64 s12, s23, v12
	.loc	1 1281 36                       ; ragged.py:1281:36
	v_or_b32_e32 v12, 2, v0
	.loc	1 1283 20                       ; ragged.py:1283:20
	v_cmp_gt_i32_e64 s16, s23, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1281 18                       ; ragged.py:1281:18
	v_or_b32_e32 v17, s38, v16
	.loc	1 1319 18                       ; ragged.py:1319:18
	v_add3_u32 v14, s15, s38, v14
	.loc	1 1281 18                       ; ragged.py:1281:18
	v_or_b32_e32 v18, s38, v12
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s17, s3, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1283 20                       ; ragged.py:1283:20
	v_cmp_gt_i32_e64 s14, s23, v17
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_add_lshl_u32 v17, v14, v0, 2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1283 20                       ; ragged.py:1283:20
	v_cmp_gt_i32_e64 s15, s23, v18
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_add_lshl_u32 v18, v14, v12, 2
	v_add_lshl_u32 v19, v14, v16, 2
	s_mov_b32 s23, 0x31027000
	v_cndmask_b32_e64 v17, 0x80000000, v17, s17
	.loc	1 1319 47 is_stmt 0             ; ragged.py:1319:47
	s_and_b32 s17, s3, s15
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_add_lshl_u32 v21, v14, v11, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s17, s3, s14
	.loc	1 1319 9                        ; ragged.py:1319:9
	buffer_store_b32 v64, v17, s[20:23], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v19, s17
	v_add_lshl_u32 v17, v14, v15, 2
	s_clause 0x1
	buffer_store_b32 v70, v18, s[20:23], 0 offen
	buffer_store_b32 v69, v19, s[20:23], 0 offen
	v_add_lshl_u32 v18, v14, v13, 2
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s17, s3, s13
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_add_lshl_u32 v19, v14, v9, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s17
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s17, s3, s12
	.loc	1 1319 18                       ; ragged.py:1319:18
	v_add_nc_u32_e32 v20, s37, v14
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s17, s3, s11
	.loc	1 1319 9                        ; ragged.py:1319:9
	s_clause 0x1
	buffer_store_b32 v68, v17, s[20:23], 0 offen
	buffer_store_b32 v67, v18, s[20:23], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v19, s17
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s17, s3, s10
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_add_lshl_u32 v17, v14, v10, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s17
	v_add_lshl_u32 v18, v14, v8, 2
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s17, s3, s9
	.loc	1 1319 9                        ; ragged.py:1319:9
	s_clause 0x1
	buffer_store_b32 v66, v19, s[20:23], 0 offen
	buffer_store_b32 v65, v21, s[20:23], 0 offen
	v_add_lshl_u32 v19, v14, v7, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s17
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s17, s3, s8
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_add_lshl_u32 v21, v14, v6, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s17, s3, s7
	.loc	1 1319 9                        ; ragged.py:1319:9
	s_clause 0x1
	buffer_store_b32 v62, v17, s[20:23], 0 offen
	buffer_store_b32 v61, v18, s[20:23], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v19, s17
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s17, s3, s6
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_add_lshl_u32 v17, v14, v5, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s17
	v_add_lshl_u32 v18, v14, v4, 2
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s17, s3, s5
	.loc	1 1319 9                        ; ragged.py:1319:9
	s_clause 0x1
	buffer_store_b32 v60, v19, s[20:23], 0 offen
	buffer_store_b32 v59, v21, s[20:23], 0 offen
	v_add_lshl_u32 v19, v14, v3, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s17
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s17, s3, s4
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_add_lshl_u32 v21, v14, v2, 2
	v_add_lshl_u32 v14, v14, v1, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s17, s3, s1
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_add_lshl_u32 v0, v20, v0, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s17
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s17, s3, s0
	s_and_b32 s3, s3, vcc_lo
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_add_lshl_u32 v12, v20, v12, 2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s3
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s3, s2, s16
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_add_lshl_u32 v16, v20, v16, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s3, s2, s15
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_cndmask_b32_e64 v21, 0x80000000, v21, s17
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s3, s2, s14
	.loc	1 1319 9                        ; ragged.py:1319:9
	s_clause 0x1
	buffer_store_b32 v58, v17, s[20:23], 0 offen
	buffer_store_b32 v57, v18, s[20:23], 0 offen
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	s_clause 0x3
	buffer_store_b32 v56, v19, s[20:23], 0 offen
	buffer_store_b32 v55, v21, s[20:23], 0 offen
	buffer_store_b32 v54, v14, s[20:23], 0 offen
	buffer_store_b32 v53, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v15, 2
	s_clause 0x1
	buffer_store_b32 v52, v12, s[20:23], 0 offen
	buffer_store_b32 v51, v16, s[20:23], 0 offen
	v_add_lshl_u32 v12, v20, v13, 2
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s3, s2, s13
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_add_lshl_u32 v9, v20, v9, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s3, s2, s12
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_add_lshl_u32 v11, v20, v11, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s3, s2, s11
	.loc	1 1319 9                        ; ragged.py:1319:9
	s_clause 0x1
	buffer_store_b32 v50, v0, s[20:23], 0 offen
	buffer_store_b32 v49, v12, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v10, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s3, s2, s10
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_add_lshl_u32 v8, v20, v8, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s3, s2, s9
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_add_lshl_u32 v7, v20, v7, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s3, s2, s8
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_add_lshl_u32 v6, v20, v6, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s3, s2, s7
	.loc	1 1319 9                        ; ragged.py:1319:9
	s_clause 0x3
	buffer_store_b32 v48, v9, s[20:23], 0 offen
	buffer_store_b32 v47, v11, s[20:23], 0 offen
	buffer_store_b32 v46, v0, s[20:23], 0 offen
	buffer_store_b32 v45, v8, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v5, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s3, s2, s6
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_add_lshl_u32 v4, v20, v4, 2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s3, s2, s5
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_add_lshl_u32 v3, v20, v3, 2
	v_add_lshl_u32 v2, v20, v2, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s3, s2, s4
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_add_lshl_u32 v1, v20, v1, 2
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s1, s2, s1
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 s0, s2, s0
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1319 47                       ; ragged.py:1319:47
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1319 9                        ; ragged.py:1319:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x6
	buffer_store_b32 v44, v7, s[20:23], 0 offen
	buffer_store_b32 v43, v6, s[20:23], 0 offen
	buffer_store_b32 v41, v0, s[20:23], 0 offen
	buffer_store_b32 v40, v4, s[20:23], 0 offen
	buffer_store_b32 v39, v3, s[20:23], 0 offen
	buffer_store_b32 v42, v2, s[20:23], 0 offen
	buffer_store_b32 v37, v1, s[20:23], 0 offen
	.loc	1 1256 5 is_stmt 1              ; ragged.py:1256:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm32_bn128_bk64_w4_s2_sk1
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 184
		.amdhsa_next_free_sgpr 46
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
		.amdhsa_inst_pref_size 54
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm32_bn128_bk64_w4_s2_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm32_bn128_bk64_w4_s2_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm32_bn128_bk64_w4_s2_sk1.num_vgpr, 184
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm32_bn128_bk64_w4_s2_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm32_bn128_bk64_w4_s2_sk1.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm32_bn128_bk64_w4_s2_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm32_bn128_bk64_w4_s2_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm32_bn128_bk64_w4_s2_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm32_bn128_bk64_w4_s2_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm32_bn128_bk64_w4_s2_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm32_bn128_bk64_w4_s2_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm32_bn128_bk64_w4_s2_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6808
; TotalNumSgprs: 48
; NumVgprs: 184
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 184
; Occupancy: 8
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.short	1272                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1273                            ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm32_bn128_bk64_w4_s2_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm32_bn128_bk64_w4_s2_sk1
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm32_bn128_bk64_w4_s2_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm32_bn128_bk64_w4_s2_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     184
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
