	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
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
	s_ashr_i32 s4, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s6, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s6, s4
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
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
	s_mul_i32 s10, s7, s5
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s10, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s7, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s9, s7
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s16, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s16, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s8, s2
	s_xor_b32 s10, s2, s6
	s_ashr_i32 s10, s10, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s9
	s_mul_hi_u32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s8, s9
	s_mul_i32 s11, s9, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s9, 1
	s_sub_i32 s12, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s9, s11, s9
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s9, 1
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s7, s11, s9
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s17, s16, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s7, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s8, s7, s10
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s8, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 17 is_stmt 0             ; ragged.py:1307:17
	s_sub_i32 s2, s2, s6
	.loc	1 1313 19 is_stmt 1             ; ragged.py:1313:19
	s_lshl_b64 s[6:7], s[16:17], 2
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s17, s2, 8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v65, s17, v0
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s2, s[4:5], 0x0
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s23, s3, 5
	s_mov_b32 s3, 0
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s2, s2, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s4, s2, 31
	s_add_i32 s4, s2, s4
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s19, v65
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s22, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cmp_lt_i32 s23, s22
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_lshl_b32 s24, s19, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s3, -1
                                        ; implicit-def: $sgpr24
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[20:21], s[0:1], 0x28
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v40, 15, v0
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v39, 0x70, v1
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v99, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_lshl_b32 s3, s8, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_and_b32_e32 v1, 63, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_lshrrev_b32_e32 v2, 6, v0
	v_mad_u64_u32 v[69:70], null, s19, 3, v[65:66]
	v_mad_u64_u32 v[70:71], null, s19, 5, v[65:66]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s3, v1
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v5, 12, v2
	v_or_b32_e32 v4, 28, v2
	.loc	1 1324 23                       ; ragged.py:1324:23
	v_mad_u64_u32 v[6:7], null, s18, v2, v[1:2]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s18, v3
	.loc	1 1324 23                       ; ragged.py:1324:23
	v_mad_u64_u32 v[2:3], null, s18, v5, v[1:2]
	v_mad_u64_u32 v[71:72], null, s19, 6, v[65:66]
	v_mad_u64_u32 v[72:73], null, s19, 7, v[65:66]
	v_mad_u64_u32 v[73:74], null, s19, 9, v[65:66]
	.loc	1 1311 20                       ; ragged.py:1311:20
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[6:7], off
	scratch_store_b64 off, v[2:3], off offset:8
	scratch_store_b32 off, v39, off offset:32
	.loc	1 1324 23                       ; ragged.py:1324:23
	v_mad_u64_u32 v[1:2], null, s18, v4, v[1:2]
	v_mad_u64_u32 v[74:75], null, s19, 10, v[65:66]
	v_mad_u64_u32 v[75:76], null, s19, 11, v[65:66]
	v_mad_u64_u32 v[76:77], null, s19, 12, v[65:66]
	v_mad_u64_u32 v[77:78], null, s19, 13, v[65:66]
	s_clause 0x1
	s_load_b32 s8, s[0:1], 0x38
	s_load_b128 s[12:15], s[0:1], 0x0
	v_mad_u64_u32 v[78:79], null, s19, 14, v[65:66]
	v_mad_u64_u32 v[79:80], null, s19, 15, v[65:66]
	v_mad_u64_u32 v[80:81], null, s19, 17, v[65:66]
	v_mad_u64_u32 v[81:82], null, s19, 18, v[65:66]
	.loc	1 1327 39                       ; ragged.py:1327:39
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[1:2], off offset:16
	scratch_store_b32 off, v0, off offset:36
	v_or_b32_e32 v2, 0x300, v0
	v_or_b32_e32 v3, 0x700, v0
	v_or_b32_e32 v4, 0x3f0, v0
	v_mad_u64_u32 v[82:83], null, s19, 19, v[65:66]
	v_mad_u64_u32 v[83:84], null, s19, 20, v[65:66]
	v_mad_u64_u32 v[84:85], null, s19, 21, v[65:66]
	v_mad_u64_u32 v[85:86], null, s19, 22, v[65:66]
	v_mad_u64_u32 v[86:87], null, s19, 23, v[65:66]
	v_or_b32_e32 v5, 0x7f0, v0
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v102, 0, v3
	v_add_nc_u32_e32 v101, 0, v2
	v_add_nc_u32_e32 v2, 0, v4
	v_mad_u64_u32 v[87:88], null, s19, 24, v[65:66]
	v_mad_u64_u32 v[88:89], null, s19, 25, v[65:66]
	v_mad_u64_u32 v[89:90], null, s19, 26, v[65:66]
	v_mad_u64_u32 v[90:91], null, s19, 27, v[65:66]
	v_mad_u64_u32 v[91:92], null, s19, 28, v[65:66]
	v_add_nc_u32_e32 v99, 0, v40
	v_or_b32_e32 v6, 0xb00, v0
	v_or_b32_e32 v7, 0xf00, v0
	v_or_b32_e32 v8, 0x1300, v0
	v_or_b32_e32 v9, 0x1700, v0
	v_or_b32_e32 v10, 0x1b00, v0
	v_or_b32_e32 v11, 0x1f00, v0
	scratch_store_b32 off, v2, off offset:24 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v5
	v_mad_u64_u32 v[92:93], null, s19, 29, v[65:66]
	v_mad_u64_u32 v[93:94], null, s19, 30, v[65:66]
	v_mad_u64_u32 v[94:95], null, s19, 31, v[65:66]
	v_add_nc_u32_e32 v105, 0, v6
	v_mov_b32_e32 v6, v1
	v_add_nc_u32_e32 v106, 0, v7
	v_add_nc_u32_e32 v107, 0, v8
	v_mov_b32_e32 v8, v1
	v_add_nc_u32_e32 v108, 0, v9
	v_add_nc_u32_e32 v109, 0, v10
	v_mov_b32_e32 v10, v1
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v110, 0, v11
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v7, v1
	scratch_store_b32 off, v2, off offset:28 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, v1
	v_dual_mov_b32 v9, v1 :: v_dual_add_nc_u32 v100, v99, v39
	v_mov_b32_e32 v11, v1
	v_dual_mov_b32 v12, v1 :: v_dual_add_nc_u32 v111, 0, v0
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
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s0, s18, 2
	s_lshl_b32 s1, s18, 3
	s_lshl_b32 s25, s18, 4
	s_mul_i32 s26, s18, 20
	s_mul_i32 s27, s18, 24
	s_mul_i32 s28, s16, s8
	s_lshl_b32 s24, s19, 4
	s_mov_b32 s8, s12
	s_mov_b32 s9, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 39 is_stmt 0                ; ragged.py:0:39
	scratch_load_b64 v[66:67], off, off     ; 8-byte Folded Reload
	.loc	1 1334 42 is_stmt 1             ; ragged.py:1334:42
	s_add_i32 s29, s23, s28
	v_add_nc_u32_e32 v96, s19, v65
	s_mul_i32 s30, s29, s18
	v_lshl_add_u32 v112, s19, 1, v65
	s_add_i32 s30, s30, s3
	.loc	1 1335 42                       ; ragged.py:1335:42
	s_mul_i32 s29, s29, s19
	v_lshl_add_u32 v114, s19, 2, v65
	v_add_nc_u32_e32 v95, s29, v65
	v_lshl_add_u32 v118, s19, 3, v65
	v_add_nc_u32_e32 v126, s24, v65
	v_add_nc_u32_e32 v96, s29, v96
	v_add_nc_u32_e32 v112, s29, v112
	v_add_nc_u32_e32 v113, s29, v69
	v_add_nc_u32_e32 v114, s29, v114
	.loc	1 1335 34 is_stmt 0             ; ragged.py:1335:34
	v_cndmask_b32_e64 v95, 0x80000000, v95, s2
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v115, s29, v70
	v_add_nc_u32_e32 v116, s29, v71
	v_add_nc_u32_e32 v117, s29, v72
	v_add_nc_u32_e32 v118, s29, v118
	v_add_nc_u32_e32 v119, s29, v73
	v_add_nc_u32_e32 v120, s29, v74
	v_add_nc_u32_e32 v121, s29, v75
	v_add_nc_u32_e32 v122, s29, v76
	v_add_nc_u32_e32 v123, s29, v77
	v_add_nc_u32_e32 v124, s29, v78
	v_add_nc_u32_e32 v125, s29, v79
	v_add_nc_u32_e32 v126, s29, v126
	v_add_nc_u32_e32 v127, s29, v80
	v_add_nc_u32_e32 v128, s29, v81
	v_add_nc_u32_e32 v129, s29, v82
	v_add_nc_u32_e32 v130, s29, v83
	v_add_nc_u32_e32 v131, s29, v84
	v_add_nc_u32_e32 v132, s29, v85
	v_add_nc_u32_e32 v133, s29, v86
	v_add_nc_u32_e32 v134, s29, v87
	v_add_nc_u32_e32 v135, s29, v88
	v_add_nc_u32_e32 v136, s29, v89
	v_add_nc_u32_e32 v137, s29, v90
	v_add_nc_u32_e32 v138, s29, v91
	v_add_nc_u32_e32 v139, s29, v92
	v_add_nc_u32_e32 v140, s29, v93
	v_add_nc_u32_e32 v141, s29, v94
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v96, 0x80000000, v96, s2
	v_cndmask_b32_e64 v112, 0x80000000, v112, s2
	v_cndmask_b32_e64 v113, 0x80000000, v113, s2
	v_cndmask_b32_e64 v114, 0x80000000, v114, s2
	v_cndmask_b32_e64 v115, 0x80000000, v115, s2
	v_cndmask_b32_e64 v116, 0x80000000, v116, s2
	v_cndmask_b32_e64 v117, 0x80000000, v117, s2
	v_cndmask_b32_e64 v118, 0x80000000, v118, s2
	v_cndmask_b32_e64 v119, 0x80000000, v119, s2
	v_cndmask_b32_e64 v120, 0x80000000, v120, s2
	v_cndmask_b32_e64 v121, 0x80000000, v121, s2
	v_cndmask_b32_e64 v122, 0x80000000, v122, s2
	v_cndmask_b32_e64 v123, 0x80000000, v123, s2
	v_cndmask_b32_e64 v124, 0x80000000, v124, s2
	v_cndmask_b32_e64 v125, 0x80000000, v125, s2
	v_cndmask_b32_e64 v126, 0x80000000, v126, s2
	v_cndmask_b32_e64 v127, 0x80000000, v127, s2
	v_cndmask_b32_e64 v128, 0x80000000, v128, s2
	v_cndmask_b32_e64 v129, 0x80000000, v129, s2
	v_cndmask_b32_e64 v130, 0x80000000, v130, s2
	v_cndmask_b32_e64 v131, 0x80000000, v131, s2
	v_cndmask_b32_e64 v132, 0x80000000, v132, s2
	v_cndmask_b32_e64 v133, 0x80000000, v133, s2
	v_cndmask_b32_e64 v134, 0x80000000, v134, s2
	v_cndmask_b32_e64 v135, 0x80000000, v135, s2
	v_cndmask_b32_e64 v136, 0x80000000, v136, s2
	v_cndmask_b32_e64 v137, 0x80000000, v137, s2
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	s_clause 0x1f
	buffer_load_u8 v218, v95, s[12:15], 0 offen
	buffer_load_u8 v219, v96, s[12:15], 0 offen
	buffer_load_u8 v220, v112, s[12:15], 0 offen
	buffer_load_u8 v221, v113, s[12:15], 0 offen
	buffer_load_u8 v222, v114, s[12:15], 0 offen
	buffer_load_u8 v223, v115, s[12:15], 0 offen
	buffer_load_u8 v224, v116, s[12:15], 0 offen
	buffer_load_u8 v225, v117, s[12:15], 0 offen
	buffer_load_u8 v226, v118, s[12:15], 0 offen
	buffer_load_u8 v227, v119, s[12:15], 0 offen
	buffer_load_u8 v228, v120, s[12:15], 0 offen
	buffer_load_u8 v229, v121, s[12:15], 0 offen
	buffer_load_u8 v230, v122, s[12:15], 0 offen
	buffer_load_u8 v231, v123, s[12:15], 0 offen
	buffer_load_u8 v232, v124, s[12:15], 0 offen
	buffer_load_u8 v233, v125, s[12:15], 0 offen
	buffer_load_u8 v234, v126, s[12:15], 0 offen
	buffer_load_u8 v235, v127, s[12:15], 0 offen
	buffer_load_u8 v236, v128, s[12:15], 0 offen
	buffer_load_u8 v237, v129, s[12:15], 0 offen
	buffer_load_u8 v238, v130, s[12:15], 0 offen
	buffer_load_u8 v239, v131, s[12:15], 0 offen
	buffer_load_u8 v240, v132, s[12:15], 0 offen
	buffer_load_u8 v241, v133, s[12:15], 0 offen
	buffer_load_u8 v242, v134, s[12:15], 0 offen
	buffer_load_u8 v243, v135, s[12:15], 0 offen
	buffer_load_u8 v244, v136, s[12:15], 0 offen
	buffer_load_u8 v245, v137, s[12:15], 0 offen
	buffer_load_u8 v246, v138, s[12:15], 0 offen
	buffer_load_u8 v247, v139, s[12:15], 0 offen
	buffer_load_u8 v248, v140, s[12:15], 0 offen
	buffer_load_u8 v249, v141, s[12:15], 0 offen
	.loc	1 1346 21 is_stmt 1             ; ragged.py:1346:21
	s_add_i32 s23, s23, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cmp_lt_i32 s23, s22
	s_waitcnt vmcnt(32)
	v_add_nc_u32_e32 v142, s30, v66
	scratch_load_b64 v[66:67], off, off offset:8 ; 8-byte Folded Reload
	v_add_nc_u32_e32 v143, s0, v142
	v_add_nc_u32_e32 v144, s1, v142
	v_add_nc_u32_e32 v145, s25, v142
	v_add_nc_u32_e32 v146, s26, v142
	v_add_nc_u32_e32 v147, s27, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1334 34                       ; ragged.py:1334:34
	v_dual_cndmask_b32 v95, 0x80000000, v143 :: v_dual_cndmask_b32 v96, 0x80000000, v144
	v_dual_cndmask_b32 v112, 0x80000000, v145 :: v_dual_cndmask_b32 v113, 0x80000000, v146
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v114, 0x80000000, v147, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v148, s30, v66
	scratch_load_b64 v[66:67], off, off offset:16 ; 8-byte Folded Reload
	v_cndmask_b32_e32 v148, 0x80000000, v148, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v149, s30, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v142, 0x80000000, v142 :: v_dual_cndmask_b32 v149, 0x80000000, v149
	s_clause 0x7
	buffer_load_u8 v115, v142, s[8:11], 0 offen
	buffer_load_u8 v116, v148, s[8:11], 0 offen
	buffer_load_u8 v117, v149, s[8:11], 0 offen
	buffer_load_u8 v95, v95, s[8:11], 0 offen
	buffer_load_u8 v112, v112, s[8:11], 0 offen
	buffer_load_u8 v113, v113, s[8:11], 0 offen
	buffer_load_u8 v114, v114, s[8:11], 0 offen
	buffer_load_u8 v96, v96, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v111, v115
	s_waitcnt vmcnt(4)
	ds_store_b8 v111, v95 offset:256
	s_waitcnt vmcnt(0)
	ds_store_b8 v111, v96 offset:512
	ds_store_b8 v111, v112 offset:1024
	ds_store_b8 v111, v113 offset:1280
	ds_store_b8 v101, v116
	ds_store_b8 v102, v117
	ds_store_b8 v111, v114 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1336 31                       ; ragged.py:1336:31
	ds_load_u8 v95, v99 offset:320
	ds_load_u8 v96, v99 offset:256
	ds_load_u8 v250, v99 offset:336
	ds_load_u8 v251, v99 offset:272
	ds_load_u8 v216, v99 offset:352
	ds_load_u8 v217, v99 offset:288
	ds_load_u8 v208, v99 offset:368
	ds_load_u8 v209, v99 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v99 offset:448
	ds_load_u8 v112, v99 offset:384
	ds_load_u8 v252, v99 offset:464
	ds_load_u8 v253, v99 offset:400
	ds_load_u8 v254, v99 offset:480
	ds_load_u8 v255, v99 offset:416
	ds_load_u8 v210, v99 offset:496
	ds_load_u8 v211, v99 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v96, v112, v96, 0xc0c0004
	ds_load_u8 v112, v99 offset:64
	ds_load_u8 v113, v99
	ds_load_u8 v97, v99 offset:80
	ds_load_u8 v98, v99 offset:96
	ds_load_u8 v212, v99 offset:112
	ds_load_u8 v66, v99 offset:16
	ds_load_u8 v67, v99 offset:32
	ds_load_u8 v213, v99 offset:48
	v_lshl_or_b32 v96, v96, 16, v95
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v99 offset:192
	ds_load_u8 v114, v99 offset:128
	ds_load_u8 v68, v99 offset:208
	ds_load_u8 v103, v99 offset:144
	ds_load_u8 v0, v99 offset:224
	ds_load_u8 v104, v99 offset:160
	ds_load_u8 v214, v99 offset:240
	ds_load_u8 v215, v99 offset:176
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v66, v66, v97, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v67, v67, v98, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v200, v99 offset:960
	ds_load_u8 v201, v99 offset:896
	ds_load_u8 v168, v99 offset:1024
	ds_load_u8 v175, v99 offset:976
	ds_load_u8 v176, v99 offset:912
	ds_load_u8 v170, v99 offset:992
	ds_load_u8 v171, v99 offset:928
	ds_load_u8 v169, v99 offset:944
	ds_load_u8 v202, v99 offset:832
	ds_load_u8 v203, v99 offset:768
	ds_load_u8 v182, v99 offset:848
	ds_load_u8 v184, v99 offset:784
	ds_load_u8 v178, v99 offset:864
	ds_load_u8 v179, v99 offset:800
	ds_load_u8 v172, v99 offset:880
	ds_load_u8 v173, v99 offset:816
	ds_load_u8 v204, v99 offset:704
	ds_load_u8 v205, v99 offset:640
	ds_load_u8 v188, v99 offset:720
	ds_load_u8 v189, v99 offset:656
	ds_load_u8 v185, v99 offset:736
	ds_load_u8 v187, v99 offset:672
	ds_load_u8 v180, v99 offset:752
	ds_load_u8 v183, v99 offset:688
	ds_load_u8 v206, v99 offset:576
	ds_load_u8 v207, v99 offset:512
	ds_load_u8 v195, v99 offset:592
	ds_load_u8 v196, v99 offset:528
	ds_load_u8 v193, v99 offset:608
	ds_load_u8 v194, v99 offset:544
	ds_load_u8 v190, v99 offset:624
	ds_load_u8 v191, v99 offset:560
	ds_load_u8 v174, v99 offset:1216
	ds_load_u8 v177, v99 offset:1280
	ds_load_u8 v141, v99 offset:1232
	ds_load_u8 v142, v99 offset:1168
	ds_load_u8 v139, v99 offset:1248
	ds_load_u8 v140, v99 offset:1184
	ds_load_u8 v137, v99 offset:1264
	ds_load_u8 v138, v99 offset:1200
	ds_load_u8 v181, v99 offset:1152
	ds_load_u8 v186, v99 offset:1088
	ds_load_u8 v148, v99 offset:1104
	ds_load_u8 v149, v99 offset:1040
	ds_load_u8 v146, v99 offset:1120
	ds_load_u8 v147, v99 offset:1056
	ds_load_u8 v143, v99 offset:1136
	ds_load_u8 v144, v99 offset:1072
	ds_load_u8 v192, v99 offset:1472
	ds_load_u8 v136, v99 offset:1536
	ds_load_u8 v156, v99 offset:1488
	ds_load_u8 v158, v99 offset:1424
	ds_load_u8 v153, v99 offset:1504
	ds_load_u8 v155, v99 offset:1440
	ds_load_u8 v150, v99 offset:1520
	ds_load_u8 v151, v99 offset:1456
	ds_load_u8 v197, v99 offset:1408
	ds_load_u8 v198, v99 offset:1344
	ds_load_u8 v165, v99 offset:1360
	ds_load_u8 v166, v99 offset:1296
	ds_load_u8 v162, v99 offset:1376
	ds_load_u8 v163, v99 offset:1312
	ds_load_u8 v159, v99 offset:1392
	ds_load_u8 v160, v99 offset:1328
	ds_load_u8 v145, v99 offset:1984
	ds_load_u8 v116, v99 offset:2000
	ds_load_u8 v118, v99 offset:1936
	ds_load_u8 v114, v99 offset:2016
	ds_load_u8 v115, v99 offset:1952
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v68, v103, v68, 0xc0c0004
	v_perm_b32 v0, v104, v0, 0xc0c0004
	v_lshl_or_b32 v95, v113, 16, v112
	scratch_load_b32 v112, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v199, v112
	scratch_load_b32 v112, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v112, v112
	ds_load_u8 v113, v99 offset:1968
	ds_load_u8 v152, v99 offset:1920
	ds_load_u8 v154, v99 offset:1856
	ds_load_u8 v123, v99 offset:1872
	ds_load_u8 v125, v99 offset:1808
	ds_load_u8 v120, v99 offset:1888
	ds_load_u8 v121, v99 offset:1824
	ds_load_u8 v117, v99 offset:1904
	ds_load_u8 v119, v99 offset:1840
	ds_load_u8 v157, v99 offset:1728
	ds_load_u8 v161, v99 offset:1792
	ds_load_u8 v128, v99 offset:1744
	ds_load_u8 v129, v99 offset:1680
	ds_load_u8 v126, v99 offset:1760
	ds_load_u8 v127, v99 offset:1696
	ds_load_u8 v122, v99 offset:1776
	ds_load_u8 v124, v99 offset:1712
	ds_load_u8 v164, v99 offset:1664
	ds_load_u8 v167, v99 offset:1600
	ds_load_u8 v134, v99 offset:1616
	ds_load_u8 v135, v99 offset:1552
	ds_load_u8 v132, v99 offset:1632
	ds_load_u8 v133, v99 offset:1568
	ds_load_u8 v130, v99 offset:1648
	ds_load_u8 v131, v99 offset:1584
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v111, v218
	ds_store_b8 v111, v219 offset:256
	ds_store_b8 v111, v220 offset:512
	ds_store_b8 v111, v222 offset:1024
	ds_store_b8 v111, v223 offset:1280
	ds_store_b8 v111, v224 offset:1536
	ds_store_b8 v111, v226 offset:2048
	ds_store_b8 v111, v227 offset:2304
	ds_store_b8 v111, v228 offset:2560
	ds_store_b8 v111, v230 offset:3072
	ds_store_b8 v111, v231 offset:3328
	ds_store_b8 v111, v232 offset:3584
	ds_store_b8 v111, v234 offset:4096
	ds_store_b8 v111, v235 offset:4352
	ds_store_b8 v111, v236 offset:4608
	ds_store_b8 v111, v238 offset:5120
	ds_store_b8 v111, v239 offset:5376
	ds_store_b8 v111, v240 offset:5632
	ds_store_b8 v111, v242 offset:6144
	ds_store_b8 v111, v243 offset:6400
	ds_store_b8 v111, v244 offset:6656
	ds_store_b8 v111, v246 offset:7168
	ds_store_b8 v111, v247 offset:7424
	ds_store_b8 v111, v248 offset:7680
	ds_store_b8 v101, v221
	ds_store_b8 v102, v225
	ds_store_b8 v105, v229
	ds_store_b8 v106, v233
	ds_store_b8 v107, v237
	ds_store_b8 v108, v241
	ds_store_b8 v109, v245
	ds_store_b8 v110, v249
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1336 31                       ; ragged.py:1336:31
	ds_load_u8 v218, v100 offset:1280
	ds_load_u8 v219, v100 offset:1024
	ds_load_u8 v220, v100 offset:1920
	ds_load_u8 v221, v100 offset:1664
	ds_load_u8 v222, v100 offset:1408
	ds_load_u8 v223, v100 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v218, v219, v218, 0xc0c0004
	ds_load_u8 v219, v100 offset:1792
	ds_load_u8 v224, v100 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v220, v221, v220, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v222, v223, v222, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v221, v220, 16, v222
	v_perm_b32 v222, v251, v250, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v219, v224, v219, 0xc0c0004
	ds_load_u8 v224, v100 offset:256
	ds_load_u8 v225, v100
	ds_load_u8 v226, v100 offset:896
	ds_load_u8 v227, v100 offset:640
	ds_load_u8 v228, v100 offset:384
	ds_load_u8 v229, v100 offset:128
	v_lshl_or_b32 v219, v219, 16, v218
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v224, v225, v224, 0xc0c0004
	ds_load_u8 v225, v100 offset:768
	ds_load_u8 v230, v100 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v223, v229, v228, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v225, v230, v225, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v218, v225, 16, v224
	v_perm_b32 v224, v227, v226, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[218:219], v[95:96], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v220, v224, 16, v223
	v_perm_b32 v223, v253, v252, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[220:221], v[95:96], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v223, v223, 16, v222
	v_lshl_or_b32 v222, v68, 16, v66
	v_perm_b32 v66, v217, v216, 0xc0c0004
	v_perm_b32 v68, v255, v254, 0xc0c0004
	v_lshl_or_b32 v216, v0, 16, v67
	v_perm_b32 v0, v209, v208, 0xc0c0004
	v_perm_b32 v67, v213, v212, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[218:219], v[222:223], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v217, v68, 16, v66
	v_perm_b32 v66, v211, v210, 0xc0c0004
	v_perm_b32 v68, v215, v214, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[220:221], v[222:223], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[218:219], v[216:217], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v209, v66, 16, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v208, v68, 16, v67
	v_perm_b32 v0, v203, v202, 0xc0c0004
	v_perm_b32 v66, v201, v200, 0xc0c0004
	v_perm_b32 v67, v207, v206, 0xc0c0004
	v_perm_b32 v68, v205, v204, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[220:221], v[216:217], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[218:219], v[208:209], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v96, v66, 16, v0
	v_wmma_i32_16x16x16_iu4 v[57:64], v[220:221], v[208:209], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v95, v68, 16, v67
	ds_load_u8 v0, v100 offset:3328
	ds_load_u8 v66, v100 offset:3072
	ds_load_u8 v67, v100 offset:3968
	ds_load_u8 v68, v100 offset:3712
	ds_load_u8 v97, v100 offset:3456
	ds_load_u8 v98, v100 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v100 offset:3840
	ds_load_u8 v103, v100 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v103, v66, 0xc0c0004
	ds_load_u8 v103, v100 offset:2304
	ds_load_u8 v104, v100 offset:2048
	ds_load_u8 v202, v100 offset:2944
	ds_load_u8 v203, v100 offset:2688
	ds_load_u8 v204, v100 offset:2432
	ds_load_u8 v205, v100 offset:2176
	v_lshl_or_b32 v201, v66, 16, v0
	v_perm_b32 v0, v98, v97, 0xc0c0004
	v_perm_b32 v66, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v100 offset:2816
	ds_load_u8 v200, v100 offset:2560
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v68, v203, v202, 0xc0c0004
	v_lshl_or_b32 v203, v66, 16, v0
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v67, v205, v204, 0xc0c0004
	v_perm_b32 v0, v184, v182, 0xc0c0004
	v_perm_b32 v66, v176, v175, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v202, v68, 16, v67
	v_perm_b32 v67, v196, v195, 0xc0c0004
	v_perm_b32 v68, v189, v188, 0xc0c0004
	v_lshl_or_b32 v176, v66, 16, v0
	v_perm_b32 v0, v179, v178, 0xc0c0004
	v_perm_b32 v66, v171, v170, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[202:203], v[95:96], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v175, v68, 16, v67
	v_perm_b32 v67, v194, v193, 0xc0c0004
	v_perm_b32 v68, v187, v185, 0xc0c0004
	v_lshl_or_b32 v171, v66, 16, v0
	v_perm_b32 v0, v191, v190, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v200, v104, 0xc0c0004
	v_perm_b32 v66, v183, v180, 0xc0c0004
	v_lshl_or_b32 v170, v68, 16, v67
	v_perm_b32 v67, v173, v172, 0xc0c0004
	v_perm_b32 v68, v169, v199, 0xc0c0004
	v_lshl_or_b32 v200, v104, 16, v103
	v_lshl_or_b32 v172, v66, 16, v0
	v_perm_b32 v0, v177, v198, 0xc0c0004
	v_perm_b32 v66, v197, v192, 0xc0c0004
	v_lshl_or_b32 v173, v68, 16, v67
	v_perm_b32 v67, v168, v186, 0xc0c0004
	v_perm_b32 v68, v181, v174, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[200:201], v[95:96], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v96, v66, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[200:201], v[170:171], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[202:203], v[170:171], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v95, v68, 16, v67
	ds_load_u8 v0, v100 offset:5376
	ds_load_u8 v66, v100 offset:5120
	ds_load_u8 v67, v100 offset:6016
	ds_load_u8 v68, v100 offset:5760
	ds_load_u8 v97, v100 offset:5504
	ds_load_u8 v98, v100 offset:5248
	v_wmma_i32_16x16x16_iu4 v[49:56], v[200:201], v[172:173], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[202:203], v[172:173], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[200:201], v[175:176], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[202:203], v[175:176], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v100 offset:5888
	ds_load_u8 v103, v100 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v103, v66, 0xc0c0004
	ds_load_u8 v103, v100 offset:4352
	ds_load_u8 v104, v100 offset:4096
	ds_load_u8 v170, v100 offset:4992
	ds_load_u8 v171, v100 offset:4736
	ds_load_u8 v172, v100 offset:4480
	ds_load_u8 v173, v100 offset:4224
	v_lshl_or_b32 v169, v66, 16, v0
	v_perm_b32 v0, v98, v97, 0xc0c0004
	v_perm_b32 v66, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v100 offset:4864
	ds_load_u8 v168, v100 offset:4608
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v68, v171, v170, 0xc0c0004
	v_lshl_or_b32 v171, v66, 16, v0
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v67, v173, v172, 0xc0c0004
	v_perm_b32 v0, v166, v165, 0xc0c0004
	v_perm_b32 v66, v158, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v170, v68, 16, v67
	v_perm_b32 v67, v149, v148, 0xc0c0004
	v_perm_b32 v68, v142, v141, 0xc0c0004
	v_lshl_or_b32 v142, v66, 16, v0
	v_perm_b32 v0, v163, v162, 0xc0c0004
	v_perm_b32 v66, v155, v153, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[170:171], v[95:96], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v141, v68, 16, v67
	v_perm_b32 v67, v147, v146, 0xc0c0004
	v_perm_b32 v68, v140, v139, 0xc0c0004
	v_lshl_or_b32 v140, v66, 16, v0
	v_perm_b32 v0, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v168, v104, 0xc0c0004
	v_perm_b32 v66, v151, v150, 0xc0c0004
	v_lshl_or_b32 v139, v68, 16, v67
	v_perm_b32 v67, v144, v143, 0xc0c0004
	v_perm_b32 v68, v138, v137, 0xc0c0004
	v_lshl_or_b32 v168, v104, 16, v103
	v_lshl_or_b32 v138, v66, 16, v0
	v_perm_b32 v0, v161, v154, 0xc0c0004
	v_perm_b32 v66, v152, v145, 0xc0c0004
	v_lshl_or_b32 v137, v68, 16, v67
	v_perm_b32 v67, v136, v167, 0xc0c0004
	v_perm_b32 v68, v164, v157, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[168:169], v[95:96], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v96, v66, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[168:169], v[141:142], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[170:171], v[141:142], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v95, v68, 16, v67
	ds_load_u8 v0, v100 offset:7424
	ds_load_u8 v66, v100 offset:7168
	ds_load_u8 v67, v100 offset:8064
	ds_load_u8 v68, v100 offset:7808
	ds_load_u8 v97, v100 offset:7552
	ds_load_u8 v98, v100 offset:7296
	v_wmma_i32_16x16x16_iu4 v[33:40], v[168:169], v[139:140], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[170:171], v[139:140], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[168:169], v[137:138], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[170:171], v[137:138], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v100 offset:7936
	ds_load_u8 v103, v100 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v103, v66, 0xc0c0004
	ds_load_u8 v103, v100 offset:6400
	ds_load_u8 v104, v100 offset:6144
	ds_load_u8 v138, v100 offset:7040
	ds_load_u8 v139, v100 offset:6784
	ds_load_u8 v140, v100 offset:6528
	ds_load_u8 v141, v100 offset:6272
	v_lshl_or_b32 v137, v66, 16, v0
	v_perm_b32 v0, v98, v97, 0xc0c0004
	v_perm_b32 v66, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v100 offset:6912
	ds_load_u8 v136, v100 offset:6656
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v68, v139, v138, 0xc0c0004
	v_lshl_or_b32 v139, v66, 16, v0
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v67, v141, v140, 0xc0c0004
	v_perm_b32 v0, v125, v123, 0xc0c0004
	v_perm_b32 v66, v118, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v138, v68, 16, v67
	v_perm_b32 v67, v135, v134, 0xc0c0004
	v_perm_b32 v68, v129, v128, 0xc0c0004
	v_lshl_or_b32 v129, v66, 16, v0
	v_perm_b32 v0, v121, v120, 0xc0c0004
	v_perm_b32 v66, v115, v114, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[138:139], v[95:96], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v128, v68, 16, v67
	v_perm_b32 v67, v133, v132, 0xc0c0004
	v_perm_b32 v68, v127, v126, 0xc0c0004
	v_lshl_or_b32 v115, v66, 16, v0
	v_perm_b32 v0, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v136, v104, 0xc0c0004
	v_perm_b32 v66, v124, v122, 0xc0c0004
	v_lshl_or_b32 v114, v68, 16, v67
	v_perm_b32 v67, v119, v117, 0xc0c0004
	v_perm_b32 v68, v113, v112, 0xc0c0004
	v_lshl_or_b32 v136, v104, 16, v103
	v_lshl_or_b32 v112, v66, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[138:139], v[128:129], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[138:139], v[114:115], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v113, v68, 16, v67
	v_wmma_i32_16x16x16_iu4 v[1:8], v[136:137], v[95:96], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[136:137], v[128:129], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[136:137], v[114:115], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[136:137], v[112:113], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[138:139], v[112:113], v[57:64] neg_lo:[1,1,0]
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v71, v27
	v_cvt_f32_i32_e32 v27, v39
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:32
	scratch_load_b32 v0, off, off offset:36
	v_cvt_f32_i32_e32 v99, v1
	v_cvt_f32_i32_e32 v96, v2
	v_cvt_f32_i32_e32 v95, v3
	v_cvt_f32_i32_e32 v94, v4
	v_cvt_f32_i32_e32 v93, v5
	v_cvt_f32_i32_e32 v92, v6
	v_cvt_f32_i32_e32 v91, v7
	v_cvt_f32_i32_e32 v90, v8
	v_cvt_f32_i32_e32 v89, v9
	v_cvt_f32_i32_e32 v88, v10
	v_cvt_f32_i32_e32 v87, v11
	v_cvt_f32_i32_e32 v86, v12
	v_cvt_f32_i32_e32 v85, v13
	v_cvt_f32_i32_e32 v84, v14
	v_cvt_f32_i32_e32 v83, v15
	v_cvt_f32_i32_e32 v82, v16
	v_cvt_f32_i32_e32 v81, v17
	v_cvt_f32_i32_e32 v80, v18
	v_cvt_f32_i32_e32 v79, v19
	v_cvt_f32_i32_e32 v78, v20
	v_cvt_f32_i32_e32 v77, v21
	v_cvt_f32_i32_e32 v76, v22
	v_cvt_f32_i32_e32 v75, v23
	v_cvt_f32_i32_e32 v74, v24
	v_cvt_f32_i32_e32 v73, v25
	v_cvt_f32_i32_e32 v72, v26
	v_cvt_f32_i32_e32 v70, v28
	v_cvt_f32_i32_e32 v69, v29
	v_cvt_f32_i32_e32 v68, v30
	v_cvt_f32_i32_e32 v67, v31
	v_cvt_f32_i32_e32 v66, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v32, v34
	v_cvt_f32_i32_e32 v31, v35
	v_cvt_f32_i32_e32 v30, v36
	v_cvt_f32_i32_e32 v29, v37
	v_cvt_f32_i32_e32 v28, v38
	v_cvt_f32_i32_e32 v26, v40
	v_cvt_f32_i32_e32 v25, v41
	v_cvt_f32_i32_e32 v24, v42
	v_cvt_f32_i32_e32 v23, v43
	v_cvt_f32_i32_e32 v22, v44
	v_cvt_f32_i32_e32 v21, v45
	v_cvt_f32_i32_e32 v20, v46
	v_cvt_f32_i32_e32 v19, v47
	v_cvt_f32_i32_e32 v18, v48
	v_cvt_f32_i32_e32 v17, v49
	v_cvt_f32_i32_e32 v16, v50
	v_cvt_f32_i32_e32 v15, v51
	v_cvt_f32_i32_e32 v14, v52
	v_cvt_f32_i32_e32 v13, v53
	v_cvt_f32_i32_e32 v12, v54
	v_cvt_f32_i32_e32 v11, v55
	v_cvt_f32_i32_e32 v10, v56
	v_cvt_f32_i32_e32 v9, v57
	v_cvt_f32_i32_e32 v8, v58
	v_cvt_f32_i32_e32 v7, v59
	v_cvt_f32_i32_e32 v6, v60
	v_cvt_f32_i32_e32 v5, v61
	v_cvt_f32_i32_e32 v4, v62
	v_cvt_f32_i32_e32 v3, v63
	v_cvt_f32_i32_e32 v2, v64
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v40, 15, v0
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v38, s3, v40
	.loc	1 1404 33                       ; ragged.py:1404:33
	s_mul_i32 s0, s16, s18
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s5, 0xffff
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s12, s3, s0
	s_mov_b32 s11, 0x31027000
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v35, 16, v38
	.loc	1 1404 21                       ; ragged.py:1404:21
	v_add_lshl_u32 v36, s12, v40, 1
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v34, 32, v38
	v_or_b32_e32 v1, 48, v38
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s3, s18, v38
	v_cmp_gt_i32_e64 s1, s18, v35
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v37, 32, v36
	v_add_nc_u32_e32 v38, 64, v36
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s18, v34
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v41, 0x80000000, v36, s3
	v_add_nc_u32_e32 v36, 0x60, v36
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s18, v1
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v35, 0x80000000, v37, s1
	v_cndmask_b32_e64 v34, 0x80000000, v38, s0
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s4
	v_cndmask_b32_e32 v1, 0x80000000, v36, vcc_lo
	s_clause 0x3
	buffer_load_u16 v43, v41, s[8:11], 0 offen
	buffer_load_u16 v44, v35, s[8:11], 0 offen
	buffer_load_u16 v45, v34, s[8:11], 0 offen
	buffer_load_u16 v46, v1, s[8:11], 0 offen
	.loc	1 1411 33                       ; ragged.py:1411:33
	s_mul_i32 s4, s16, s19
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_and_b32 s9, s7, 0xffff
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s4, s17, s4
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_mov_b32 s8, s6
	v_add_lshl_u32 v1, s4, v0, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v37, 4, v0
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v36, s19, v40
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshlrev_b32_e32 v34, 1, v0
	v_lshlrev_b32_e32 v35, 5, v0
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_or_b32 v48, v37, 1, v39
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s12, s12, s19
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	buffer_load_u16 v47, v1, s[8:11], 0 offen
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v1, 0xf0, v0
	v_and_b32_e32 v0, 28, v34
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v42, s12, s17, v36
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v58, 2, v48
	v_or_b32_e32 v34, 0x8e, v48
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v50, v1, 2, 0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v36, 0x8a, v48
	v_or_b32_e32 v37, 0x88, v48
	v_or_b32_e32 v38, 0x86, v48
	v_or_b32_e32 v39, 0x84, v48
	v_or_b32_e32 v40, 0x82, v48
	v_or_b32_e32 v41, 0x80, v48
	v_or_b32_e32 v52, 14, v48
	v_or_b32_e32 v53, 12, v48
	v_or_b32_e32 v54, 10, v48
	v_or_b32_e32 v55, 8, v48
	v_or_b32_e32 v56, 6, v48
	v_or_b32_e32 v57, 4, v48
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v59, s17, v48
	.loc	1 1415 17 is_stmt 1             ; ragged.py:1415:17
	v_lshl_add_u32 v51, v1, 1, 0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v107, s17, v58
	v_or_b32_e32 v61, s17, v34
	v_or_b32_e32 v63, s17, v36
	v_or_b32_e32 v64, s17, v37
	v_or_b32_e32 v65, s17, v38
	v_or_b32_e32 v97, s17, v39
	v_or_b32_e32 v98, s17, v40
	v_or_b32_e32 v100, s17, v41
	v_or_b32_e32 v101, s17, v52
	v_or_b32_e32 v102, s17, v53
	v_or_b32_e32 v103, s17, v54
	v_or_b32_e32 v104, s17, v55
	v_or_b32_e32 v105, s17, v56
	v_or_b32_e32 v106, s17, v57
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s19, v59
	v_cmp_gt_i32_e64 s18, s19, v107
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v60, s19, 5, v42
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s4, s19, v61
	v_cmp_gt_i32_e64 s6, s19, v63
	v_cmp_gt_i32_e64 s7, s19, v64
	v_cmp_gt_i32_e64 s8, s19, v65
	v_cmp_gt_i32_e64 s9, s19, v97
	v_cmp_gt_i32_e64 s10, s19, v98
	v_cmp_gt_i32_e64 s11, s19, v100
	v_cmp_gt_i32_e64 s12, s19, v101
	v_cmp_gt_i32_e64 s13, s19, v102
	v_cmp_gt_i32_e64 s14, s19, v103
	v_cmp_gt_i32_e64 s15, s19, v104
	v_cmp_gt_i32_e64 s16, s19, v105
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v59, v42, v58, 2
	v_add_lshl_u32 v108, v42, v57, 2
	v_add_lshl_u32 v109, v42, v56, 2
	v_add_lshl_u32 v110, v42, v55, 2
	v_add_lshl_u32 v111, v42, v54, 2
	v_add_lshl_u32 v112, v42, v53, 2
	v_add_lshl_u32 v113, v42, v52, 2
	v_add_lshl_u32 v114, v42, v41, 2
	v_add_lshl_u32 v115, v42, v40, 2
	v_add_lshl_u32 v116, v42, v39, 2
	v_add_lshl_u32 v117, v42, v38, 2
	v_add_lshl_u32 v118, v42, v37, 2
	v_add_lshl_u32 v119, v42, v36, 2
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v136, v60, v48, 2
	v_add_lshl_u32 v137, v60, v58, 2
	s_and_b32 s21, s21, 0xffff
	v_add_lshl_u32 v138, v60, v57, 2
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v49, 32, v35
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v35, 0x8c, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v80, v80, v44
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_add3_u32 v49, v50, v49, v0
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[0:1], null, s19, 48, v[42:43]
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v78, v78, v44 :: v_dual_lshlrev_b32 v43, 16, v43
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add_nc_u32_e32 v50, s24, v42
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v62, s17, v35
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v42, v48, 2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v91, v91, v43
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s17, s19, v106
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v121, v50, v48, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s5, s19, v62
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v120, v42, v35, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s1, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v42, v42, v34, 2
	v_cndmask_b32_e64 v61, 0x80000000, v121, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v122, v50, v58, 2
	v_cndmask_b32_e64 v59, 0x80000000, v59, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v123, v50, v57, 2
	v_cndmask_b32_e64 v62, 0x80000000, v108, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v124, v50, v56, 2
	v_cndmask_b32_e64 v63, 0x80000000, v109, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v125, v50, v55, 2
	v_cndmask_b32_e64 v64, 0x80000000, v110, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v126, v50, v54, 2
	v_cndmask_b32_e64 v65, 0x80000000, v111, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v127, v50, v53, 2
	v_cndmask_b32_e64 v97, 0x80000000, v112, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v128, v50, v52, 2
	v_cndmask_b32_e64 v98, 0x80000000, v113, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v129, v50, v41, 2
	v_cndmask_b32_e64 v100, 0x80000000, v114, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s10
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v90, v90, v43 :: v_dual_lshlrev_b32 v45, 16, v45
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v101, 0x80000000, v115, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s9
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v89, v89, v43
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v102, 0x80000000, v116, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s8
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v70, v70, v44 :: v_dual_lshlrev_b32 v47, 16, v47
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v103, 0x80000000, v117, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v130, v50, v40, 2
	v_cndmask_b32_e64 v104, 0x80000000, v118, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v131, v50, v39, 2
	v_cndmask_b32_e64 v105, 0x80000000, v119, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s5
	s_and_b32 s3, s3, s4
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v87, v87, v43 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s18
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v99, v99, v43
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v107, 0x80000000, v122, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s17
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v96, v96, v43
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v108, 0x80000000, v123, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s16
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v95, v95, v43
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v109, 0x80000000, v124, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s15
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v94, v94, v43
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v110, 0x80000000, v125, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s14
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v93, v93, v43
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v111, 0x80000000, v126, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s13
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v92, v92, v43
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v112, 0x80000000, v127, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s12
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v88, v88, v43 :: v_dual_mul_f32 v81, v81, v44
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v113, 0x80000000, v128, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s11
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v86, v86, v43 :: v_dual_mul_f32 v79, v79, v44
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v114, 0x80000000, v129, s3
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v85, v85, v43 :: v_dual_mul_f32 v76, v76, v44
	v_dual_mul_f32 v84, v84, v43 :: v_dual_mul_f32 v77, v77, v44
	v_dual_mul_f32 v83, v83, v43 :: v_dual_mul_f32 v74, v74, v44
	v_dual_mul_f32 v43, v82, v43 :: v_dual_mul_f32 v72, v72, v44
	v_dual_mul_f32 v75, v75, v44 :: v_dual_mul_f32 v32, v32, v45
	v_dual_mul_f32 v73, v73, v44 :: v_dual_mul_f32 v30, v30, v45
	v_mul_f32_e32 v71, v71, v44
	v_dual_mul_f32 v69, v69, v44 :: v_dual_mul_f32 v82, v28, v45
	v_dual_mul_f32 v68, v68, v44 :: v_dual_mul_f32 v33, v33, v45
	v_dual_mul_f32 v67, v67, v44 :: v_dual_mul_f32 v122, v26, v45
	v_dual_mul_f32 v44, v66, v44 :: v_dual_mul_f32 v31, v31, v45
	v_mul_f32_e32 v66, v29, v45
	v_dual_mul_f32 v121, v27, v45 :: v_dual_mul_f32 v16, v16, v46
	v_dual_mul_f32 v123, v25, v45 :: v_dual_mul_f32 v10, v10, v46
	v_dual_mul_f32 v124, v24, v45 :: v_dual_mul_f32 v17, v17, v46
	v_mul_f32_e32 v125, v23, v45
	v_mul_f32_e32 v126, v22, v45
	v_dual_mul_f32 v127, v21, v45 :: v_dual_mul_f32 v8, v8, v46
	v_mul_f32_e32 v128, v20, v45
	v_dual_mul_f32 v129, v19, v45 :: v_dual_mul_f32 v6, v6, v46
	v_dual_mul_f32 v45, v18, v45 :: v_dual_mul_f32 v4, v4, v46
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_store_b32 v49, v47
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v51
	ds_load_b128 v[22:25], v51 offset:16
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s10
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v47, v15, v46
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v115, 0x80000000, v130, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s9
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v49, v14, v46
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v116, 0x80000000, v131, s3
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v130, v13, v46
	v_mul_f32_e32 v131, v12, v46
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_load_b128 v[12:15], v51 offset:512
	ds_load_b128 v[26:29], v51 offset:528
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v132, v50, v38, 2
	v_add_lshl_u32 v133, v50, v37, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v134, v50, v36, 2
	v_add_lshl_u32 v135, v50, v35, 2
	v_cndmask_b32_e64 v117, 0x80000000, v132, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v50, v50, v34, 2
	v_cndmask_b32_e64 v118, 0x80000000, v133, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s6
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v11, v11, v46 :: v_dual_mul_f32 v92, v92, v23
	v_dual_mul_f32 v9, v9, v46 :: v_dual_mul_f32 v90, v90, v25
	v_mul_f32_e32 v7, v7, v46
	v_mul_f32_e32 v5, v5, v46
	v_mul_f32_e32 v3, v3, v46
	v_dual_mul_f32 v2, v2, v46 :: v_dual_mul_f32 v51, v96, v19
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v46, v99, v18 :: v_dual_mul_f32 v89, v89, v12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v119, 0x80000000, v134, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s5
	s_and_b32 s1, s1, s4
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v95, v95, v20 :: v_dual_mul_f32 v80, v80, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v50, 0x80000000, v50, s1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v94, v94, v21
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v93, v93, v22 :: v_dual_mul_f32 v78, v78, v21
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v106, 0x80000000, v120, s19
	v_cndmask_b32_e64 v120, 0x80000000, v135, s3
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v91, v91, v24 :: v_dual_mul_f32 v76, v76, v23
	v_dual_mul_f32 v88, v88, v13 :: v_dual_mul_f32 v87, v87, v14
	v_mul_f32_e32 v74, v74, v25
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v86, v86, v15 :: v_dual_mul_f32 v85, v85, v26
	v_mul_f32_e32 v72, v72, v13
	v_dual_mul_f32 v84, v84, v27 :: v_dual_mul_f32 v83, v83, v28
	v_dual_mul_f32 v70, v70, v15 :: v_dual_mul_f32 v43, v43, v29
	v_dual_mul_f32 v68, v68, v27 :: v_dual_mul_f32 v81, v81, v18
	v_dual_mul_f32 v44, v44, v29 :: v_dual_mul_f32 v79, v79, v20
	v_dual_mul_f32 v32, v32, v19 :: v_dual_mul_f32 v77, v77, v22
	v_dual_mul_f32 v30, v30, v21 :: v_dual_mul_f32 v75, v75, v24
	v_dual_mul_f32 v66, v66, v22 :: v_dual_mul_f32 v73, v73, v12
	v_dual_mul_f32 v82, v82, v23 :: v_dual_mul_f32 v71, v71, v14
	v_mul_f32_e32 v96, v121, v24
	v_mul_f32_e32 v69, v69, v26
	v_mul_f32_e32 v67, v67, v28
	v_mul_f32_e32 v99, v122, v25
	v_mul_f32_e32 v122, v124, v13
	v_mul_f32_e32 v124, v126, v15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1e
	buffer_store_b32 v46, v1, s[20:23], 0 offen
	buffer_store_b32 v51, v59, s[20:23], 0 offen
	buffer_store_b32 v95, v62, s[20:23], 0 offen
	buffer_store_b32 v94, v63, s[20:23], 0 offen
	buffer_store_b32 v93, v64, s[20:23], 0 offen
	buffer_store_b32 v92, v65, s[20:23], 0 offen
	buffer_store_b32 v91, v97, s[20:23], 0 offen
	buffer_store_b32 v90, v98, s[20:23], 0 offen
	buffer_store_b32 v89, v100, s[20:23], 0 offen
	buffer_store_b32 v88, v101, s[20:23], 0 offen
	buffer_store_b32 v87, v102, s[20:23], 0 offen
	buffer_store_b32 v86, v103, s[20:23], 0 offen
	buffer_store_b32 v85, v104, s[20:23], 0 offen
	buffer_store_b32 v84, v105, s[20:23], 0 offen
	buffer_store_b32 v83, v106, s[20:23], 0 offen
	buffer_store_b32 v43, v42, s[20:23], 0 offen
	buffer_store_b32 v81, v61, s[20:23], 0 offen
	buffer_store_b32 v80, v107, s[20:23], 0 offen
	buffer_store_b32 v79, v108, s[20:23], 0 offen
	buffer_store_b32 v78, v109, s[20:23], 0 offen
	buffer_store_b32 v77, v110, s[20:23], 0 offen
	buffer_store_b32 v76, v111, s[20:23], 0 offen
	buffer_store_b32 v75, v112, s[20:23], 0 offen
	buffer_store_b32 v74, v113, s[20:23], 0 offen
	buffer_store_b32 v73, v114, s[20:23], 0 offen
	buffer_store_b32 v72, v115, s[20:23], 0 offen
	buffer_store_b32 v71, v116, s[20:23], 0 offen
	buffer_store_b32 v70, v117, s[20:23], 0 offen
	buffer_store_b32 v69, v118, s[20:23], 0 offen
	buffer_store_b32 v68, v119, s[20:23], 0 offen
	buffer_store_b32 v67, v120, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v136, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s18
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v33, v33, v18 :: v_dual_mul_f32 v126, v128, v27
	v_mul_f32_e32 v121, v123, v12
	v_mul_f32_e32 v9, v9, v12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v12, 0x80000000, v137, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s17
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v31, v31, v20 :: v_dual_mul_f32 v16, v16, v19
	v_dual_mul_f32 v123, v125, v14 :: v_dual_mul_f32 v10, v10, v25
	v_dual_mul_f32 v125, v127, v26 :: v_dual_mul_f32 v8, v8, v13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v13, 0x80000000, v138, s1
	s_clause 0x1
	buffer_store_b32 v44, v50, s[20:23], 0 offen
	buffer_store_b32 v33, v1, s[20:23], 0 offen
	v_add_lshl_u32 v1, v60, v56, 2
	s_clause 0x1
	buffer_store_b32 v32, v12, s[20:23], 0 offen
	buffer_store_b32 v31, v13, s[20:23], 0 offen
	v_add_lshl_u32 v12, v60, v55, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v13, v60, v54, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s15
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v7, v7, v14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v14, v60, v53, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v30, v1, s[20:23], 0 offen
	buffer_store_b32 v66, v12, s[20:23], 0 offen
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v60, v52, 2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v12, v60, v41, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v82, v13, s[20:23], 0 offen
	buffer_store_b32 v96, v14, s[20:23], 0 offen
	v_add_lshl_u32 v13, v60, v40, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v14, v60, v39, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s10
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v17, v17, v18 :: v_dual_mul_f32 v2, v2, v29
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s9
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v18, v47, v20
	v_mul_f32_e32 v20, v130, v22
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	s_clause 0x1
	buffer_store_b32 v99, v1, s[20:23], 0 offen
	buffer_store_b32 v121, v12, s[20:23], 0 offen
	v_add_lshl_u32 v1, v60, v38, 2
	v_add_lshl_u32 v12, v60, v37, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v122, v13, s[20:23], 0 offen
	buffer_store_b32 v123, v14, s[20:23], 0 offen
	v_add_lshl_u32 v13, v60, v36, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v14, v60, v35, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s6
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v127, v129, v28 :: v_dual_mul_f32 v6, v6, v15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v124, v1, s[20:23], 0 offen
	buffer_store_b32 v125, v12, s[20:23], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v1, v60, v34, 2
	v_add_lshl_u32 v12, v0, v48, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s0, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v126, v13, s[20:23], 0 offen
	buffer_store_b32 v127, v14, s[20:23], 0 offen
	v_add_lshl_u32 v13, v0, v58, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v45, v45, v29 :: v_dual_mul_f32 v4, v4, v27
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v14, v0, v57, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v45, v1, s[20:23], 0 offen
	buffer_store_b32 v17, v12, s[20:23], 0 offen
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v0, v56, 2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	v_add_lshl_u32 v12, v0, v55, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v16, v13, s[20:23], 0 offen
	buffer_store_b32 v18, v14, s[20:23], 0 offen
	v_add_lshl_u32 v13, v0, v54, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v14, v0, v53, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v19, v49, v21
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v21, v131, v23
	v_mul_f32_e32 v11, v11, v24
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	s_clause 0x1
	buffer_store_b32 v19, v1, s[20:23], 0 offen
	buffer_store_b32 v20, v12, s[20:23], 0 offen
	v_add_lshl_u32 v1, v0, v52, 2
	s_clause 0x1
	buffer_store_b32 v21, v13, s[20:23], 0 offen
	buffer_store_b32 v11, v14, s[20:23], 0 offen
	v_add_lshl_u32 v11, v0, v41, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v12, v0, v40, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v13, v0, v39, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v10, v1, s[20:23], 0 offen
	buffer_store_b32 v9, v11, s[20:23], 0 offen
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v0, v38, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	s_clause 0x1
	buffer_store_b32 v8, v12, s[20:23], 0 offen
	buffer_store_b32 v7, v13, s[20:23], 0 offen
	v_add_lshl_u32 v7, v0, v37, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v8, v0, v36, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v9, v0, v35, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_add_lshl_u32 v0, v0, v34, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s6
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v5, v5, v26
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s5
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v3, v3, v28
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v6, v1, s[20:23], 0 offen
	buffer_store_b32 v5, v7, s[20:23], 0 offen
	buffer_store_b32 v4, v8, s[20:23], 0 offen
	buffer_store_b32 v3, v9, s[20:23], 0 offen
	buffer_store_b32 v2, v0, s[20:23], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 44
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 31
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 44
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10152
; TotalNumSgprs: 33
; NumVgprs: 256
; ScratchSize: 44
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 33
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 44
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 10
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
