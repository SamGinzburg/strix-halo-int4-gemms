	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s24, 31
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s25, 0x7f
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_lshr_b32 s6, s6, 27
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_lshr_b32 s7, s7, 25
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_ashr_i32 s4, s4, 5
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s6, s5, 7
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s6, s4
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s5, s4
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v92, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_and_b32 v62, 15, v0
	v_mov_b32_e32 v95, 0
	s_mov_b32 s29, 0
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
	.loc	1 1431 43                       ; ragged.py:1431:43
	s_mul_i32 s26, s16, s24
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s8, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s8, s8, 31
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s5
	s_abs_i32 s5, s2
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s4, s7
	s_sub_i32 s5, s5, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s9, s4
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s17, s16, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[4:5], s[16:17], 2
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s7, s6
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s28, s7, 5
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s27, s2, s6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s12, s4
	s_addc_u32 s5, s13, s5
	s_load_b32 s2, s[4:5], 0x0
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s2, s2, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_lt_i32 s2, 2
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.preheader.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x38
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 1424 23 is_stmt 1             ; ragged.py:1424:23
	s_lshl_b32 s30, s3, 5
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v1, s28, v62
	.loc	1 1314 26 is_stmt 1             ; ragged.py:1314:26
	s_lshr_b32 s20, s2, 1
	v_dual_mov_b32 v98, 0 :: v_dual_lshlrev_b32 v3, 3, v0
	s_cmp_lt_i32 s30, 64
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v4, s28, v2
	s_cselect_b32 s31, -1, 0
	s_add_i32 s21, s28, s26
	v_or_b32_e32 v5, 16, v1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s24, v1
	v_dual_mov_b32 v96, 0 :: v_dual_and_b32 v1, 24, v3
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v2, s21, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_lshl_or_b32 v33, s27, 7, v0
	v_dual_mov_b32 v91, 0 :: v_dual_and_b32 v6, 0x60, v0
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[34:35], null, v2, s12, v[1:2]
	v_dual_mov_b32 v86, 0 :: v_dual_lshlrev_b32 v1, 1, v0
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s2, s24, v4
	v_cmp_gt_i32_e64 s3, s24, v5
	v_dual_mov_b32 v97, 0 :: v_dual_lshlrev_b32 v4, 5, v62
	v_mad_u64_u32 v[35:36], null, s25, 3, v[33:34]
	v_mad_u64_u32 v[36:37], null, s25, 5, v[33:34]
	v_mad_u64_u32 v[37:38], null, s25, 6, v[33:34]
	v_mad_u64_u32 v[38:39], null, s25, 7, v[33:34]
	v_dual_mov_b32 v84, 0 :: v_dual_and_b32 v5, 24, v1
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v2, 24, v2
	v_lshrrev_b32_e32 v7, 2, v6
	v_mad_u64_u32 v[39:40], null, s25, 9, v[33:34]
	v_mad_u64_u32 v[40:41], null, s25, 10, v[33:34]
	v_mad_u64_u32 v[41:42], null, s25, 11, v[33:34]
	v_mad_u64_u32 v[42:43], null, s25, 12, v[33:34]
	v_mad_u64_u32 v[43:44], null, s25, 13, v[33:34]
	v_or_b32_e32 v99, v4, v5
	v_xor_b32_e32 v8, v5, v2
	v_xor_b32_e32 v2, v3, v2
	v_dual_mov_b32 v80, 0 :: v_dual_lshlrev_b32 v3, 4, v6
	v_xor_b32_e32 v5, v5, v7
	v_mad_u64_u32 v[44:45], null, s25, 14, v[33:34]
	v_mad_u64_u32 v[45:46], null, s25, 15, v[33:34]
	v_mad_u64_u32 v[46:47], null, s25, 17, v[33:34]
	v_mad_u64_u32 v[47:48], null, s25, 18, v[33:34]
	v_mad_u64_u32 v[48:49], null, s25, 19, v[33:34]
	v_dual_mov_b32 v82, 0 :: v_dual_lshlrev_b32 v9, 5, v0
	v_or3_b32 v101, v5, v3, v4
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v3, s21, v62
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v12, 0x70, v0
	v_mad_u64_u32 v[49:50], null, s25, 20, v[33:34]
	v_mad_u64_u32 v[50:51], null, s25, 21, v[33:34]
	v_mad_u64_u32 v[51:52], null, s25, 22, v[33:34]
	v_mad_u64_u32 v[52:53], null, s25, 23, v[33:34]
	v_or_b32_e32 v100, v8, v9
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v13, 16, v3
	v_mul_lo_u32 v102, v3, s13
	v_dual_mov_b32 v74, 0 :: v_dual_lshlrev_b32 v3, 2, v12
	v_dual_mov_b32 v72, 0 :: v_dual_and_b32 v9, 32, v9
	v_mad_u64_u32 v[53:54], null, s25, 24, v[33:34]
	v_mad_u64_u32 v[54:55], null, s25, 25, v[33:34]
	v_mad_u64_u32 v[55:56], null, s25, 26, v[33:34]
	v_mad_u64_u32 v[56:57], null, s25, 27, v[33:34]
	v_mad_u64_u32 v[57:58], null, s25, 28, v[33:34]
	v_xor_b32_e32 v6, 8, v99
	v_xor_b32_e32 v7, 16, v99
	v_xor_b32_e32 v8, 24, v99
	v_xor_b32_e32 v4, 8, v100
	v_xor_b32_e32 v5, 16, v100
	v_xor_b32_e32 v10, 24, v100
	v_xor_b32_e32 v11, 8, v101
	v_xor_b32_e32 v14, 16, v101
	v_xor_b32_e32 v15, 24, v101
	v_dual_mov_b32 v70, 0 :: v_dual_and_b32 v1, 28, v1
	v_add3_u32 v3, 0, v3, v9
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v9, 1, v12
	v_mad_u64_u32 v[58:59], null, s25, 29, v[33:34]
	v_mad_u64_u32 v[59:60], null, s25, 30, v[33:34]
	v_mul_lo_u32 v103, v13, s13
	v_mad_u64_u32 v[60:61], null, s25, 31, v[33:34]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s25, v33
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v87, s25, v33
	v_lshl_add_u32 v88, s25, 1, v33
	v_lshl_add_u32 v90, s25, 2, v33
	v_lshl_add_u32 v93, s25, 3, v33
	v_lshl_add_u32 v94, s25, 4, v33
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v104, 0, v2
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v105, 0, v6
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v106, 0, v7
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v107, 0, v8
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v108, 0, v4
	v_add_nc_u32_e32 v109, 0, v5
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v110, 0, v10
	v_add_nc_u32_e32 v111, 0, v11
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v112, 0, v14
	v_add_nc_u32_e32 v113, 0, v15
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v114, v3, v1
	v_add_nc_u32_e32 v115, 0, v9
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v67, 0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v65, 0
	v_mov_b32_e32 v61, 0
	.loc	1 1435 43                       ; ragged.py:1435:43
	s_mul_i32 s33, s16, s12
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s34, s16, s13
	s_mov_b32 s16, s4
	s_mov_b32 s4, s6
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_add_i32 s6, s20, -1
	s_and_b32 s17, s5, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s5, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s21, s11, 0xffff
	s_mov_b32 s20, s10
	s_lshr_b32 s12, s6, 6
	s_mov_b32 s10, 0
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s6, s29, s34
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v17, v102, s29, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s6, s6, s25
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v18, v103, s29, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v19, v33, s6, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s10, s18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	s_mov_b32 s11, s19
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v19, v19, s[20:23], 0 offen
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s6, s29, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s10, s6, 6
	s_cmp_lg_u32 s29, s12
	s_mov_b32 s29, s6
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v29, 16, v18
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v31, v130, v17 :: v_dual_lshlrev_b32 v18, 16, v19
	v_mul_f32_e32 v30, v131, v17
	v_mul_f32_e32 v126, v126, v17
	v_mul_f32_e32 v32, v129, v17
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v114, v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v129, v14, v29
	v_mul_f32_e32 v130, v13, v29
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[25:28], v115 offset:272
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v1, v1, v29
	v_mul_f32_e32 v132, v11, v29
	v_mul_f32_e32 v9, v9, v29
	v_mul_f32_e32 v131, v12, v29
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[11:14], v115 offset:256
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v10, v10, v29
	v_mul_f32_e32 v116, v116, v17
	v_mul_f32_e32 v117, v117, v17
	v_mul_f32_e32 v8, v8, v29
	v_mul_f32_e32 v120, v120, v17
	v_mul_f32_e32 v121, v121, v17
	v_mul_f32_e32 v118, v118, v17
	v_mul_f32_e32 v2, v2, v29
	v_mul_f32_e32 v6, v6, v29
	v_mul_f32_e32 v5, v5, v29
	v_mul_f32_e32 v7, v7, v29
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[21:24], v115 offset:16
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v4, v4, v29
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v3, v3, v29 :: v_dual_fmac_f32 v64, v2, v27
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_fmac_f32_e32 v78, v116, v28
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v122, v122, v17 :: v_dual_fmac_f32 v79, v117, v27
	v_mul_f32_e32 v123, v123, v17
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v69, v8, v11
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v119, v119, v17 :: v_dual_fmac_f32 v80, v118, v26
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_fmac_f32_e32 v84, v122, v12
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v124, v124, v17 :: v_dual_fmac_f32 v85, v123, v11
	v_mul_f32_e32 v125, v125, v17
	v_mul_f32_e32 v128, v128, v17
	v_mul_f32_e32 v127, v127, v17
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[17:20], v115
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v16, v16, v29 :: v_dual_fmac_f32 v65, v3, v26
	v_mul_f32_e32 v15, v15, v29
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v91, v126, v22 :: v_dual_fmac_f32 v86, v124, v24
	v_fmac_f32_e32 v89, v125, v23
	v_fmac_f32_e32 v81, v119, v25
	v_fmac_f32_e32 v71, v10, v23
	v_dual_fmac_f32 v67, v6, v13 :: v_dual_fmac_f32 v66, v5, v14
	v_dual_fmac_f32 v68, v7, v12 :: v_dual_fmac_f32 v63, v4, v25
	v_dual_fmac_f32 v61, v1, v28 :: v_dual_fmac_f32 v72, v132, v22
	v_dual_fmac_f32 v70, v9, v24 :: v_dual_fmac_f32 v73, v131, v21
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v95, v30, v17 :: v_dual_fmac_f32 v98, v31, v18
	v_fmac_f32_e32 v97, v32, v19
	v_fmac_f32_e32 v96, v128, v20
	v_fmac_f32_e32 v92, v127, v21
	v_dual_fmac_f32 v77, v16, v17 :: v_dual_fmac_f32 v74, v130, v20
	v_dual_fmac_f32 v76, v15, v18 :: v_dual_fmac_f32 v75, v129, v19
	v_dual_fmac_f32 v82, v120, v14 :: v_dual_fmac_f32 v83, v121, v13
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	.loc	1 1426 27 is_stmt 1             ; ragged.py:1426:27
	s_and_not1_b32 vcc_lo, exec_lo, s31
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_mov_b32 s11, s30
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
.LBB0_5:                                ; %.lr.ph
                                        ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1427 30 is_stmt 1             ; ragged.py:1427:30
	s_add_i32 s13, s11, s10
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_mov_b32 s6, s18
	.loc	1 1437 46 is_stmt 0             ; ragged.py:1437:46
	s_add_i32 s22, s13, s33
	.loc	1 1436 46 is_stmt 1             ; ragged.py:1436:46
	v_add_nc_u32_e32 v116, s13, v34
	.loc	1 1437 46                       ; ragged.py:1437:46
	s_mul_i32 s22, s22, s25
	.loc	1 1437 38 is_stmt 0             ; ragged.py:1437:38
	s_mov_b32 s7, s19
	.loc	1 1437 46                       ; ragged.py:1437:46
	v_add_nc_u32_e32 v117, s22, v33
	v_add_nc_u32_e32 v118, s22, v87
	v_add_nc_u32_e32 v119, s22, v88
	v_add_nc_u32_e32 v120, s22, v35
	v_add_nc_u32_e32 v121, s22, v90
	v_add_nc_u32_e32 v136, s22, v48
	v_add_nc_u32_e32 v137, s22, v49
	v_add_nc_u32_e32 v138, s22, v50
	v_add_nc_u32_e32 v139, s22, v51
	v_add_nc_u32_e32 v140, s22, v52
	v_add_nc_u32_e32 v141, s22, v53
	v_add_nc_u32_e32 v142, s22, v54
	v_add_nc_u32_e32 v143, s22, v55
	v_add_nc_u32_e32 v144, s22, v56
	v_add_nc_u32_e32 v122, s22, v36
	v_add_nc_u32_e32 v123, s22, v37
	v_add_nc_u32_e32 v124, s22, v38
	v_add_nc_u32_e32 v125, s22, v93
	v_add_nc_u32_e32 v126, s22, v39
	v_add_nc_u32_e32 v127, s22, v40
	v_add_nc_u32_e32 v128, s22, v41
	v_add_nc_u32_e32 v129, s22, v42
	v_add_nc_u32_e32 v130, s22, v43
	v_add_nc_u32_e32 v131, s22, v44
	v_add_nc_u32_e32 v132, s22, v45
	v_add_nc_u32_e32 v133, s22, v94
	v_add_nc_u32_e32 v134, s22, v46
	v_add_nc_u32_e32 v135, s22, v47
	v_add_nc_u32_e32 v145, s22, v57
	v_add_nc_u32_e32 v146, s22, v58
	v_add_nc_u32_e32 v147, s22, v59
	v_add_nc_u32_e32 v148, s22, v60
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_cndmask_b32_e64 v117, 0x80000000, v117, s1
	v_cndmask_b32_e64 v118, 0x80000000, v118, s1
	v_cndmask_b32_e64 v119, 0x80000000, v119, s1
	v_cndmask_b32_e64 v120, 0x80000000, v120, s1
	.loc	1 1436 38 is_stmt 1             ; ragged.py:1436:38
	v_cndmask_b32_e64 v116, 0x80000000, v116, s2
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_cndmask_b32_e64 v121, 0x80000000, v121, s1
	v_cndmask_b32_e64 v136, 0x80000000, v136, s1
	v_cndmask_b32_e64 v137, 0x80000000, v137, s1
	v_cndmask_b32_e64 v138, 0x80000000, v138, s1
	v_cndmask_b32_e64 v139, 0x80000000, v139, s1
	v_cndmask_b32_e64 v140, 0x80000000, v140, s1
	v_cndmask_b32_e64 v141, 0x80000000, v141, s1
	v_cndmask_b32_e64 v142, 0x80000000, v142, s1
	v_cndmask_b32_e64 v143, 0x80000000, v143, s1
	v_cndmask_b32_e64 v144, 0x80000000, v144, s1
	v_cndmask_b32_e64 v122, 0x80000000, v122, s1
	v_cndmask_b32_e64 v123, 0x80000000, v123, s1
	v_cndmask_b32_e64 v124, 0x80000000, v124, s1
	v_cndmask_b32_e64 v125, 0x80000000, v125, s1
	v_cndmask_b32_e64 v126, 0x80000000, v126, s1
	v_cndmask_b32_e64 v127, 0x80000000, v127, s1
	v_cndmask_b32_e64 v128, 0x80000000, v128, s1
	v_cndmask_b32_e64 v129, 0x80000000, v129, s1
	v_cndmask_b32_e64 v130, 0x80000000, v130, s1
	v_cndmask_b32_e64 v131, 0x80000000, v131, s1
	v_cndmask_b32_e64 v132, 0x80000000, v132, s1
	v_cndmask_b32_e64 v133, 0x80000000, v133, s1
	v_cndmask_b32_e64 v134, 0x80000000, v134, s1
	v_cndmask_b32_e64 v135, 0x80000000, v135, s1
	v_cndmask_b32_e64 v145, 0x80000000, v145, s1
	v_cndmask_b32_e64 v146, 0x80000000, v146, s1
	v_cndmask_b32_e64 v147, 0x80000000, v147, s1
	v_cndmask_b32_e64 v148, 0x80000000, v148, s1
	s_clause 0x1f
	buffer_load_u8 v149, v117, s[4:7], 0 offen
	buffer_load_u8 v150, v118, s[4:7], 0 offen
	buffer_load_u8 v151, v119, s[4:7], 0 offen
	buffer_load_u8 v152, v120, s[4:7], 0 offen
	buffer_load_u8 v153, v121, s[4:7], 0 offen
	buffer_load_u8 v154, v122, s[4:7], 0 offen
	buffer_load_u8 v155, v123, s[4:7], 0 offen
	buffer_load_u8 v156, v124, s[4:7], 0 offen
	buffer_load_u8 v157, v125, s[4:7], 0 offen
	buffer_load_u8 v158, v126, s[4:7], 0 offen
	buffer_load_u8 v159, v127, s[4:7], 0 offen
	buffer_load_u8 v160, v128, s[4:7], 0 offen
	buffer_load_u8 v161, v129, s[4:7], 0 offen
	buffer_load_u8 v162, v130, s[4:7], 0 offen
	buffer_load_u8 v163, v131, s[4:7], 0 offen
	buffer_load_u8 v164, v132, s[4:7], 0 offen
	buffer_load_u8 v165, v133, s[4:7], 0 offen
	buffer_load_u8 v166, v134, s[4:7], 0 offen
	buffer_load_u8 v167, v135, s[4:7], 0 offen
	buffer_load_u8 v168, v136, s[4:7], 0 offen
	buffer_load_u8 v169, v137, s[4:7], 0 offen
	buffer_load_u8 v137, v138, s[4:7], 0 offen
	buffer_load_u8 v170, v139, s[4:7], 0 offen
	buffer_load_u8 v136, v140, s[4:7], 0 offen
	buffer_load_u8 v171, v141, s[4:7], 0 offen
	buffer_load_u8 v140, v142, s[4:7], 0 offen
	buffer_load_u8 v142, v143, s[4:7], 0 offen
	buffer_load_u8 v139, v144, s[4:7], 0 offen
	buffer_load_u8 v143, v145, s[4:7], 0 offen
	buffer_load_u8 v141, v146, s[4:7], 0 offen
	buffer_load_u8 v144, v147, s[4:7], 0 offen
	buffer_load_u8 v138, v148, s[4:7], 0 offen
	.loc	1 1436 38                       ; ragged.py:1436:38
	buffer_load_b64 v[116:117], v116, s[16:19], 0 offen
	v_add_nc_u32_e32 v118, 0, v99
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_add_nc_u32_e32 v145, 0, v100
	v_add_nc_u32_e32 v146, 0, v101
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1448 25                       ; ragged.py:1448:25
	s_add_i32 s6, s11, 32
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cmp_lt_i32 s11, 32
	s_mov_b32 s11, s6
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt vmcnt(31)
	v_lshlrev_b16 v133.h, 8, v150.l
	s_waitcnt vmcnt(29)
	v_lshlrev_b16 v133.l, 8, v152.l
	s_waitcnt vmcnt(27)
	v_lshlrev_b16 v132.h, 8, v154.l
	s_waitcnt vmcnt(25)
	v_lshlrev_b16 v132.l, 8, v156.l
	s_waitcnt vmcnt(7)
	v_or_b16 v140.h, v151.l, v133.l
	v_lshlrev_b16 v135.h, 8, v158.l
	v_lshlrev_b16 v135.l, 8, v160.l
	s_waitcnt vmcnt(3)
	v_or_b16 v141.h, v155.l, v132.l
	v_lshlrev_b16 v134.h, 8, v162.l
	v_or_b16 v132.l, v157.l, v135.h
	v_lshlrev_b16 v134.l, 8, v164.l
	v_lshlrev_b16 v137.h, 8, v166.l
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b16 v133.l, v161.l, v134.h
	v_lshlrev_b16 v136.h, 8, v137.l
	v_lshlrev_b16 v137.l, 8, v168.l
	v_lshlrev_b16 v136.l, 8, v136.l
	v_lshlrev_b16 v139.h, 8, v140.l
	v_or_b16 v140.l, v149.l, v133.h
	v_lshlrev_b16 v139.l, 8, v139.l
	v_or_b16 v133.h, v163.l, v134.l
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v138.h, 8, v141.l
	v_or_b16 v141.l, v153.l, v132.h
	v_lshlrev_b16 v138.l, 8, v138.l
	v_or_b16 v132.h, v159.l, v135.l
	v_or_b16 v135.h, v170.l, v136.l
	v_or_b16 v135.l, v169.l, v136.h
	v_or_b16 v134.h, v167.l, v137.l
	v_or_b16 v134.l, v165.l, v137.h
	v_or_b16 v137.h, v144.l, v138.l
	v_or_b16 v137.l, v143.l, v138.h
	v_or_b16 v136.h, v142.l, v139.l
	v_or_b16 v136.l, v171.l, v139.h
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt vmcnt(0)
	ds_store_b64 v104, v[116:117]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[116:119], v118 offset1:1
	ds_load_2addr_stride64_b64 v[120:123], v105 offset1:1
	ds_load_2addr_stride64_b64 v[124:127], v106 offset1:1
	ds_load_2addr_stride64_b64 v[128:131], v107 offset1:1
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v145, v[140:141]
	ds_store_b64 v108, v[132:133]
	ds_store_b64 v109, v[134:135]
	ds_store_b64 v110, v[136:137]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[132:135], v146 offset1:4
	ds_load_2addr_stride64_b64 v[136:139], v111 offset1:4
	ds_load_2addr_stride64_b64 v[140:143], v112 offset1:4
	ds_load_2addr_stride64_b64 v[144:147], v113 offset1:4
	.loc	1 1438 35                       ; ragged.py:1438:35
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[132:133], v[116:117], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[134:135], v[116:117], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[132:133], v[118:119], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[134:135], v[118:119], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[136:137], v[120:121], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[138:139], v[120:121], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[136:137], v[122:123], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[138:139], v[122:123], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[140:141], v[124:125], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[142:143], v[124:125], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[140:141], v[126:127], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[142:143], v[126:127], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[144:145], v[128:129], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[146:147], v[128:129], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[144:145], v[130:131], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[146:147], v[130:131], v[25:32] neg_lo:[1,1,0]
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v131, v1
	v_cvt_f32_i32_e32 v130, v2
	v_cvt_f32_i32_e32 v129, v3
	v_cvt_f32_i32_e32 v128, v4
	v_cvt_f32_i32_e32 v127, v5
	v_cvt_f32_i32_e32 v126, v6
	v_cvt_f32_i32_e32 v125, v7
	v_cvt_f32_i32_e32 v124, v8
	v_cvt_f32_i32_e32 v123, v9
	v_cvt_f32_i32_e32 v122, v10
	v_cvt_f32_i32_e32 v121, v11
	v_cvt_f32_i32_e32 v120, v12
	v_cvt_f32_i32_e32 v119, v13
	v_cvt_f32_i32_e32 v118, v14
	v_cvt_f32_i32_e32 v117, v15
	v_cvt_f32_i32_e32 v116, v16
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v15, v18
	v_cvt_f32_i32_e32 v14, v19
	v_cvt_f32_i32_e32 v13, v20
	v_cvt_f32_i32_e32 v12, v21
	v_cvt_f32_i32_e32 v11, v22
	v_cvt_f32_i32_e32 v10, v23
	v_cvt_f32_i32_e32 v9, v24
	v_cvt_f32_i32_e32 v8, v25
	v_cvt_f32_i32_e32 v7, v26
	v_cvt_f32_i32_e32 v6, v27
	v_cvt_f32_i32_e32 v5, v28
	v_cvt_f32_i32_e32 v4, v29
	v_cvt_f32_i32_e32 v3, v30
	v_cvt_f32_i32_e32 v2, v31
	v_cvt_f32_i32_e32 v1, v32
	s_branch .LBB0_2
