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
	v_lshlrev_b32_e32 v97, 1, v0
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
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
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
	s_lshl_b32 s22, s3, 5
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s2, s2, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s4, s2, 31
	s_add_i32 s3, s2, s4
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s19, v65
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s23, s3, 1
	s_mov_b32 s3, 0
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cmp_lt_i32 s22, s23
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_lshl_b32 s4, s19, 4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v1, s4 :: v_dual_lshlrev_b32 v34, 1, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[20:21], s[0:1], 0x28
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v95, 15, v0
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v96, 0xe0, v0
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
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v99, 0
	v_mov_b32_e32 v98, 0
	v_mov_b32_e32 v100, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_lshl_b32 s3, s8, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_and_b32_e32 v1, 63, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_lshrrev_b32_e32 v2, 3, v0
	v_lshrrev_b32_e32 v3, 1, v0
	v_lshrrev_b32_e32 v9, 2, v0
	s_clause 0x1
	s_load_b32 s8, s[0:1], 0x38
	s_load_b128 s[12:15], s[0:1], 0x0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v4, s3, v1
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v2, 24, v2
	v_xor_b32_e32 v3, v97, v3
	v_lshl_add_u32 v7, v1, 5, 0
	v_xor_b32_e32 v9, v97, v9
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s18, v4
	v_mul_lo_u32 v4, s18, v2
	s_lshl_b32 s24, s19, 4
	v_lshl_add_u32 v121, s19, 1, v65
	v_lshl_add_u32 v122, s19, 2, v65
	v_lshl_add_u32 v123, s19, 3, v65
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_lshl_b32 s0, s18, 1
	.loc	1 1324 23                       ; ragged.py:1324:23
	v_add3_u32 v66, v1, v4, s3
	v_mov_b32_e32 v1, 0
	v_and_b32_e32 v3, 24, v3
	v_lshlrev_b32_e32 v5, 5, v95
	v_lshlrev_b32_e32 v17, 4, v96
	v_mad_u64_u32 v[67:68], null, s19, 3, v[65:66]
	v_mad_u64_u32 v[68:69], null, s19, 5, v[65:66]
	v_mad_u64_u32 v[69:70], null, s19, 6, v[65:66]
	v_mov_b32_e32 v4, v1
	v_xor_b32_e32 v2, v3, v2
	v_mad_u64_u32 v[70:71], null, s19, 7, v[65:66]
	v_mad_u64_u32 v[71:72], null, s19, 9, v[65:66]
	v_mad_u64_u32 v[72:73], null, s19, 10, v[65:66]
	v_mad_u64_u32 v[73:74], null, s19, 11, v[65:66]
	v_mad_u64_u32 v[74:75], null, s19, 12, v[65:66]
	v_add_nc_u32_e32 v98, v7, v2
	v_mov_b32_e32 v2, v1
	v_and_or_b32 v6, v97, 24, v5
	v_mad_u64_u32 v[75:76], null, s19, 13, v[65:66]
	v_mad_u64_u32 v[76:77], null, s19, 14, v[65:66]
	v_mad_u64_u32 v[77:78], null, s19, 15, v[65:66]
	v_mad_u64_u32 v[78:79], null, s19, 17, v[65:66]
	v_mad_u64_u32 v[79:80], null, s19, 18, v[65:66]
	v_xor_b32_e32 v8, 8, v6
	v_and_b32_e32 v9, 24, v9
	v_mad_u64_u32 v[80:81], null, s19, 19, v[65:66]
	v_mad_u64_u32 v[81:82], null, s19, 20, v[65:66]
	v_mad_u64_u32 v[82:83], null, s19, 21, v[65:66]
	v_mad_u64_u32 v[83:84], null, s19, 22, v[65:66]
	v_mad_u64_u32 v[84:85], null, s19, 23, v[65:66]
	v_lshl_or_b32 v3, v0, 5, v3
	v_add_nc_u32_e32 v100, 0, v8
	v_mov_b32_e32 v8, v1
	v_or3_b32 v5, v9, v17, v5
	v_mad_u64_u32 v[85:86], null, s19, 24, v[65:66]
	v_mad_u64_u32 v[86:87], null, s19, 25, v[65:66]
	v_mad_u64_u32 v[87:88], null, s19, 26, v[65:66]
	v_mad_u64_u32 v[88:89], null, s19, 27, v[65:66]
	v_mad_u64_u32 v[89:90], null, s19, 28, v[65:66]
	v_xor_b32_e32 v10, 16, v6
	v_xor_b32_e32 v11, 24, v6
	v_xor_b32_e32 v12, 0x208, v6
	v_xor_b32_e32 v13, 0x218, v6
	v_xor_b32_e32 v14, 0x210, v6
	v_xor_b32_e32 v15, 0x410, v6
	v_xor_b32_e32 v16, 0x418, v6
	v_xor_b32_e32 v18, 0x408, v6
	v_xor_b32_e32 v19, 0x618, v6
	v_xor_b32_e32 v20, 0x610, v6
	v_xor_b32_e32 v9, 0x608, v6
	v_xor_b32_e32 v17, 8, v3
	v_xor_b32_e32 v21, 16, v3
	v_xor_b32_e32 v22, 24, v3
	v_xor_b32_e32 v23, 8, v5
	v_xor_b32_e32 v24, 16, v5
	v_xor_b32_e32 v25, 24, v5
	v_mad_u64_u32 v[90:91], null, s19, 29, v[65:66]
	v_mad_u64_u32 v[91:92], null, s19, 30, v[65:66]
	v_mad_u64_u32 v[92:93], null, s19, 31, v[65:66]
	v_add_nc_u32_e32 v99, 0, v6
	v_add_nc_u32_e32 v101, 0, v10
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v102, 0, v11
	v_add_nc_u32_e32 v103, 0, v12
	v_add_nc_u32_e32 v104, 0, v13
	v_add_nc_u32_e32 v105, 0, v14
	v_dual_mov_b32 v11, v1 :: v_dual_add_nc_u32 v106, 0, v15
	v_add_nc_u32_e32 v107, 0, v16
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v108, 0, v18
	v_add_nc_u32_e32 v109, 0, v19
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v110, 0, v20
	v_add_nc_u32_e32 v111, 0, v9
	v_add_nc_u32_e32 v112, 0, v3
	v_add_nc_u32_e32 v113, 0, v17
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v114, 0, v21
	v_dual_mov_b32 v26, v1 :: v_dual_add_nc_u32 v115, 0, v22
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v116, 0, v5
	v_dual_mov_b32 v28, v1 :: v_dual_add_nc_u32 v117, 0, v23
	v_dual_mov_b32 v23, v1 :: v_dual_add_nc_u32 v118, 0, v24
	v_dual_mov_b32 v30, v1 :: v_dual_add_nc_u32 v119, 0, v25
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v24, v1
	v_dual_mov_b32 v25, v1 :: v_dual_add_nc_u32 v120, s19, v65
	v_dual_mov_b32 v27, v1 :: v_dual_add_nc_u32 v124, s24, v65
	v_mov_b32_e32 v29, v1
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
	s_and_b32 s15, s15, 0xffff
	s_mul_i32 s1, s18, 3
	s_lshl_b32 s25, s18, 2
	s_mul_i32 s26, s18, 5
	s_mul_i32 s27, s18, 6
	s_mul_i32 s28, s18, 7
	.loc	1 1327 39                       ; ragged.py:1327:39
	s_mul_i32 s29, s16, s8
	s_mov_b32 s8, s12
	s_mov_b32 s9, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1334 42                       ; ragged.py:1334:42
	s_add_i32 s31, s22, s29
	.loc	1 1346 21                       ; ragged.py:1346:21
	s_add_i32 s22, s22, 32
	.loc	1 1335 42                       ; ragged.py:1335:42
	s_mul_i32 s30, s31, s19
	v_mad_u64_u32 v[93:94], null, s31, s18, v[66:67]
	v_add_nc_u32_e32 v126, s30, v70
	v_add_nc_u32_e32 v125, s30, v68
	v_add_nc_u32_e32 v127, s30, v69
	v_add_nc_u32_e32 v94, s30, v122
	v_add_nc_u32_e32 v128, s30, v67
	.loc	1 1335 34 is_stmt 0             ; ragged.py:1335:34
	v_cndmask_b32_e64 v126, 0x80000000, v126, s2
	v_cndmask_b32_e64 v125, 0x80000000, v125, s2
	v_cndmask_b32_e64 v127, 0x80000000, v127, s2
	v_cndmask_b32_e64 v94, 0x80000000, v94, s2
	v_cndmask_b32_e64 v128, 0x80000000, v128, s2
	s_clause 0x4
	buffer_load_u8 v126, v126, s[12:15], 0 offen
	buffer_load_u8 v125, v125, s[12:15], 0 offen
	buffer_load_u8 v127, v127, s[12:15], 0 offen
	buffer_load_u8 v133, v94, s[12:15], 0 offen
	buffer_load_u8 v128, v128, s[12:15], 0 offen
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v129, s30, v121
	v_add_nc_u32_e32 v130, s30, v120
	v_add_nc_u32_e32 v131, s30, v65
	v_add_nc_u32_e32 v136, s30, v77
	v_add_nc_u32_e32 v135, s30, v75
	v_add_nc_u32_e32 v137, s30, v76
	v_add_nc_u32_e32 v132, s30, v74
	v_add_nc_u32_e32 v138, s30, v73
	v_add_nc_u32_e32 v139, s30, v72
	v_add_nc_u32_e32 v140, s30, v71
	v_add_nc_u32_e32 v141, s30, v92
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v132, 0x80000000, v132, s2
	.loc	1 1324 23 is_stmt 1             ; ragged.py:1324:23
	s_cmp_lt_i32 s22, s23
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v94.l, 8, v126.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v94.h, 8, v125.l
	.loc	1 1335 42 is_stmt 0             ; ragged.py:1335:42
	v_add_nc_u32_e32 v125, s30, v123
	v_add_nc_u32_e32 v126, s30, v81
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt vmcnt(2)
	v_or_b16 v134.h, v127.l, v94.l
	s_waitcnt vmcnt(1)
	v_or_b16 v134.l, v133.l, v94.h
	v_cndmask_b32_e64 v94, 0x80000000, v129, s2
	v_cndmask_b32_e64 v127, 0x80000000, v130, s2
	v_cndmask_b32_e64 v126, 0x80000000, v126, s2
	s_clause 0x1
	buffer_load_u8 v129, v94, s[12:15], 0 offen
	buffer_load_u8 v127, v127, s[12:15], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v94.l, 8, v128.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v128, s30, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v128, 0x80000000, v128, s2
	s_waitcnt vmcnt(1)
	v_or_b16 v133.h, v129.l, v94.l
	v_cndmask_b32_e64 v94, 0x80000000, v131, s2
	v_cndmask_b32_e64 v131, 0x80000000, v135, s2
	v_cndmask_b32_e64 v135, 0x80000000, v137, s2
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v129, s30, v84
	.loc	1 1335 34                       ; ragged.py:1335:34
	buffer_load_u8 v130, v94, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v94.l, 8, v127.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v127, s30, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v127, 0x80000000, v127, s2
	s_waitcnt vmcnt(0)
	v_or_b16 v133.l, v130.l, v94.l
	v_cndmask_b32_e64 v94, 0x80000000, v136, s2
	v_cndmask_b32_e64 v136, 0x80000000, v138, s2
	s_clause 0x4
	buffer_load_u8 v94, v94, s[12:15], 0 offen
	buffer_load_u8 v131, v131, s[12:15], 0 offen
	buffer_load_u8 v135, v135, s[12:15], 0 offen
	buffer_load_u8 v132, v132, s[12:15], 0 offen
	buffer_load_u8 v137, v136, s[12:15], 0 offen
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v130, s30, v80
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v94.l, 8, v94.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v94.h, 8, v131.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v131, s30, v79
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt vmcnt(2)
	v_or_b16 v136.h, v135.l, v94.l
	s_waitcnt vmcnt(1)
	v_or_b16 v136.l, v132.l, v94.h
	v_cndmask_b32_e64 v94, 0x80000000, v139, s2
	v_cndmask_b32_e64 v135, 0x80000000, v140, s2
	s_clause 0x1
	buffer_load_u8 v138, v94, s[12:15], 0 offen
	buffer_load_u8 v135, v135, s[12:15], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v94.l, 8, v137.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v132, s30, v78
	v_add_nc_u32_e32 v139, s30, v124
	v_add_nc_u32_e32 v140, s30, v89
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt vmcnt(0)
	v_or_b16 v135.h, v138.l, v94.l
	v_cndmask_b32_e64 v94, 0x80000000, v125, s2
	buffer_load_u8 v125, v94, s[12:15], 0 offen
	v_lshlrev_b16 v94.l, 8, v135.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v135.l, v125.l, v94.l
	v_cndmask_b32_e64 v94, 0x80000000, v129, s2
	v_cndmask_b32_e64 v129, 0x80000000, v130, s2
	s_clause 0x4
	buffer_load_u8 v94, v94, s[12:15], 0 offen
	buffer_load_u8 v128, v128, s[12:15], 0 offen
	buffer_load_u8 v127, v127, s[12:15], 0 offen
	buffer_load_u8 v126, v126, s[12:15], 0 offen
	buffer_load_u8 v129, v129, s[12:15], 0 offen
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v125, s30, v90
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v125, 0x80000000, v125, s2
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v94.l, 8, v94.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v94.h, 8, v128.l
	v_cndmask_b32_e64 v128, 0x80000000, v132, s2
	s_waitcnt vmcnt(2)
	v_or_b16 v138.h, v127.l, v94.l
	s_waitcnt vmcnt(1)
	v_or_b16 v138.l, v126.l, v94.h
	v_cndmask_b32_e64 v94, 0x80000000, v131, s2
	s_clause 0x1
	buffer_load_u8 v130, v94, s[12:15], 0 offen
	buffer_load_u8 v128, v128, s[12:15], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v94.l, 8, v129.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v126, s30, v91
	v_add_nc_u32_e32 v127, s30, v88
	v_add_nc_u32_e32 v129, s30, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v126, 0x80000000, v126, s2
	v_cndmask_b32_e64 v127, 0x80000000, v127, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v129, 0x80000000, v129, s2
	s_waitcnt vmcnt(1)
	v_or_b16 v137.h, v130.l, v94.l
	v_cndmask_b32_e64 v94, 0x80000000, v139, s2
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v130, s30, v86
	.loc	1 1335 34                       ; ragged.py:1335:34
	buffer_load_u8 v131, v94, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v94.l, 8, v128.l
	v_cndmask_b32_e64 v128, 0x80000000, v140, s2
	v_cndmask_b32_e64 v130, 0x80000000, v130, s2
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_or_b16 v137.l, v131.l, v94.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v94, s30, v85
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v131, 0x80000000, v141, s2
	v_add_nc_u32_e32 v141, s25, v93
	v_cndmask_b32_e64 v132, 0x80000000, v94, s2
	s_clause 0x4
	buffer_load_u8 v94, v131, s[12:15], 0 offen
	buffer_load_u8 v125, v125, s[12:15], 0 offen
	buffer_load_u8 v126, v126, s[12:15], 0 offen
	buffer_load_u8 v128, v128, s[12:15], 0 offen
	buffer_load_u8 v127, v127, s[12:15], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v94.l, 8, v94.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v94.h, 8, v125.l
	v_add_nc_u32_e32 v125, s26, v93
	s_waitcnt vmcnt(2)
	v_or_b16 v140.h, v126.l, v94.l
	s_waitcnt vmcnt(1)
	v_or_b16 v140.l, v128.l, v94.h
	s_clause 0x2
	buffer_load_u8 v128, v129, s[12:15], 0 offen
	buffer_load_u8 v129, v130, s[12:15], 0 offen
	buffer_load_u8 v130, v132, s[12:15], 0 offen
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v94.l, 8, v127.l
	v_add_nc_u32_e32 v126, s28, v93
	v_add_nc_u32_e32 v127, s27, v93
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1334 34 is_stmt 1             ; ragged.py:1334:34
	v_dual_cndmask_b32 v126, 0x80000000, v126 :: v_dual_cndmask_b32 v127, 0x80000000, v127
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt vmcnt(2)
	v_or_b16 v139.h, v128.l, v94.l
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v94.l, 8, v129.l
	v_add_nc_u32_e32 v128, s1, v93
	v_add_nc_u32_e32 v129, s18, v93
	.loc	1 1334 34                       ; ragged.py:1334:34
	v_cndmask_b32_e32 v125, 0x80000000, v125, vcc_lo
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt vmcnt(0)
	v_or_b16 v139.l, v130.l, v94.l
	v_add_nc_u32_e32 v94, s0, v93
	.loc	1 1334 34                       ; ragged.py:1334:34
	v_dual_cndmask_b32 v93, 0x80000000, v93 :: v_dual_cndmask_b32 v128, 0x80000000, v128
	v_cndmask_b32_e32 v129, 0x80000000, v129, vcc_lo
	v_cndmask_b32_e32 v130, 0x80000000, v141, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v94, 0x80000000, v94, vcc_lo
	s_clause 0x7
	buffer_load_u8 v126, v126, s[8:11], 0 offen
	buffer_load_u8 v125, v125, s[8:11], 0 offen
	buffer_load_u8 v128, v128, s[8:11], 0 offen
	buffer_load_u8 v129, v129, s[8:11], 0 offen
	buffer_load_u8 v127, v127, s[8:11], 0 offen
	buffer_load_u8 v130, v130, s[8:11], 0 offen
	buffer_load_u8 v131, v94, s[8:11], 0 offen
	buffer_load_u8 v132, v93, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	v_lshlrev_b16 v93.l, 8, v126.l
	s_waitcnt vmcnt(6)
	v_lshlrev_b16 v93.h, 8, v125.l
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v94.l, 8, v128.l
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v94.h, 8, v129.l
	s_waitcnt vmcnt(3)
	v_or_b16 v126.h, v127.l, v93.l
	s_waitcnt vmcnt(2)
	v_or_b16 v126.l, v130.l, v93.h
	s_waitcnt vmcnt(1)
	v_or_b16 v125.h, v131.l, v94.l
	s_waitcnt vmcnt(0)
	v_or_b16 v125.l, v132.l, v94.h
	ds_store_b64 v98, v[125:126]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[93:94], v100
	ds_load_b64 v[141:142], v101
	ds_load_b64 v[143:144], v102
	ds_load_b64 v[145:146], v103
	ds_load_b64 v[147:148], v104
	ds_load_b64 v[149:150], v105
	ds_load_b64 v[151:152], v106
	ds_load_b64 v[153:154], v107
	ds_load_b64 v[155:156], v108
	ds_load_b64 v[157:158], v109
	ds_load_b64 v[159:160], v110
	ds_load_b64 v[161:162], v111
	ds_load_2addr_stride64_b64 v[125:128], v99 offset1:1
	ds_load_2addr_stride64_b64 v[129:132], v99 offset0:2 offset1:3
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v112, v[133:134]
	ds_store_b64 v113, v[135:136]
	ds_store_b64 v114, v[137:138]
	ds_store_b64 v115, v[139:140]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[133:136], v116 offset1:8
	.loc	1 1336 31                       ; ragged.py:1336:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[133:134], v[145:146], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[135:136], v[145:146], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[133:134], v[151:152], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[135:136], v[151:152], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[133:134], v[157:158], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[135:136], v[157:158], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[133:134], v[125:126], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[125:126], v[9:16] neg_lo:[1,1,0]
	.loc	1 1335 34                       ; ragged.py:1335:34
	ds_load_2addr_stride64_b64 v[133:136], v117 offset1:8
	.loc	1 1336 31                       ; ragged.py:1336:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[133:134], v[127:128], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[135:136], v[127:128], v[25:32] neg_lo:[1,1,0]
	.loc	1 1335 34                       ; ragged.py:1335:34
	ds_load_2addr_stride64_b64 v[125:128], v118 offset1:8
	.loc	1 1336 31                       ; ragged.py:1336:31
	v_wmma_i32_16x16x16_iu4 v[1:8], v[133:134], v[93:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[93:94], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[133:134], v[153:154], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[135:136], v[153:154], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[133:134], v[159:160], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[135:136], v[159:160], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[125:126], v[141:142], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[141:142], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[147:148], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[147:148], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[125:126], v[161:162], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[127:128], v[161:162], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[129:130], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[127:128], v[129:130], v[41:48] neg_lo:[1,1,0]
	.loc	1 1335 34                       ; ragged.py:1335:34
	ds_load_2addr_stride64_b64 v[125:128], v119 offset1:8
	.loc	1 1336 31                       ; ragged.py:1336:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[125:126], v[131:132], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[127:128], v[131:132], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[125:126], v[143:144], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[143:144], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[149:150], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[149:150], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[155:156], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[127:128], v[155:156], v[41:48] neg_lo:[1,1,0]
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v100, v1
	v_cvt_f32_i32_e32 v99, v2
	v_cvt_f32_i32_e32 v98, v3
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
	v_cvt_f32_i32_e32 v71, v27
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
	v_cvt_f32_i32_e32 v27, v39
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
	v_dual_mov_b32 v1, s24 :: v_dual_mov_b32 v34, v97
.LBB0_7:                                ; %._crit_edge
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v35, s3, v95
	.loc	1 1404 33                       ; ragged.py:1404:33
	s_mul_i32 s0, s16, s18
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s5, 0xffff
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s12, s3, s0
	s_mov_b32 s11, 0x31027000
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v38, 16, v35
	.loc	1 1404 21                       ; ragged.py:1404:21
	v_add_lshl_u32 v39, s12, v95, 1
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v37, 32, v35
	v_or_b32_e32 v36, 48, v35
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s3, s18, v35
	v_cmp_gt_i32_e64 s1, s18, v38
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v40, 32, v39
	v_add_nc_u32_e32 v41, 64, v39
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s18, v37
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v35, 0x80000000, v39, s3
	v_add_nc_u32_e32 v39, 0x60, v39
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s18, v36
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v38, 0x80000000, v40, s1
	v_cndmask_b32_e64 v37, 0x80000000, v41, s0
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s4
	v_cndmask_b32_e32 v36, 0x80000000, v39, vcc_lo
	s_clause 0x3
	buffer_load_u16 v43, v35, s[8:11], 0 offen
	buffer_load_u16 v44, v38, s[8:11], 0 offen
	buffer_load_u16 v45, v37, s[8:11], 0 offen
	buffer_load_u16 v46, v36, s[8:11], 0 offen
	.loc	1 1411 33                       ; ragged.py:1411:33
	s_mul_i32 s4, s16, s19
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_and_b32 s9, s7, 0xffff
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s4, s17, s4
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_mov_b32 s8, s6
	v_add_lshl_u32 v35, s4, v0, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v48, 28, v34
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v34, s19, v95
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v37, 0xf0, v0
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s12, s12, s19
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v36, 1, v96
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_mov_b32 s22, s10
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v50, v37, 2, 0
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_mov_b32 s23, s11
	.loc	1 1410 36                       ; ragged.py:1410:36
	buffer_load_u16 v47, v35, s[8:11], 0 offen
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v35, 4, v0
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshlrev_b32_e32 v0, 5, v0
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v42, s12, s17, v34
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_or_b32 v49, v35, 1, v36
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v0, 32, v0
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v60, s19, 5, v42
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	s_and_b32 s21, s21, 0xffff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_or_b32_e32 v58, 2, v49
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_add3_u32 v48, v50, v0, v48
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add_nc_u32_e32 v50, v42, v1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v34, 0x8e, v49
	v_or_b32_e32 v35, 0x8c, v49
	v_or_b32_e32 v36, 0x8a, v49
	v_or_b32_e32 v38, 0x86, v49
	v_or_b32_e32 v39, 0x84, v49
	v_or_b32_e32 v40, 0x82, v49
	v_or_b32_e32 v41, 0x80, v49
	v_or_b32_e32 v52, 14, v49
	v_or_b32_e32 v53, 12, v49
	v_or_b32_e32 v54, 10, v49
	v_or_b32_e32 v55, 8, v49
	v_or_b32_e32 v56, 6, v49
	v_or_b32_e32 v57, 4, v49
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v59, s17, v49
	v_or_b32_e32 v107, s17, v58
	v_or_b32_e32 v61, s17, v34
	v_or_b32_e32 v62, s17, v35
	v_or_b32_e32 v63, s17, v36
	v_or_b32_e32 v65, s17, v38
	v_or_b32_e32 v95, s17, v39
	v_or_b32_e32 v96, s17, v40
	v_or_b32_e32 v97, s17, v41
	v_or_b32_e32 v101, s17, v52
	v_or_b32_e32 v102, s17, v53
	v_or_b32_e32 v103, s17, v54
	v_or_b32_e32 v104, s17, v55
	v_or_b32_e32 v105, s17, v56
	v_or_b32_e32 v106, s17, v57
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s19, v59
	v_cmp_gt_i32_e64 s18, s19, v107
	v_cmp_gt_i32_e64 s4, s19, v61
	v_cmp_gt_i32_e64 s5, s19, v62
	v_cmp_gt_i32_e64 s6, s19, v63
	v_cmp_gt_i32_e64 s8, s19, v65
	v_cmp_gt_i32_e64 s9, s19, v95
	v_cmp_gt_i32_e64 s10, s19, v96
	v_cmp_gt_i32_e64 s11, s19, v97
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
	v_add_lshl_u32 v119, v42, v36, 2
	v_add_lshl_u32 v120, v42, v35, 2
	v_add_lshl_u32 v136, v60, v49, 2
	v_add_lshl_u32 v137, v60, v58, 2
	v_add_lshl_u32 v138, v60, v57, 2
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	s_waitcnt vmcnt(4)
	v_mad_u64_u32 v[0:1], null, s19, 48, v[42:43]
	.loc	1 1403 36 is_stmt 1             ; ragged.py:1403:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v44, 16, v44
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v42, v49, 2
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v76, v76, v44 :: v_dual_lshlrev_b32 v45, 16, v45
	v_mul_f32_e32 v100, v100, v43
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v51, v37, 1, 0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v37, 0x88, v49
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v89, v89, v43
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v121, v50, v49, 2
	v_add_lshl_u32 v122, v50, v58, 2
	v_add_lshl_u32 v123, v50, v57, 2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v64, s17, v37
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s17, s19, v106
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v118, v42, v37, 2
	v_add_lshl_u32 v42, v42, v34, 2
	v_add_lshl_u32 v124, v50, v56, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s7, s19, v64
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v125, v50, v55, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s1, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v126, v50, v54, 2
	v_cndmask_b32_e64 v61, 0x80000000, v121, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v127, v50, v53, 2
	v_cndmask_b32_e64 v59, 0x80000000, v59, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v128, v50, v52, 2
	v_cndmask_b32_e64 v62, 0x80000000, v108, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v129, v50, v41, 2
	v_cndmask_b32_e64 v63, 0x80000000, v109, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s15
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v87, v87, v43
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v64, 0x80000000, v110, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s14
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v70, v70, v44 :: v_dual_lshlrev_b32 v47, 16, v47
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v65, 0x80000000, v111, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v130, v50, v40, 2
	v_cndmask_b32_e64 v95, 0x80000000, v112, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v131, v50, v39, 2
	v_cndmask_b32_e64 v96, 0x80000000, v113, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s11
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v85, v85, v43 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v97, 0x80000000, v114, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s10
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v99, v99, v43
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v101, 0x80000000, v115, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s9
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v98, v98, v43 :: v_dual_mul_f32 v79, v79, v44
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v102, 0x80000000, v116, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s8
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v94, v94, v43 :: v_dual_mul_f32 v77, v77, v44
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v103, 0x80000000, v117, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s7
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v93, v93, v43
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v104, 0x80000000, v118, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s6
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v92, v92, v43 :: v_dual_mul_f32 v75, v75, v44
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v105, 0x80000000, v119, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s5
	s_and_b32 s3, s3, s4
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v91, v91, v43
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s18
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v90, v90, v43 :: v_dual_mul_f32 v73, v73, v44
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v107, 0x80000000, v122, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s17
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v88, v88, v43 :: v_dual_mul_f32 v71, v71, v44
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v108, 0x80000000, v123, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s16
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v86, v86, v43 :: v_dual_mul_f32 v69, v69, v44
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v109, 0x80000000, v124, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s15
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v84, v84, v43 :: v_dual_mul_f32 v67, v67, v44
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v110, 0x80000000, v125, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s14
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v83, v83, v43 :: v_dual_mul_f32 v74, v74, v44
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v111, 0x80000000, v126, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s13
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v43, v82, v43 :: v_dual_mul_f32 v72, v72, v44
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v112, 0x80000000, v127, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s12
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v81, v81, v44
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v113, 0x80000000, v128, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s11
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v80, v80, v44
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v114, 0x80000000, v129, s3
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v78, v78, v44
	v_dual_mul_f32 v68, v68, v44 :: v_dual_mul_f32 v33, v33, v45
	v_dual_mul_f32 v44, v66, v44 :: v_dual_mul_f32 v31, v31, v45
	v_dual_mul_f32 v32, v32, v45 :: v_dual_mul_f32 v17, v17, v46
	v_mul_f32_e32 v30, v30, v45
	v_mul_f32_e32 v66, v29, v45
	v_dual_mul_f32 v82, v28, v45 :: v_dual_mul_f32 v11, v11, v46
	v_dual_mul_f32 v121, v27, v45 :: v_dual_mul_f32 v16, v16, v46
	v_dual_mul_f32 v122, v26, v45 :: v_dual_mul_f32 v9, v9, v46
	v_mul_f32_e32 v123, v25, v45
	v_dual_mul_f32 v124, v24, v45 :: v_dual_mul_f32 v7, v7, v46
	v_mul_f32_e32 v125, v23, v45
	v_dual_mul_f32 v126, v22, v45 :: v_dual_mul_f32 v5, v5, v46
	v_dual_mul_f32 v127, v21, v45 :: v_dual_mul_f32 v10, v10, v46
	v_dual_mul_f32 v128, v20, v45 :: v_dual_mul_f32 v3, v3, v46
	v_dual_mul_f32 v129, v19, v45 :: v_dual_mul_f32 v8, v8, v46
	v_dual_mul_f32 v45, v18, v45 :: v_dual_mul_f32 v4, v4, v46
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_store_b32 v48, v47
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
	v_mul_f32_e32 v48, v14, v46
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
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v6, v6, v46 :: v_dual_mul_f32 v51, v99, v19
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v2, v2, v46 :: v_dual_mul_f32 v91, v91, v24
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v46, v100, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v119, 0x80000000, v134, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s5
	s_and_b32 s1, s1, s4
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v98, v98, v20 :: v_dual_mul_f32 v93, v93, v22
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v50, 0x80000000, v50, s1
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v94, v94, v21 :: v_dual_mul_f32 v87, v87, v14
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v106, 0x80000000, v120, s19
	v_cndmask_b32_e64 v120, 0x80000000, v135, s3
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v92, v92, v23 :: v_dual_mul_f32 v85, v85, v26
	v_dual_mul_f32 v90, v90, v25 :: v_dual_mul_f32 v83, v83, v28
	v_dual_mul_f32 v89, v89, v12 :: v_dual_mul_f32 v88, v88, v13
	v_dual_mul_f32 v81, v81, v18 :: v_dual_mul_f32 v86, v86, v15
	v_dual_mul_f32 v43, v43, v29 :: v_dual_mul_f32 v84, v84, v27
	v_dual_mul_f32 v79, v79, v20 :: v_dual_mul_f32 v80, v80, v19
	v_dual_mul_f32 v77, v77, v22 :: v_dual_mul_f32 v78, v78, v21
	v_dual_mul_f32 v75, v75, v24 :: v_dual_mul_f32 v76, v76, v23
	v_dual_mul_f32 v73, v73, v12 :: v_dual_mul_f32 v74, v74, v25
	v_dual_mul_f32 v71, v71, v14 :: v_dual_mul_f32 v72, v72, v13
	v_dual_mul_f32 v69, v69, v26 :: v_dual_mul_f32 v70, v70, v15
	v_dual_mul_f32 v67, v67, v28 :: v_dual_mul_f32 v68, v68, v27
	v_mul_f32_e32 v33, v33, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1e
	buffer_store_b32 v46, v1, s[20:23], 0 offen
	buffer_store_b32 v51, v59, s[20:23], 0 offen
	buffer_store_b32 v98, v62, s[20:23], 0 offen
	buffer_store_b32 v94, v63, s[20:23], 0 offen
	buffer_store_b32 v93, v64, s[20:23], 0 offen
	buffer_store_b32 v92, v65, s[20:23], 0 offen
	buffer_store_b32 v91, v95, s[20:23], 0 offen
	buffer_store_b32 v90, v96, s[20:23], 0 offen
	buffer_store_b32 v89, v97, s[20:23], 0 offen
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
	v_dual_mul_f32 v44, v44, v29 :: v_dual_mul_f32 v31, v31, v20
	v_dual_mul_f32 v32, v32, v19 :: v_dual_mul_f32 v99, v121, v24
	v_dual_mul_f32 v30, v30, v21 :: v_dual_mul_f32 v121, v123, v12
	v_dual_mul_f32 v16, v16, v19 :: v_dual_mul_f32 v9, v9, v12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v12, 0x80000000, v137, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s17
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v100, v122, v25
	v_dual_mul_f32 v122, v124, v13 :: v_dual_mul_f32 v17, v17, v18
	v_dual_mul_f32 v8, v8, v13 :: v_dual_mul_f32 v5, v5, v26
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
	v_dual_mul_f32 v82, v82, v23 :: v_dual_mul_f32 v123, v125, v14
	v_dual_mul_f32 v10, v10, v25 :: v_dual_mul_f32 v7, v7, v14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v14, v60, v53, 2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v66, v66, v22
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s14
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v125, v127, v26
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s13
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v127, v129, v28
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	s_clause 0x1
	buffer_store_b32 v30, v1, s[20:23], 0 offen
	buffer_store_b32 v66, v12, s[20:23], 0 offen
	v_add_lshl_u32 v1, v60, v52, 2
	v_add_lshl_u32 v12, v60, v41, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v82, v13, s[20:23], 0 offen
	buffer_store_b32 v99, v14, s[20:23], 0 offen
	v_add_lshl_u32 v13, v60, v40, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v14, v60, v39, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v100, v1, s[20:23], 0 offen
	buffer_store_b32 v121, v12, s[20:23], 0 offen
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v60, v38, 2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
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
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v124, v126, v15 :: v_dual_mul_f32 v45, v45, v29
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v14, v60, v35, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s6
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v126, v128, v27 :: v_dual_mul_f32 v11, v11, v24
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
	v_add_lshl_u32 v12, v0, v49, 2
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
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v14, v0, v57, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s18
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v18, v47, v20 :: v_dual_mul_f32 v19, v48, v21
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v45, v1, s[20:23], 0 offen
	buffer_store_b32 v17, v12, s[20:23], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	v_add_lshl_u32 v1, v0, v56, 2
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
	v_dual_mul_f32 v20, v130, v22 :: v_dual_mul_f32 v21, v131, v23
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v19, v1, s[20:23], 0 offen
	buffer_store_b32 v20, v12, s[20:23], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
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
	v_dual_mul_f32 v6, v6, v15 :: v_dual_mul_f32 v3, v3, v28
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s5
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v4, v4, v27
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v2, v2, v29
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v6, v1, s[20:23], 0 offen
	buffer_store_b32 v5, v7, s[20:23], 0 offen
	buffer_store_b32 v4, v8, s[20:23], 0 offen
	buffer_store_b32 v3, v9, s[20:23], 0 offen
	buffer_store_b32 v2, v0, s[20:23], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 163
		.amdhsa_next_free_sgpr 32
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
		.amdhsa_inst_pref_size 57
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
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 163
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7296
; TotalNumSgprs: 34
; NumVgprs: 163
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 34
; NumVGPRsForWavesPerEU: 163
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
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     163
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
