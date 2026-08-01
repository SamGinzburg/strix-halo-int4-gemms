	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 31
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s35, 0x7f
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
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v103, 0
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s6, s4
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v105, 0
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s5, s4
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v107, 0
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v109, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_mov_b32_e32 v115, 0
	v_mov_b32_e32 v117, 0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v83, 15, v0
	v_and_b32_e32 v49, 31, v0
	s_mov_b32 s38, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 1304 20                       ; ragged.py:1304:20
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
	s_sub_i32 s24, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s24, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1431 43                       ; ragged.py:1431:43
	s_mul_i32 s33, s24, s34
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
	s_ashr_i32 s25, s24, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[4:5], s[24:25], 2
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s7, s6
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s37, s7, 5
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s36, s2, s6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s20, s4
	s_addc_u32 s5, s21, s5
	s_load_b32 s25, s[4:5], 0x0
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s25, s25, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_lt_i32 s25, 2
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.preheader.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b64 s[20:21], s[0:1], 0x38
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 5, v0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_lshl_or_b32 v50, s36, 7, v0
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s3, s3, 5
	v_dual_mov_b32 v114, 0 :: v_dual_and_b32 v3, 0x60, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, s37, v1
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s28, s25, 1
	s_cmp_lt_i32 s3, 32
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v4, s37, v83
	s_cselect_b32 s40, -1, 0
	v_or_b32_e32 v10, 24, v2
	s_add_i32 s29, s37, s33
	v_or_b32_e32 v5, 4, v2
	v_or_b32_e32 v6, 8, v2
	v_or_b32_e32 v7, 12, v2
	v_or_b32_e32 v8, 16, v2
	v_or_b32_e32 v9, 20, v2
	v_or_b32_e32 v11, 28, v2
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v2
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[51:52], null, s20, v1, v[49:50]
	v_dual_mov_b32 v116, 0 :: v_dual_lshlrev_b32 v1, 1, v0
	v_cmp_gt_i32_e64 s6, s34, v10
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v10, s29, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v117, 0 :: v_dual_and_b32 v2, 24, v1
	v_mad_u64_u32 v[52:53], null, s20, 12, v[51:52]
	v_lshrrev_b32_e32 v3, 1, v3
	v_dual_mov_b32 v113, 0 :: v_dual_and_b32 v14, 0x70, v0
	v_dual_mov_b32 v106, 0 :: v_dual_lshlrev_b32 v15, 5, v0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v12, 16, v4
	v_mad_u64_u32 v[53:54], null, s20, 20, v[51:52]
	v_mad_u64_u32 v[54:55], null, s20, 24, v[51:52]
	v_mad_u64_u32 v[55:56], null, s20, 28, v[51:52]
	v_mad_u64_u32 v[56:57], null, s35, 3, v[50:51]
	v_mad_u64_u32 v[57:58], null, s35, 5, v[50:51]
	v_mad_u64_u32 v[58:59], null, s35, 6, v[50:51]
	v_mad_u64_u32 v[59:60], null, s35, 7, v[50:51]
	v_mad_u64_u32 v[60:61], null, s35, 9, v[50:51]
	v_mad_u64_u32 v[61:62], null, s35, 10, v[50:51]
	v_mad_u64_u32 v[62:63], null, s35, 11, v[50:51]
	v_mad_u64_u32 v[63:64], null, s35, 12, v[50:51]
	v_mad_u64_u32 v[64:65], null, s35, 13, v[50:51]
	v_mad_u64_u32 v[65:66], null, s35, 14, v[50:51]
	v_mad_u64_u32 v[66:67], null, s35, 15, v[50:51]
	v_mad_u64_u32 v[67:68], null, s35, 17, v[50:51]
	v_mad_u64_u32 v[68:69], null, s35, 18, v[50:51]
	v_mad_u64_u32 v[69:70], null, s35, 19, v[50:51]
	v_mad_u64_u32 v[70:71], null, s35, 20, v[50:51]
	v_mad_u64_u32 v[71:72], null, s35, 21, v[50:51]
	v_mad_u64_u32 v[72:73], null, s35, 22, v[50:51]
	v_mad_u64_u32 v[73:74], null, s35, 23, v[50:51]
	v_lshl_or_b32 v118, v83, 5, v2
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v16, 16, v10
	v_add3_u32 v119, 0, v83, v3
	v_mul_lo_u32 v120, v10, s21
	v_dual_mov_b32 v104, 0 :: v_dual_lshlrev_b32 v3, 2, v14
	v_dual_mov_b32 v109, 0 :: v_dual_and_b32 v10, 32, v15
	v_mad_u64_u32 v[74:75], null, s35, 24, v[50:51]
	v_mad_u64_u32 v[75:76], null, s35, 25, v[50:51]
	v_mad_u64_u32 v[76:77], null, s35, 26, v[50:51]
	v_mad_u64_u32 v[77:78], null, s35, 27, v[50:51]
	v_mad_u64_u32 v[78:79], null, s35, 28, v[50:51]
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s34, v5
	v_cmp_gt_i32_e64 s2, s34, v6
	v_cmp_gt_i32_e64 s11, s34, v7
	v_cmp_gt_i32_e64 s4, s34, v8
	v_cmp_gt_i32_e64 s5, s34, v9
	v_cmp_gt_i32_e64 s7, s34, v11
	v_cmp_gt_i32_e64 s8, s34, v4
	v_cmp_gt_i32_e64 s9, s34, v12
	v_xor_b32_e32 v2, 0x88, v0
	v_xor_b32_e32 v4, 0x110, v0
	v_xor_b32_e32 v5, 0x198, v0
	v_xor_b32_e32 v6, 8, v118
	v_xor_b32_e32 v7, 16, v118
	v_xor_b32_e32 v8, 24, v118
	v_or_b32_e32 v9, 0x380, v0
	v_or_b32_e32 v11, 0x780, v0
	v_or_b32_e32 v12, 0xb80, v0
	v_or_b32_e32 v13, 0xf80, v0
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v1, 28, v1
	v_add3_u32 v3, 0, v3, v10
	v_dual_mov_b32 v107, 0 :: v_dual_lshlrev_b32 v10, 1, v14
	v_mad_u64_u32 v[79:80], null, s35, 29, v[50:51]
	v_mad_u64_u32 v[80:81], null, s35, 30, v[50:51]
	v_mul_lo_u32 v121, v16, s21
	v_mad_u64_u32 v[81:82], null, s35, 31, v[50:51]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s10, s35, v50
	v_lshl_add_u32 v108, s20, 2, v51
	v_lshl_add_u32 v110, s20, 3, v51
	v_lshl_add_u32 v112, s20, 4, v51
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v122, 0, v0
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v123, 0, v2
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v124, 0, v4
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v125, 0, v5
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v126, 0, v6
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v127, 0, v7
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v128, 0, v8
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v129, 0, v9
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v130, 0, v11
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v131, 0, v12
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v132, 0, v13
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v133, v3, v1
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v134, 0, v10
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v82, 0
	.loc	1 1435 43                       ; ragged.py:1435:43
	s_mul_i32 s39, s24, s20
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s41, s24, s21
	s_mov_b32 s24, s12
	s_mov_b32 s12, s14
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_add_i32 s14, s28, -1
	s_mul_i32 s42, s29, s20
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s13, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s29, s19, 0xffff
	s_mov_b32 s28, s18
	s_lshr_b32 s20, s14, 5
	s_mov_b32 s18, 0
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s14, s38, s41
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v17, v120, s38, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s14, s14, s35
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v18, v121, s38, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v19, v50, s14, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s18, s26
	v_cndmask_b32_e64 v17, 0x80000000, v17, s8
	s_mov_b32 s19, s27
	v_cndmask_b32_e64 v18, 0x80000000, v18, s9
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v19, 0x80000000, v19, s10
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v17, v17, s[16:19], 0 offen
	buffer_load_u16 v18, v18, s[16:19], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v19, v19, s[28:31], 0 offen
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s14, s38, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s18, s14, 5
	s_cmp_lg_u32 s38, s20
	s_mov_b32 s38, s14
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v29, 16, v18
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v31, v47, v17 :: v_dual_lshlrev_b32 v18, 16, v19
	v_mul_f32_e32 v30, v48, v17
	v_mul_f32_e32 v32, v46, v17
	v_mul_f32_e32 v33, v33, v17
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v133, v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v46, v14, v29
	v_mul_f32_e32 v47, v13, v29
	v_mul_f32_e32 v48, v12, v29
	v_mul_f32_e32 v135, v11, v29
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[11:14], v134 offset:256
	ds_load_b128 v[25:28], v134 offset:272
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v8, v8, v29
	v_mul_f32_e32 v37, v37, v17
	v_mul_f32_e32 v5, v5, v29
	v_mul_f32_e32 v10, v10, v29
	v_mul_f32_e32 v39, v39, v17
	v_mul_f32_e32 v36, v36, v17
	v_mul_f32_e32 v2, v2, v29
	v_mul_f32_e32 v9, v9, v29
	v_mul_f32_e32 v7, v7, v29
	v_mul_f32_e32 v4, v4, v29
	v_mul_f32_e32 v3, v3, v29
	v_mul_f32_e32 v1, v1, v29
	v_mul_f32_e32 v15, v15, v29
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[21:24], v134 offset:16
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v6, v6, v29
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(2)
	v_fmac_f32_e32 v90, v8, v11
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v34, v34, v17 :: v_dual_fmac_f32 v103, v37, v14
	v_mul_f32_e32 v43, v43, v17
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v99, v33, v28
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v41, v41, v17 :: v_dual_fmac_f32 v100, v34, v27
	v_mul_f32_e32 v42, v42, v17
	v_mul_f32_e32 v40, v40, v17
	v_mul_f32_e32 v45, v45, v17
	v_dual_mul_f32 v38, v38, v17 :: v_dual_fmac_f32 v87, v5, v14
	v_dual_mul_f32 v35, v35, v17 :: v_dual_fmac_f32 v84, v2, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_fmac_f32_e32 v106, v40, v11
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v44, v44, v17
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[17:20], v134
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v16, v16, v29 :: v_dual_fmac_f32 v101, v35, v26
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_fmac_f32_e32 v89, v7, v12
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v111, v43, v22
	v_fmac_f32_e32 v109, v42, v23
	v_fmac_f32_e32 v93, v135, v22
	v_dual_fmac_f32 v91, v9, v24 :: v_dual_fmac_f32 v88, v6, v13
	v_dual_fmac_f32 v86, v4, v25 :: v_dual_fmac_f32 v85, v3, v26
	v_fmac_f32_e32 v82, v1, v28
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v114, v30, v17 :: v_dual_fmac_f32 v117, v31, v18
	v_dual_fmac_f32 v116, v32, v19 :: v_dual_fmac_f32 v115, v45, v20
	v_fmac_f32_e32 v113, v44, v21
	v_dual_fmac_f32 v98, v16, v17 :: v_dual_fmac_f32 v97, v15, v18
	v_dual_fmac_f32 v96, v46, v19 :: v_dual_fmac_f32 v107, v41, v24
	v_dual_fmac_f32 v104, v38, v13 :: v_dual_fmac_f32 v95, v47, v20
	v_fmac_f32_e32 v94, v48, v21
	v_dual_fmac_f32 v92, v10, v23 :: v_dual_fmac_f32 v105, v39, v12
	v_fmac_f32_e32 v102, v36, v25
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
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	.loc	1 1426 27 is_stmt 1             ; ragged.py:1426:27
	s_and_not1_b32 vcc_lo, exec_lo, s40
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_mov_b32 s19, s3
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
	s_add_i32 s21, s19, s18
	v_add_nc_u32_e32 v33, s35, v50
	.loc	1 1436 46                       ; ragged.py:1436:46
	s_add_i32 s30, s21, s42
	v_lshl_add_u32 v34, s35, 1, v50
	v_lshl_add_u32 v35, s35, 2, v50
	v_lshl_add_u32 v36, s35, 3, v50
	v_lshl_add_u32 v37, s35, 4, v50
	.loc	1 1437 46                       ; ragged.py:1437:46
	s_add_i32 s21, s21, s39
	v_add_nc_u32_e32 v38, s30, v51
	v_add_nc_u32_e32 v42, s30, v112
	v_add_nc_u32_e32 v39, s30, v108
	s_mul_i32 s21, s21, s35
	v_add_nc_u32_e32 v43, s30, v53
	v_add_nc_u32_e32 v40, s30, v110
	v_add_nc_u32_e32 v41, s30, v52
	v_add_nc_u32_e32 v44, s30, v54
	v_add_nc_u32_e32 v45, s30, v55
	v_add_nc_u32_e32 v135, s21, v58
	v_add_nc_u32_e32 v136, s21, v59
	v_add_nc_u32_e32 v137, s21, v60
	v_add_nc_u32_e32 v138, s21, v61
	v_add_nc_u32_e32 v139, s21, v62
	v_add_nc_u32_e32 v140, s21, v63
	v_add_nc_u32_e32 v141, s21, v64
	v_add_nc_u32_e32 v142, s21, v65
	v_add_nc_u32_e32 v143, s21, v66
	v_add_nc_u32_e32 v144, s21, v67
	v_add_nc_u32_e32 v145, s21, v68
	v_add_nc_u32_e32 v146, s21, v69
	v_add_nc_u32_e32 v147, s21, v70
	v_add_nc_u32_e32 v148, s21, v71
	v_add_nc_u32_e32 v149, s21, v72
	v_add_nc_u32_e32 v150, s21, v73
	v_add_nc_u32_e32 v151, s21, v74
	v_add_nc_u32_e32 v152, s21, v75
	v_add_nc_u32_e32 v153, s21, v76
	v_add_nc_u32_e32 v154, s21, v77
	v_add_nc_u32_e32 v155, s21, v78
	v_add_nc_u32_e32 v156, s21, v79
	v_add_nc_u32_e32 v157, s21, v80
	v_add_nc_u32_e32 v158, s21, v81
	v_add_nc_u32_e32 v46, s21, v50
	v_add_nc_u32_e32 v33, s21, v33
	v_add_nc_u32_e32 v34, s21, v34
	v_add_nc_u32_e32 v47, s21, v56
	v_add_nc_u32_e32 v35, s21, v35
	v_add_nc_u32_e32 v48, s21, v57
	v_add_nc_u32_e32 v36, s21, v36
	v_add_nc_u32_e32 v37, s21, v37
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_cndmask_b32_e64 v38, 0x80000000, v38, s0
	v_cndmask_b32_e64 v42, 0x80000000, v42, s4
	v_cndmask_b32_e64 v39, 0x80000000, v39, s1
	v_cndmask_b32_e64 v43, 0x80000000, v43, s5
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s11
	v_cndmask_b32_e64 v44, 0x80000000, v44, s6
	v_cndmask_b32_e64 v45, 0x80000000, v45, s7
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_cndmask_b32_e64 v135, 0x80000000, v135, s10
	v_cndmask_b32_e64 v136, 0x80000000, v136, s10
	v_cndmask_b32_e64 v137, 0x80000000, v137, s10
	v_cndmask_b32_e64 v138, 0x80000000, v138, s10
	v_cndmask_b32_e64 v139, 0x80000000, v139, s10
	v_cndmask_b32_e64 v140, 0x80000000, v140, s10
	v_cndmask_b32_e64 v141, 0x80000000, v141, s10
	v_cndmask_b32_e64 v142, 0x80000000, v142, s10
	v_cndmask_b32_e64 v143, 0x80000000, v143, s10
	v_cndmask_b32_e64 v144, 0x80000000, v144, s10
	v_cndmask_b32_e64 v145, 0x80000000, v145, s10
	v_cndmask_b32_e64 v146, 0x80000000, v146, s10
	v_cndmask_b32_e64 v147, 0x80000000, v147, s10
	v_cndmask_b32_e64 v148, 0x80000000, v148, s10
	v_cndmask_b32_e64 v149, 0x80000000, v149, s10
	v_cndmask_b32_e64 v150, 0x80000000, v150, s10
	v_cndmask_b32_e64 v151, 0x80000000, v151, s10
	v_cndmask_b32_e64 v152, 0x80000000, v152, s10
	v_cndmask_b32_e64 v153, 0x80000000, v153, s10
	v_cndmask_b32_e64 v154, 0x80000000, v154, s10
	v_cndmask_b32_e64 v155, 0x80000000, v155, s10
	v_cndmask_b32_e64 v156, 0x80000000, v156, s10
	v_cndmask_b32_e64 v157, 0x80000000, v157, s10
	v_cndmask_b32_e64 v158, 0x80000000, v158, s10
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	v_cndmask_b32_e64 v46, 0x80000000, v46, s10
	v_cndmask_b32_e64 v33, 0x80000000, v33, s10
	v_cndmask_b32_e64 v34, 0x80000000, v34, s10
	v_cndmask_b32_e64 v47, 0x80000000, v47, s10
	v_cndmask_b32_e64 v35, 0x80000000, v35, s10
	v_cndmask_b32_e64 v48, 0x80000000, v48, s10
	v_cndmask_b32_e64 v36, 0x80000000, v36, s10
	v_cndmask_b32_e64 v37, 0x80000000, v37, s10
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_clause 0x7
	buffer_load_u8 v38, v38, s[24:27], 0 offen
	buffer_load_u8 v42, v42, s[24:27], 0 offen
	buffer_load_u8 v39, v39, s[24:27], 0 offen
	buffer_load_u8 v43, v43, s[24:27], 0 offen
	buffer_load_u8 v40, v40, s[24:27], 0 offen
	buffer_load_u8 v44, v44, s[24:27], 0 offen
	buffer_load_u8 v45, v45, s[24:27], 0 offen
	buffer_load_u8 v41, v41, s[24:27], 0 offen
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_clause 0x1f
	buffer_load_u8 v159, v46, s[12:15], 0 offen
	buffer_load_u8 v160, v33, s[12:15], 0 offen
	buffer_load_u8 v161, v34, s[12:15], 0 offen
	buffer_load_u8 v162, v47, s[12:15], 0 offen
	buffer_load_u8 v163, v35, s[12:15], 0 offen
	buffer_load_u8 v164, v48, s[12:15], 0 offen
	buffer_load_u8 v135, v135, s[12:15], 0 offen
	buffer_load_u8 v165, v36, s[12:15], 0 offen
	buffer_load_u8 v137, v137, s[12:15], 0 offen
	buffer_load_u8 v138, v138, s[12:15], 0 offen
	buffer_load_u8 v139, v139, s[12:15], 0 offen
	buffer_load_u8 v140, v140, s[12:15], 0 offen
	buffer_load_u8 v141, v141, s[12:15], 0 offen
	buffer_load_u8 v142, v142, s[12:15], 0 offen
	buffer_load_u8 v166, v37, s[12:15], 0 offen
	buffer_load_u8 v144, v144, s[12:15], 0 offen
	buffer_load_u8 v145, v145, s[12:15], 0 offen
	buffer_load_u8 v146, v146, s[12:15], 0 offen
	buffer_load_u8 v147, v147, s[12:15], 0 offen
	buffer_load_u8 v148, v148, s[12:15], 0 offen
	buffer_load_u8 v149, v149, s[12:15], 0 offen
	buffer_load_u8 v151, v151, s[12:15], 0 offen
	buffer_load_u8 v152, v152, s[12:15], 0 offen
	buffer_load_u8 v153, v153, s[12:15], 0 offen
	buffer_load_u8 v154, v154, s[12:15], 0 offen
	buffer_load_u8 v155, v155, s[12:15], 0 offen
	buffer_load_u8 v156, v156, s[12:15], 0 offen
	buffer_load_u8 v136, v136, s[12:15], 0 offen
	buffer_load_u8 v143, v143, s[12:15], 0 offen
	buffer_load_u8 v150, v150, s[12:15], 0 offen
	buffer_load_u8 v157, v157, s[12:15], 0 offen
	buffer_load_u8 v158, v158, s[12:15], 0 offen
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_add_nc_u32_e32 v33, 0, v118
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1448 25                       ; ragged.py:1448:25
	s_add_i32 s14, s19, 32
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cmp_lt_i32 s19, 0
	s_mov_b32 s19, s14
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt vmcnt(39)
	ds_store_b8 v122, v38
	s_waitcnt vmcnt(38)
	ds_store_b8 v122, v42 offset:512
	s_waitcnt vmcnt(37)
	ds_store_b8 v123, v39
	s_waitcnt vmcnt(36)
	ds_store_b8 v123, v43 offset:512
	s_waitcnt vmcnt(35)
	ds_store_b8 v124, v40
	s_waitcnt vmcnt(34)
	ds_store_b8 v124, v44 offset:512
	s_waitcnt vmcnt(32)
	ds_store_b8 v125, v41
	ds_store_b8 v125, v45 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[45:48], v33 offset1:1
	ds_load_2addr_stride64_b64 v[41:44], v126 offset1:1
	ds_load_2addr_stride64_b64 v[37:40], v127 offset1:1
	ds_load_2addr_stride64_b64 v[33:36], v128 offset1:1
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b8 v122, v159
	s_waitcnt vmcnt(30)
	ds_store_b8 v122, v160 offset:128
	s_waitcnt vmcnt(29)
	ds_store_b8 v122, v161 offset:256
	s_waitcnt vmcnt(28)
	ds_store_b8 v122, v162 offset:384
	s_waitcnt vmcnt(27)
	ds_store_b8 v122, v163 offset:512
	s_waitcnt vmcnt(26)
	ds_store_b8 v122, v164 offset:640
	s_waitcnt vmcnt(25)
	ds_store_b8 v122, v135 offset:768
	s_waitcnt vmcnt(24)
	ds_store_b8 v122, v165 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b8 v122, v137 offset:1152
	s_waitcnt vmcnt(22)
	ds_store_b8 v122, v138 offset:1280
	s_waitcnt vmcnt(21)
	ds_store_b8 v122, v139 offset:1408
	s_waitcnt vmcnt(20)
	ds_store_b8 v122, v140 offset:1536
	s_waitcnt vmcnt(19)
	ds_store_b8 v122, v141 offset:1664
	s_waitcnt vmcnt(18)
	ds_store_b8 v122, v142 offset:1792
	s_waitcnt vmcnt(17)
	ds_store_b8 v122, v166 offset:2048
	s_waitcnt vmcnt(16)
	ds_store_b8 v122, v144 offset:2176
	s_waitcnt vmcnt(15)
	ds_store_b8 v122, v145 offset:2304
	s_waitcnt vmcnt(14)
	ds_store_b8 v122, v146 offset:2432
	s_waitcnt vmcnt(13)
	ds_store_b8 v122, v147 offset:2560
	s_waitcnt vmcnt(12)
	ds_store_b8 v122, v148 offset:2688
	s_waitcnt vmcnt(11)
	ds_store_b8 v122, v149 offset:2816
	s_waitcnt vmcnt(10)
	ds_store_b8 v122, v151 offset:3072
	s_waitcnt vmcnt(9)
	ds_store_b8 v122, v152 offset:3200
	s_waitcnt vmcnt(8)
	ds_store_b8 v122, v153 offset:3328
	s_waitcnt vmcnt(7)
	ds_store_b8 v122, v154 offset:3456
	s_waitcnt vmcnt(6)
	ds_store_b8 v122, v155 offset:3584
	s_waitcnt vmcnt(5)
	ds_store_b8 v122, v156 offset:3712
	s_waitcnt vmcnt(4)
	ds_store_b8 v129, v136
	s_waitcnt vmcnt(3)
	ds_store_b8 v130, v143
	s_waitcnt vmcnt(2)
	ds_store_b8 v131, v150
	s_waitcnt vmcnt(1)
	ds_store_b8 v122, v157 offset:3840
	s_waitcnt vmcnt(0)
	ds_store_b8 v132, v158
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1438 35                       ; ragged.py:1438:35
	ds_load_u8 v135, v119 offset:640
	ds_load_u8 v136, v119 offset:512
	ds_load_u8 v137, v119 offset:896
	ds_load_u8 v138, v119 offset:960
	ds_load_u8 v139, v119 offset:832
	ds_load_u8 v140, v119 offset:704
	ds_load_u8 v141, v119 offset:768
	ds_load_u8 v142, v119 offset:576
	ds_load_u8 v143, v119 offset:128
	ds_load_u8 v144, v119
	ds_load_u8 v145, v119 offset:384
	ds_load_u8 v146, v119 offset:256
	ds_load_u8 v147, v119 offset:448
	ds_load_u8 v148, v119 offset:320
	ds_load_u8 v149, v119 offset:192
	ds_load_u8 v150, v119 offset:64
	ds_load_u8 v151, v119 offset:1664
	ds_load_u8 v152, v119 offset:1536
	ds_load_u8 v153, v119 offset:1920
	ds_load_u8 v154, v119 offset:1792
	ds_load_u8 v155, v119 offset:1984
	ds_load_u8 v156, v119 offset:1856
	ds_load_u8 v157, v119 offset:1728
	ds_load_u8 v158, v119 offset:1600
	ds_load_u8 v159, v119 offset:1152
	ds_load_u8 v160, v119 offset:1024
	ds_load_u8 v161, v119 offset:1472
	ds_load_u8 v162, v119 offset:1344
	ds_load_u8 v163, v119 offset:1408
	ds_load_u8 v164, v119 offset:1280
	ds_load_u8 v165, v119 offset:1216
	ds_load_u8 v166, v119 offset:1088
	ds_load_u8 v167, v119 offset:2688
	ds_load_u8 v168, v119 offset:2560
	ds_load_u8 v169, v119 offset:2944
	ds_load_u8 v170, v119 offset:2816
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v119 offset:2176
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v137, v141, v137, 0xc0c0004
	ds_load_u8 v141, v119 offset:2048
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	ds_load_u8 v142, v119 offset:3712
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v119 offset:3968
	v_perm_b32 v147, v148, v147, 0xc0c0004
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v119 offset:2432
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v119 offset:2304
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v119 offset:3008
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v119 offset:4032
	ds_load_u8 v148, v119 offset:3840
	ds_load_u8 v139, v119 offset:3584
	ds_load_u8 v158, v119 offset:2496
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v119 offset:2368
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v119 offset:2240
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v119 offset:2112
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v119 offset:3904
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v171, v141, v136, 0xc0c0004
	ds_load_u8 v136, v119 offset:3776
	ds_load_u8 v141, v119 offset:3648
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v146, v146, v144, 0xc0c0004
	v_perm_b32 v153, v154, v153, 0xc0c0004
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v119 offset:2752
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v119 offset:2624
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v148, v148, v150, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v172, v139, v142, 0xc0c0004
	ds_load_u8 v139, v119 offset:3200
	ds_load_u8 v154, v119 offset:2880
	ds_load_u8 v142, v119 offset:3072
	ds_load_u8 v144, v119 offset:3520
	ds_load_u8 v150, v119 offset:3392
	ds_load_u8 v173, v119 offset:3264
	ds_load_u8 v174, v119 offset:3136
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v156, v156, v158, 0xc0c0004
	v_lshl_or_b32 v138, v138, 16, v140
	v_lshl_or_b32 v140, v153, 16, v151
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v158, v141, v136, 0xc0c0004
	v_lshl_or_b32 v136, v137, 16, v135
	v_lshl_or_b32 v135, v145, 16, v143
	v_lshl_or_b32 v137, v147, 16, v149
	v_lshl_or_b32 v141, v161, 16, v165
	v_lshl_or_b32 v143, v146, 16, v171
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v160, v164, v160, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[135:136], v[45:46], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[137:138], v[45:46], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v175, v142, v139, 0xc0c0004
	ds_load_u8 v139, v119 offset:3456
	ds_load_u8 v142, v119 offset:3328
	v_perm_b32 v152, v154, v152, 0xc0c0004
	v_perm_b32 v154, v162, v166, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[135:136], v[47:48], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[137:138], v[47:48], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v162, v170, v168, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v164, v174, v173, 0xc0c0004
	v_perm_b32 v150, v150, v144, 0xc0c0004
	v_lshl_or_b32 v144, v169, 16, v167
	v_lshl_or_b32 v146, v148, 16, v172
	v_lshl_or_b32 v148, v152, 16, v160
	v_lshl_or_b32 v147, v156, 16, v154
	v_lshl_or_b32 v45, v162, 16, v158
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v142, v139, 0xc0c0004
	v_lshl_or_b32 v139, v163, 16, v159
	v_lshl_or_b32 v142, v155, 16, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v145, v176, 16, v175
	v_wmma_i32_16x16x16_iu4 v[1:8], v[139:140], v[41:42], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[141:142], v[41:42], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[139:140], v[43:44], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[141:142], v[43:44], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v44, v150, 16, v164
	v_wmma_i32_16x16x16_iu4 v[1:8], v[143:144], v[37:38], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[147:148], v[37:38], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[143:144], v[39:40], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[147:148], v[39:40], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[145:146], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[44:45], v[33:34], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[145:146], v[35:36], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[44:45], v[35:36], v[25:32] neg_lo:[1,1,0]
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v48, v1
	v_cvt_f32_i32_e32 v47, v2
	v_cvt_f32_i32_e32 v46, v3
	v_cvt_f32_i32_e32 v45, v4
	v_cvt_f32_i32_e32 v44, v5
	v_cvt_f32_i32_e32 v43, v6
	v_cvt_f32_i32_e32 v42, v7
	v_cvt_f32_i32_e32 v41, v8
	v_cvt_f32_i32_e32 v40, v9
	v_cvt_f32_i32_e32 v39, v10
	v_cvt_f32_i32_e32 v38, v11
	v_cvt_f32_i32_e32 v37, v12
	v_cvt_f32_i32_e32 v36, v13
	v_cvt_f32_i32_e32 v35, v14
	v_cvt_f32_i32_e32 v34, v15
	v_cvt_f32_i32_e32 v33, v16
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
.LBB0_7:                                ; %._crit_edge16
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v1, v114, 16, 1
	v_bfe_u32 v5, v115, 16, 1
	v_bfe_u32 v3, v117, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v114, v114
	v_bfe_u32 v4, v116, 16, 1
	v_add3_u32 v1, v114, v1, 0x7fff
	v_add3_u32 v5, v115, v5, 0x7fff
	v_cmp_o_f32_e64 s2, v115, v115
	v_bfe_u32 v6, v113, 16, 1
	v_bfe_u32 v9, v107, 16, 1
	v_add3_u32 v3, v117, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v117, v117
	v_add3_u32 v4, v116, v4, 0x7fff
	v_cmp_o_f32_e64 s1, v116, v116
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s2
	v_bfe_u32 v7, v111, 16, 1
	v_add3_u32 v6, v113, v6, 0x7fff
	v_bfe_u32 v8, v109, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v113, v113
	v_add3_u32 v9, v107, v9, 0x7fff
	v_cmp_o_f32_e64 s2, v107, v107
	v_bfe_u32 v10, v106, 16, 1
	v_bfe_u32 v13, v103, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s0
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s1
	v_add3_u32 v7, v111, v7, 0x7fff
	v_cmp_o_f32_e64 s0, v111, v111
	v_add3_u32 v8, v109, v8, 0x7fff
	v_cmp_o_f32_e64 s1, v109, v109
	v_cndmask_b16 v6.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s2
	v_bfe_u32 v11, v105, 16, 1
	v_add3_u32 v10, v106, v10, 0x7fff
	v_bfe_u32 v12, v104, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v106, v106
	v_add3_u32 v13, v103, v13, 0x7fff
	v_cmp_o_f32_e64 s2, v103, v103
	v_bfe_u32 v14, v102, 16, 1
	v_bfe_u32 v17, v99, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s0
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s1
	v_add3_u32 v11, v105, v11, 0x7fff
	v_cmp_o_f32_e64 s0, v105, v105
	v_add3_u32 v12, v104, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v104, v104
	v_cndmask_b16 v10.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s2
	v_bfe_u32 v15, v101, 16, 1
	v_add3_u32 v14, v102, v14, 0x7fff
	v_bfe_u32 v16, v100, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v102, v102
	v_add3_u32 v17, v99, v17, 0x7fff
	v_cmp_o_f32_e64 s2, v99, v99
	v_bfe_u32 v18, v98, 16, 1
	v_bfe_u32 v21, v95, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s0
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s1
	v_add3_u32 v15, v101, v15, 0x7fff
	v_cmp_o_f32_e64 s0, v101, v101
	v_add3_u32 v16, v100, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v100, v100
	v_cndmask_b16 v14.l, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s2
	v_bfe_u32 v19, v97, 16, 1
	v_add3_u32 v18, v98, v18, 0x7fff
	v_bfe_u32 v20, v96, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	v_add3_u32 v21, v95, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v95, v95
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s0
	v_cndmask_b16 v16.l, 0x7fff, v16.h, s1
	v_add3_u32 v19, v97, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v97, v97
	v_add3_u32 v20, v96, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v96, v96
	v_cndmask_b16 v1.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v94, 16, 1
	v_cndmask_b16 v5.h, 0x7fff, v21.h, s2
	v_bfe_u32 v21, v91, 16, 1
	v_cndmask_b16 v3.h, 0x7fff, v19.h, s0
	v_cndmask_b16 v4.h, 0x7fff, v20.h, s1
	v_bfe_u32 v19, v93, 16, 1
	v_add3_u32 v18, v94, v18, 0x7fff
	v_bfe_u32 v20, v92, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v94, v94
	v_add3_u32 v21, v91, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v91, v91
	v_add3_u32 v19, v93, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v93, v93
	v_add3_u32 v20, v92, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v92, v92
	v_cndmask_b16 v6.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v90, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v21.h, s2
	v_bfe_u32 v21, v87, 16, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_bfe_i32 v2, v0, 6, 1
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v7.h, 0x7fff, v19.h, s0
	v_cndmask_b16 v8.h, 0x7fff, v20.h, s1
	v_bfe_u32 v19, v89, 16, 1
	v_add3_u32 v18, v90, v18, 0x7fff
	v_bfe_u32 v20, v88, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	v_add3_u32 v21, v87, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v87, v87
	v_bfe_u32 v22, v86, 16, 1
	v_add3_u32 v19, v89, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v89, v89
	v_add3_u32 v20, v88, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v88, v88
	v_cndmask_b16 v10.h, 0x7fff, v18.h, vcc_lo
	v_cndmask_b16 v13.h, 0x7fff, v21.h, s2
	v_add3_u32 v18, v86, v22, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v21, 2, v49
	v_and_b32_e32 v22, 32, v0
	v_and_b32_e32 v23, 0x1040, v2
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v11.h, 0x7fff, v19.h, s0
	v_cndmask_b16 v12.h, 0x7fff, v20.h, s1
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	v_bfe_u32 v19, v85, 16, 1
	v_bfe_u32 v20, v84, 16, 1
	v_bfe_u32 v24, v82, 16, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor3_b32 v21, v21, v22, v23
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s0, v85, v85
	v_add3_u32 v19, v85, v19, 0x7fff
	v_add3_u32 v20, v84, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v84, v84
	v_add3_u32 v22, v82, v24, 0x7fff
	v_cmp_o_f32_e64 s2, v82, v82
	v_cndmask_b16 v14.h, 0x7fff, v18.h, vcc_lo
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v18, v83, 8, v21
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v15.h, 0x7fff, v19.h, s0
	v_cndmask_b16 v16.h, 0x7fff, v20.h, s1
	v_cndmask_b16 v17.h, 0x7fff, v22.h, s2
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v22, 2, v0
	v_add_nc_u32_e32 v19, 0, v18
	v_xad_u32 v20, v18, 4, 0
	v_xad_u32 v21, v18, 8, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v19, v1, v10 offset1:32
	v_xad_u32 v1, v18, 12, 0
	ds_store_2addr_b32 v20, v3, v11 offset1:32
	ds_store_2addr_b32 v21, v4, v12 offset1:32
	v_and_b32_e32 v3, 0xbc, v22
	v_and_b32_e32 v2, 0x104, v2
	v_xad_u32 v4, v18, 20, 0
	ds_store_2addr_b32 v1, v5, v13 offset1:32
	v_xad_u32 v1, v18, 16, 0
	v_bfe_i32 v5, v0, 4, 1
	v_xor_b32_e32 v2, v2, v3
	ds_store_2addr_b32 v1, v6, v14 offset1:32
	ds_store_2addr_b32 v4, v7, v15 offset1:32
	v_xad_u32 v3, v18, 24, 0
	v_and_or_b32 v1, 0x1040, v5, v2
	v_xad_u32 v10, v18, 28, 0
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
	s_lshr_b32 s0, s35, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_add_i32 s0, s35, s0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s37, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v0, s36, 6, v0
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_ashr_i32 s1, s0, 1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v3
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
	v_add_nc_u32_e32 v18, s33, v3
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_9:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_11
; %bb.10:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_11:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_13
; %bb.12:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_13:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 6, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_15
; %bb.14:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_15:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 8, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_17
; %bb.16:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_17:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 10, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_19
; %bb.18:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_19:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 12, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_21
; %bb.20:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_21:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 14, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_23
; %bb.22:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_23:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_25
; %bb.24:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
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
	v_add_co_u32 v16, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s23, v19, s0
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
	v_cmp_gt_i32_e64 s0, s34, v16
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_27
; %bb.26:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v16, s33, v16
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
	v_add_co_u32 v14, s0, s22, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s23, v17, s0
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
	v_cmp_gt_i32_e64 s0, s34, v14
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_29
; %bb.28:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v14, s33, v14
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
	v_add_co_u32 v12, s0, s22, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s23, v15, s0
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
	v_cmp_gt_i32_e64 s0, s34, v12
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_31
; %bb.30:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v12, s33, v12
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
	v_add_co_u32 v10, s0, s22, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s23, v13, s0
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
	v_cmp_gt_i32_e64 s0, s34, v10
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_33
; %bb.32:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v10, s33, v10
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
	v_add_co_u32 v8, s0, s22, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s23, v11, s0
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
	v_cmp_gt_i32_e64 s0, s34, v8
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_35
; %bb.34:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v8, s33, v8
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
	v_add_co_u32 v6, s0, s22, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, s23, v9, s0
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
	v_cmp_gt_i32_e64 s0, s34, v6
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_37
; %bb.36:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v6, s33, v6
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
	v_add_co_u32 v4, s0, s22, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s23, v7, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[4:5], v8, off
.LBB0_37:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v3, 30, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v3
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_39
; %bb.38:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v3, s33, v3
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
	v_add_co_u32 v0, vcc_lo, s22, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v4, vcc_lo
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 177
		.amdhsa_next_free_sgpr 43
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.num_vgpr, 177
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8796
; TotalNumSgprs: 45
; NumVgprs: 177
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 45
; NumVGPRsForWavesPerEU: 177
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     177
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