.LBB0_7:                                ; %._crit_edge2
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v1, v95, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v95, v95
	v_bfe_u32 v4, v97, 16, 1
	v_bfe_u32 v3, v98, 16, 1
	v_bfe_u32 v6, v92, 16, 1
	v_add3_u32 v1, v95, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v98, v98
	v_add3_u32 v4, v97, v4, 0x7fff
	v_bfe_u32 v5, v96, 16, 1
	v_add3_u32 v3, v98, v3, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v97, v97
	v_bfe_u32 v7, v91, 16, 1
	v_add3_u32 v6, v92, v6, 0x7fff
	v_bfe_u32 v9, v86, 16, 1
	v_add3_u32 v5, v96, v5, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v92, v92
	v_cmp_o_f32_e64 s1, v96, v96
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s0
	v_bfe_u32 v8, v89, 16, 1
	v_add3_u32 v7, v91, v7, 0x7fff
	v_cmp_o_f32_e64 s0, v91, v91
	v_cndmask_b16 v6.l, 0x7fff, v6.h, vcc_lo
	v_bfe_u32 v10, v85, 16, 1
	v_add3_u32 v9, v86, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	v_bfe_u32 v12, v83, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s1
	v_add3_u32 v8, v89, v8, 0x7fff
	v_cmp_o_f32_e64 s1, v89, v89
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s0
	v_bfe_u32 v11, v84, 16, 1
	v_add3_u32 v10, v85, v10, 0x7fff
	v_cmp_o_f32_e64 s0, v85, v85
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_bfe_u32 v13, v82, 16, 1
	v_add3_u32 v12, v83, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	v_bfe_u32 v15, v80, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s1
	v_add3_u32 v11, v84, v11, 0x7fff
	v_cmp_o_f32_e64 s1, v84, v84
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s0
	v_bfe_u32 v14, v81, 16, 1
	v_add3_u32 v13, v82, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v82, v82
	v_cndmask_b16 v12.l, 0x7fff, v12.h, vcc_lo
	v_bfe_u32 v16, v79, 16, 1
	v_add3_u32 v15, v80, v15, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v80, v80
	v_bfe_u32 v18, v77, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s1
	v_add3_u32 v14, v81, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v81, v81
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s0
	v_bfe_u32 v17, v78, 16, 1
	v_add3_u32 v16, v79, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v79, v79
	v_cndmask_b16 v15.l, 0x7fff, v15.h, vcc_lo
	v_bfe_u32 v19, v76, 16, 1
	v_add3_u32 v18, v77, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s1
	v_add3_u32 v17, v78, v17, 0x7fff
	v_cmp_o_f32_e64 s1, v78, v78
	v_cndmask_b16 v16.l, 0x7fff, v16.h, s0
	v_bfe_u32 v20, v75, 16, 1
	v_add3_u32 v19, v76, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v76, v76
	v_cndmask_b16 v1.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v74, 16, 1
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s1
	v_add3_u32 v20, v75, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v75, v75
	v_cndmask_b16 v3.h, 0x7fff, v19.h, s0
	v_bfe_u32 v19, v73, 16, 1
	v_add3_u32 v18, v74, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_cndmask_b16 v4.h, 0x7fff, v20.h, s1
	v_bfe_u32 v20, v72, 16, 1
	v_add3_u32 v19, v73, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v73, v73
	v_cndmask_b16 v5.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v71, 16, 1
	v_add3_u32 v20, v72, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v72, v72
	v_cndmask_b16 v6.h, 0x7fff, v19.h, s0
	v_bfe_u32 v19, v70, 16, 1
	v_add3_u32 v18, v71, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v71, v71
	v_cndmask_b16 v7.h, 0x7fff, v20.h, s1
	v_bfe_u32 v20, v69, 16, 1
	v_add3_u32 v19, v70, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v70, v70
	v_cndmask_b16 v8.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v68, 16, 1
	v_add3_u32 v20, v69, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v69, v69
	v_cndmask_b16 v9.h, 0x7fff, v19.h, s0
	v_bfe_u32 v19, v67, 16, 1
	v_add3_u32 v18, v68, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_bfe_i32 v2, v0, 6, 1
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v10.h, 0x7fff, v20.h, s1
	v_bfe_u32 v20, v66, 16, 1
	v_add3_u32 v19, v67, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v67, v67
	v_bfe_u32 v21, v63, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v18.h, vcc_lo
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v18, 2, v0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v20, v66, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v66, v66
	v_cndmask_b16 v12.h, 0x7fff, v19.h, s0
	v_add3_u32 v19, v63, v21, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_and_b32_e32 v21, 0x7c, v18
	v_and_b32_e32 v22, 32, v0
	v_and_b32_e32 v23, 0x1040, v2
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v13.h, 0x7fff, v20.h, s1
	v_bfe_u32 v20, v65, 16, 1
	v_bfe_u32 v24, v64, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor3_b32 v21, v21, v22, v23
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s0, v65, v65
	v_add3_u32 v20, v65, v20, 0x7fff
	v_add3_u32 v22, v64, v24, 0x7fff
	v_cmp_o_f32_e64 s1, v64, v64
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v21, v62, 8, v21
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v14.h, 0x7fff, v19.h, vcc_lo
	v_cndmask_b16 v15.h, 0x7fff, v20.h, s0
	.loc	1 1534 34                       ; ragged.py:1534:34
	s_waitcnt lgkmcnt(0)
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v16.h, 0x7fff, v22.h, s1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_add_nc_u32_e32 v19, 0, v21
	v_xad_u32 v20, v21, 4, 0
	v_xad_u32 v22, v21, 8, 0
	s_barrier
	v_and_b32_e32 v2, 0x104, v2
	ds_store_2addr_b32 v19, v1, v10 offset1:32
	v_xad_u32 v1, v21, 12, 0
	ds_store_2addr_b32 v20, v3, v11 offset1:32
	ds_store_2addr_b32 v22, v4, v12 offset1:32
	v_and_b32_e32 v3, 0xbc, v18
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v25, v61, 16, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v4, v21, 20, 0
	ds_store_2addr_b32 v1, v5, v13 offset1:32
	v_xad_u32 v1, v21, 16, 0
	v_bfe_i32 v5, v0, 4, 1
	v_xor_b32_e32 v2, v2, v3
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v23, v61, v25, 0x7fff
	v_cmp_o_f32_e64 s2, v61, v61
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_2addr_b32 v1, v6, v14 offset1:32
	ds_store_2addr_b32 v4, v7, v15 offset1:32
	v_xad_u32 v3, v21, 24, 0
	v_and_or_b32 v1, 0x1040, v5, v2
	v_xad_u32 v10, v21, 28, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v17.h, 0x7fff, v23.h, s2
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_2addr_b32 v3, v8, v16 offset1:32
	ds_store_2addr_b32 v10, v9, v17 offset1:32
	v_add_nc_u32_e32 v2, 0, v1
	v_xad_u32 v3, v1, 64, 0
	v_xad_u32 v4, 0x208, v1, 0
	v_xad_u32 v5, 0x248, v1, 0
	v_xad_u32 v6, 0x410, v1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v7, 0x450, v1, 0
	v_xad_u32 v8, 0x618, v1, 0
	v_xad_u32 v9, 0x658, v1, 0
	ds_load_b32 v16, v2
	ds_load_b32 v17, v3
	ds_load_b32 v14, v4
	ds_load_b32 v15, v5
	ds_load_b32 v12, v6
	ds_load_b32 v13, v7
	ds_load_b32 v10, v8
	ds_load_b32 v11, v9
	v_xad_u32 v2, 0x820, v1, 0
	v_xad_u32 v3, 0x860, v1, 0
	v_xad_u32 v4, 0xa28, v1, 0
	v_xad_u32 v5, 0xa68, v1, 0
	v_xad_u32 v18, 0xc30, v1, 0
	v_xad_u32 v19, 0xc70, v1, 0
	v_xad_u32 v20, 0xe38, v1, 0
	v_xad_u32 v21, 0xe78, v1, 0
	ds_load_b32 v8, v2
	ds_load_b32 v9, v3
	ds_load_b32 v6, v4
	ds_load_b32 v7, v5
	ds_load_b32 v4, v18
	ds_load_b32 v5, v19
	ds_load_b32 v1, v20
	ds_load_b32 v2, v21
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v3, 6, v0
	.loc	1 1536 56                       ; ragged.py:1536:56
	v_and_b32_e32 v0, 63, v0
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_lshr_b32 s0, s25, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_add_i32 s0, s25, s0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s28, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v0, s27, 6, v0
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_ashr_i32 s1, s0, 1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s24, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1542 54                       ; ragged.py:1542:54
	v_cmp_gt_i32_e32 vcc_lo, s1, v0
	.loc	1 1542 33 is_stmt 0             ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17 is_stmt 1             ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_9
; %bb.8:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s26, v3
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v20, v16, v17, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s14, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s15, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_9:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s24, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_11
; %bb.10:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s26, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v20, v14, v15, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s14, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s15, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_11:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s24, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_13
; %bb.12:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s26, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v20, v12, v13, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s14, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s15, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_13:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 6, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s24, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_15
; %bb.14:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s26, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v20, v10, v11, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s14, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s15, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_15:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 8, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s24, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_17
; %bb.16:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s26, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v8, v9, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s14, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s15, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_17:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 10, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s24, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_19
; %bb.18:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s26, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v6, v7, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s14, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s15, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_19:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 12, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s24, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_21
; %bb.20:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s26, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v4, v5, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s14, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s15, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_21:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 14, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s24, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_23
; %bb.22:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s26, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v1, v2, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s14, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s15, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_23:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s24, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_25
; %bb.24:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s26, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v20, v16, v17, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v16, s0, s14, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s15, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[16:17], v20, off
.LBB0_25:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(15)
	v_or_b32_e32 v16, 18, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s24, v16
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_27
; %bb.26:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v16, s26, v16
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v18, v14, v15, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[16:17], null, v16, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v14, s0, s14, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s15, v17, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[14:15], v18, off
.LBB0_27:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(13)
	v_or_b32_e32 v14, 20, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s24, v14
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_29
; %bb.28:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v14, s26, v14
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v16, v12, v13, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[14:15], null, v14, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v15, 31, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[14:15], 2, v[14:15]
	v_add_co_u32 v12, s0, s14, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s15, v15, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[12:13], v16, off
.LBB0_29:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(11)
	v_or_b32_e32 v12, 22, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s24, v12
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_31
; %bb.30:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v12, s26, v12
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v14, v10, v11, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[12:13], null, v12, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v10, s0, s14, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s15, v13, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[10:11], v14, off
.LBB0_31:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(9)
	v_or_b32_e32 v10, 24, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s24, v10
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_33
; %bb.32:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v10, s26, v10
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v12, v8, v9, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[10:11], null, v10, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v11, 31, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_co_u32 v8, s0, s14, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s15, v11, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[8:9], v12, off
.LBB0_33:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v8, 26, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s24, v8
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_35
; %bb.34:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v8, s26, v8
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v6, v7, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[8:9], null, v8, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v6, s0, s14, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, s15, v9, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[6:7], v10, off
.LBB0_35:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v6, 28, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s24, v6
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_37
; %bb.36:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v6, s26, v6
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v4, v5, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[6:7], null, v6, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v7, 31, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_co_u32 v4, s0, s14, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s15, v7, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[4:5], v8, off
.LBB0_37:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v3, 30, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s24, v3
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_39
; %bb.38:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v3, s26, v3
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v1, v2, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[3:4], null, v3, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v4, 31, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[3:4], 2, v[3:4]
	v_add_co_u32 v0, vcc_lo, s14, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s15, v4, vcc_lo
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[0:1], v2, off
.LBB0_39:
	.loc	1 1276 5 is_stmt 1              ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 172
		.amdhsa_next_free_sgpr 35
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.num_vgpr, 172
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7256
; TotalNumSgprs: 37
; NumVgprs: 172
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 37
; NumVGPRsForWavesPerEU: 172
; Occupancy: 8
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     172
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
