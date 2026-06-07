	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[30:31], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s8, s2
	s_load_b256 s[20:27], s[0:1], 0x0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v57, 4, v0
	v_lshrrev_b32_e32 v3, 2, v0
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v105, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v58, 15, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v2, 0x70, v57
	v_lshrrev_b32_e32 v29, 4, v0
	s_load_b64 s[28:29], s[0:1], 0x20
	v_and_b32_e32 v59, 48, v105
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v103, v4, 16, v58
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v30, 0, v57
	s_mov_b32 s45, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v29, v29, 1, v59
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v104, 32, v103
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s31, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s30, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s11, s11, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s5, s5, 2
	s_mov_b64 s[16:17], s[22:23]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s5
	s_mov_b32 s23, 0x31027000
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s19, s23
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s18, s22
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v31, 2, v29
	v_or_b32_e32 v32, 4, v29
	v_or_b32_e32 v33, 6, v29
	v_or_b32_e32 v34, 8, v29
	v_or_b32_e32 v35, 10, v29
	v_or_b32_e32 v36, 12, v29
	v_or_b32_e32 v37, 14, v29
	v_or_b32_e32 v38, 64, v29
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_readfirstlane_b32 s7, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v39, 0x42, v29
	v_or_b32_e32 v40, 0x44, v29
	v_or_b32_e32 v41, 0x46, v29
	v_or_b32_e32 v42, 0x48, v29
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_mul_f32 s7, s7, 0x4f7ffffe
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v43, 0x4a, v29
	v_or_b32_e32 v44, 0x4c, v29
	v_or_b32_e32 v45, 0x4e, v29
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s8, s6, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s6, s6, s5
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s9, s8
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s6
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s9, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s6, s2
	s_abs_i32 s7, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s10, s7
	s_sub_i32 s11, 0, s7
	v_rcp_iflag_f32_e32 v1, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s10, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 48, v57
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s10, s10, 0x4f7ffffe
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[5:6], null, s30, v3, v[1:2]
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[6:7], null, s31, v4, v[2:3]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s10, s10
	s_mul_i32 s11, s11, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s11
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v7, s31, 5, v6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_add_i32 s10, s10, s5
	s_xor_b32 s5, s2, s9
	s_mul_hi_u32 s10, s6, s10
	s_ashr_i32 s5, s5, 31
	s_mul_i32 s11, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s10, 1
	s_sub_i32 s12, s6, s7
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s10, s11, s10
	s_cselect_b32 s6, s12, s6
	s_add_i32 s11, s10, 1
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s6, s11, s10
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s14, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s6, s6, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s3, s4, 0x7f
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s12, s6, s5
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s7, s4, 63
.Ltmp15:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s4, s3, 31
.Ltmp16:
	.loc	1 296 28 is_stmt 1              ; generate_amdgcn.py:296:28
	s_mul_i32 s9, s12, s9
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s4, s4, 25
.Ltmp18:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s9
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s3, s3, s4
.Ltmp20:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s8
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s12, 7
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s35, s3, 7
.Ltmp22:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s34, s2, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s11, s31, s14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s7, 63
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s10, s30, s14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s33, s11
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 346 30 is_stmt 1              ; generate_amdgcn.py:346:30
	v_add3_u32 v5, s10, s34, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s7, 0x7f
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v8, s4, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s44, s31, 6
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s15, s30, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v9, s4, v7
	s_add_i32 s4, s4, s44
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v11, s15, v5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v17, s4, v6
	v_add_nc_u32_e32 v18, s4, v7
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v10, 0x80000000, v5, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v12, 0x80000000, v8, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v19, 0x80000000, v11, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v13, 0x80000000, v9, s3
	v_cndmask_b32_e64 v21, 0x80000000, v17, s2
	v_cndmask_b32_e64 v25, 0x80000000, v18, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[5:8], v10, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v12, s[16:19], 0 offen
	buffer_load_b128 v[13:16], v13, s[16:19], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[17:20], v19, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[21:24], v21, s[16:19], 0 offen
	buffer_load_b128 v[25:28], v25, s[16:19], 0 offen
	v_or_b32_e32 v119, s33, v29
	v_or_b32_e32 v118, s33, v31
	v_or_b32_e32 v29, s34, v103
	v_or_b32_e32 v31, s34, v104
	v_or_b32_e32 v117, s33, v32
	v_or_b32_e32 v116, s33, v33
	v_or_b32_e32 v115, s33, v34
	v_mul_lo_u32 v120, v29, s35
	v_mul_lo_u32 v121, v31, s35
	v_or_b32_e32 v114, s33, v35
	v_or_b32_e32 v113, s33, v36
	v_or_b32_e32 v112, s33, v37
	v_or_b32_e32 v111, s33, v38
	v_or_b32_e32 v110, s33, v39
	v_or_b32_e32 v109, s33, v40
	v_or_b32_e32 v108, s33, v41
	v_or_b32_e32 v106, s33, v42
	v_or_b32_e32 v107, s33, v43
	v_or_b32_e32 v77, s33, v44
	v_or_b32_e32 v78, s33, v45
	s_mov_b32 s4, 0
	s_mov_b64 s[12:13], s[26:27]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_lt_i32 s7, 0xc0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(5)
	ds_store_b128 v30, v[5:8] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v30, v[9:12]
	s_waitcnt vmcnt(3)
	ds_store_b128 v30, v[13:16] offset:4096
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v30, v[17:20] offset:20480
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v30, v[21:24] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v30, v[25:28] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v4, s14, v4
.Ltmp23:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s7, s7, 6
.Ltmp24:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s1, s6, 7
	s_add_i32 s26, s7, -2
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_add_nc_u32_e32 v5, 0xa0, v4
	v_add_nc_u32_e32 v4, 0x80, v4
	v_add3_u32 v3, s14, v3, 0x80
	s_lshl_b32 s5, s5, 7
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v99, 0
	v_mul_lo_u32 v5, s31, v5
	v_mul_lo_u32 v4, s31, v4
	v_mul_lo_u32 v3, s30, v3
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_add3_u32 v5, v5, s1, v2
	v_add3_u32 v2, v4, s1, v2
	v_add3_u32 v60, v3, s34, v1
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v98, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v61, s5, v5
	v_subrev_nc_u32_e32 v62, s5, v2
	s_mov_b32 s5, s4
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v69, 0
	v_mov_b32_e32 v72, 0
	s_and_b32 s37, s25, 0xffff
	s_mov_b32 s36, s24
	s_and_b32 s41, s13, 0xffff
	s_mov_b32 s40, s12
	s_add_i32 s27, 0, 0x4000
	s_add_i32 s0, 0, 0x5000
	s_add_i32 s1, 0, 0x2000
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	s_mov_b32 s38, s22
	s_mov_b32 s39, s23
	s_mov_b32 s42, s22
	s_mov_b32 s43, s23
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v63, s27, v103
	buffer_load_b128 v[41:44], v60, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v64, s4, v58, v59
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v9, v63 offset:832
	ds_load_u8 v10, v63 offset:768
	ds_load_u8 v11, v63 offset:960
	ds_load_u8 v12, v63 offset:896
	ds_load_u8 v13, v63 offset:576
	ds_load_u8 v14, v63 offset:512
	ds_load_u8 v15, v63 offset:704
	ds_load_u8 v16, v63 offset:640
	ds_load_u8 v17, v63 offset:320
	ds_load_u8 v18, v63 offset:256
	ds_load_u8 v19, v63 offset:448
	ds_load_u8 v20, v63 offset:384
	ds_load_u8 v21, v63 offset:64
	ds_load_u8 v22, v63
	ds_load_u8 v23, v63 offset:192
	ds_load_u8 v24, v63 offset:128
	ds_load_u8 v25, v64 offset:1664
	ds_load_u8 v29, v64 offset:1536
	ds_load_u8 v30, v64 offset:1920
	ds_load_u8 v31, v64 offset:1792
	ds_load_u8 v32, v64 offset:1152
	ds_load_u8 v33, v64 offset:1024
	ds_load_u8 v34, v64 offset:1408
	ds_load_u8 v35, v64 offset:1280
	ds_load_u8 v37, v64 offset:640
	ds_load_u8 v38, v64 offset:512
	ds_load_u8 v39, v64 offset:896
	ds_load_u8 v40, v64 offset:768
	ds_load_u8 v45, v64 offset:128
	ds_load_u8 v46, v64
	ds_load_u8 v47, v64 offset:384
	ds_load_u8 v48, v64 offset:256
	ds_load_u8 v49, v63 offset:1856
	ds_load_u8 v50, v63 offset:1792
	ds_load_u8 v51, v63 offset:1984
	ds_load_u8 v52, v63 offset:1920
	ds_load_u8 v53, v63 offset:1600
	ds_load_u8 v54, v63 offset:1536
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v14, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v15, v20, v19, 0xc0c0004
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v63 offset:1728
	ds_load_u8 v16, v63 offset:1408
	ds_load_u8 v20, v63 offset:1152
	v_lshl_or_b32 v27, v14, 16, v13
	v_perm_b32 v13, v18, v17, 0xc0c0004
	ds_load_u8 v14, v63 offset:1472
	ds_load_u8 v18, v63 offset:1216
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v63 offset:1664
	v_lshl_or_b32 v26, v15, 16, v13
	ds_load_u8 v13, v63 offset:1088
	ds_load_u8 v15, v63 offset:1024
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v17, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v19, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v21, v29, v25, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v23, v31, v30, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v29, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v30, v35, v34, 0xc0c0004
	ds_load_u8 v22, v64 offset:3712
	ds_load_u8 v55, v64 offset:3968
	ds_load_u8 v56, v64 offset:3840
	ds_load_u8 v24, v64 offset:3584
	v_lshl_or_b32 v25, v19, 16, v17
	v_lshl_or_b32 v36, v23, 16, v21
	v_lshl_or_b32 v35, v30, 16, v29
	ds_load_u8 v17, v64 offset:3200
	ds_load_u8 v19, v64 offset:3072
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v21, v38, v37, 0xc0c0004
	ds_load_u8 v23, v64 offset:3456
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v29, v40, v39, 0xc0c0004
	ds_load_u8 v37, v64 offset:3328
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v39, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v13, v15, v13, 0xc0c0004
	ds_load_u8 v15, v64 offset:1472
	ds_load_u8 v54, v63 offset:864
	v_perm_b32 v18, v20, v18, 0xc0c0004
	ds_load_u8 v20, v64 offset:1344
	v_lshl_or_b32 v34, v29, 16, v21
	ds_load_u8 v21, v64 offset:2688
	ds_load_u8 v38, v64 offset:2560
	v_perm_b32 v31, v50, v49, 0xc0c0004
	v_perm_b32 v32, v52, v51, 0xc0c0004
	v_perm_b32 v10, v12, v10, 0xc0c0004
	v_perm_b32 v29, v46, v45, 0xc0c0004
	ds_load_u8 v45, v64 offset:2944
	v_perm_b32 v30, v48, v47, 0xc0c0004
	v_lshl_or_b32 v32, v32, 16, v31
	v_lshl_or_b32 v31, v10, 16, v39
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v22, v24, v22, 0xc0c0004
	v_perm_b32 v39, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v64 offset:960
	ds_load_u8 v24, v64 offset:704
	v_lshl_or_b32 v28, v11, 16, v9
	ds_load_u8 v9, v63 offset:1344
	ds_load_u8 v11, v63 offset:1280
	v_lshl_or_b32 v33, v30, 16, v29
	v_lshl_or_b32 v29, v18, 16, v13
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v15, v20, v15, 0xc0c0004
	ds_load_u8 v20, v64 offset:3136
	ds_load_u8 v46, v64 offset:2816
	v_perm_b32 v23, v37, v23, 0xc0c0004
	ds_load_u8 v37, v64 offset:832
	ds_load_u8 v51, v64 offset:576
	v_lshl_or_b32 v40, v39, 16, v22
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v18, v38, v21, 0xc0c0004
	v_lshl_or_b32 v39, v23, 16, v17
	ds_load_u8 v13, v64 offset:192
	ds_load_u8 v17, v64 offset:64
	ds_load_u8 v21, v64 offset:448
	ds_load_u8 v23, v64 offset:320
	ds_load_u8 v47, v64 offset:2176
	ds_load_u8 v49, v64 offset:2432
	v_perm_b32 v14, v16, v14, 0xc0c0004
	ds_load_u8 v38, v64 offset:3776
	ds_load_u8 v10, v64 offset:1728
	ds_load_u8 v50, v64 offset:1600
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v64 offset:1984
	ds_load_u8 v16, v64 offset:1856
	ds_load_u8 v55, v63 offset:800
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s14, 31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v30, v14, 16, v9
	ds_load_u8 v9, v64 offset:1216
	ds_load_u8 v14, v64 offset:1088
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v19, v37, v19, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v24, v51, v24, 0xc0c0004
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s4, s4, 25
	s_mov_b32 s27, s0
	s_add_i32 s4, s14, s4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v13, v17, v13, 0xc0c0004
	ds_load_u8 v17, v64 offset:2752
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v21, v23, v21, 0xc0c0004
	ds_load_u8 v23, v64 offset:2624
	ds_load_u8 v12, v64 offset:2304
	ds_load_u8 v48, v64 offset:2048
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v10, v50, v10, 0xc0c0004
	ds_load_u8 v37, v64 offset:3392
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s6, s4, s31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v11, v16, v11, 0xc0c0004
	ds_load_u8 v16, v64 offset:3904
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s35
	s_mov_b32 s5, s14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	ds_load_u8 v14, v64 offset:3264
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s0, s45, 1
	v_add_nc_u32_e32 v60, s15, v60
	s_cmp_lt_i32 s0, 2
	s_cselect_b32 s45, s0, 0
	s_add_i32 s26, s26, -1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v17, v23, v17, 0xc0c0004
	ds_load_u8 v23, v64 offset:2496
	v_perm_b32 v22, v46, v45, 0xc0c0004
	ds_load_u8 v46, v64 offset:3648
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v45, v48, v47, 0xc0c0004
	v_perm_b32 v12, v12, v49, 0xc0c0004
	ds_load_u8 v48, v64 offset:3520
	ds_load_u8 v47, v64 offset:4032
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s14, s14, 64
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v46, v38, 0xc0c0004
	ds_load_u8 v38, v64 offset:3008
	ds_load_u8 v46, v64 offset:2880
	v_perm_b32 v14, v20, v14, 0xc0c0004
	ds_load_u8 v20, v64 offset:2240
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v50, v37, v48, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v16, v16, v47, 0xc0c0004
	v_lshl_or_b32 v48, v11, 16, v10
	v_lshl_or_b32 v47, v15, 16, v9
	v_lshl_or_b32 v51, v50, 16, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v52, v16, 16, v49
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v53, v46, v38, 0xc0c0004
	ds_load_u8 v38, v64 offset:2368
	ds_load_u8 v37, v64 offset:2112
	v_lshl_or_b32 v46, v19, 16, v24
	v_lshl_or_b32 v50, v53, 16, v17
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v23, v38, v23, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v37, v20, 0xc0c0004
	v_lshl_or_b32 v37, v12, 16, v45
	v_lshl_or_b32 v45, v21, 16, v13
	v_lshl_or_b32 v38, v22, 16, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v49, v23, 16, v20
	v_wmma_i32_16x16x16_iu8 v[17:24], v[33:36], v[25:28], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[45:48], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v63 offset:992
	ds_load_u8 v26, v63 offset:928
	ds_load_u8 v27, v63 offset:608
	ds_load_u8 v28, v63 offset:544
	v_wmma_i32_16x16x16_iu8 v[17:24], v[37:40], v[29:32], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[49:52], v[29:32], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v30, v63 offset:736
	v_perm_b32 v29, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v63 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	v_lshl_or_b32 v56, v25, 16, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v26, 16, v27
	ds_load_u8 v25, v63 offset:352
	ds_load_u8 v26, v63 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v63 offset:480
	ds_load_u8 v27, v63 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v26, 16, v25
	ds_load_u8 v25, v63 offset:32
	ds_load_u8 v26, v63 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	ds_load_u8 v26, v63 offset:224
	ds_load_u8 v27, v63 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v26, 16, v25
	ds_load_u8 v25, v63 offset:1888
	ds_load_u8 v26, v63 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v63 offset:2016
	ds_load_u8 v27, v63 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v63 offset:1632
	ds_load_u8 v28, v63 offset:1568
	v_lshl_or_b32 v68, v26, 16, v25
	ds_load_u8 v25, v63 offset:1376
	ds_load_u8 v26, v63 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v63 offset:1760
	ds_load_u8 v29, v63 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v28, 16, v27
	ds_load_u8 v26, v63 offset:1504
	ds_load_u8 v27, v63 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v66, v26, 16, v25
	ds_load_u8 v25, v63 offset:1120
	ds_load_u8 v26, v63 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v63 offset:1248
	ds_load_u8 v27, v63 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[33:36], v[53:56], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[37:40], v[65:68], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[45:48], v[53:56], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[49:52], v[65:68], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v45, v63 offset:2880
	ds_load_u8 v46, v63 offset:2816
	ds_load_u8 v47, v63 offset:3008
	ds_load_u8 v48, v63 offset:2944
	ds_load_u8 v49, v63 offset:2624
	ds_load_u8 v50, v63 offset:2560
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v63 offset:2752
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v63 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v48, v46, 0xc0c0004
	v_lshl_or_b32 v48, v47, 16, v45
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v47, v46, 16, v49
	ds_load_u8 v45, v63 offset:2368
	ds_load_u8 v46, v63 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v63 offset:2496
	ds_load_u8 v49, v63 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v49, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v63 offset:2112
	ds_load_u8 v49, v63 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v49, v45, 0xc0c0004
	ds_load_u8 v49, v63 offset:2240
	ds_load_u8 v50, v63 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v49, 16, v45
	ds_load_u8 v49, v64 offset:5760
	ds_load_u8 v50, v64 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v64 offset:6016
	ds_load_u8 v51, v64 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v64 offset:5248
	ds_load_u8 v52, v64 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v64 offset:5504
	ds_load_u8 v53, v64 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v53, v52, 0xc0c0004
	v_lshl_or_b32 v52, v50, 16, v49
	ds_load_u8 v49, v64 offset:4736
	ds_load_u8 v50, v64 offset:4608
	v_lshl_or_b32 v51, v53, 16, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v64 offset:4992
	ds_load_u8 v53, v64 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v53, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v64 offset:4224
	ds_load_u8 v53, v64 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v53, v49, 0xc0c0004
	ds_load_u8 v53, v64 offset:4480
	ds_load_u8 v54, v64 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v53, 16, v49
	ds_load_u8 v53, v64 offset:5824
	ds_load_u8 v54, v64 offset:5696
	v_wmma_i32_16x16x16_iu8 v[17:24], v[49:52], v[45:48], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v64 offset:6080
	ds_load_u8 v55, v64 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v64 offset:5312
	ds_load_u8 v56, v64 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	ds_load_u8 v56, v64 offset:5568
	ds_load_u8 v65, v64 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v65, v56, 0xc0c0004
	v_lshl_or_b32 v56, v54, 16, v53
	ds_load_u8 v53, v64 offset:4800
	ds_load_u8 v54, v64 offset:4672
	v_lshl_or_b32 v55, v65, 16, v55
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v64 offset:5056
	ds_load_u8 v65, v64 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v65, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v53, v64 offset:4288
	ds_load_u8 v65, v64 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v65, v53, 0xc0c0004
	ds_load_u8 v65, v64 offset:4544
	ds_load_u8 v66, v64 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v65, 16, v53
	v_wmma_i32_16x16x16_iu8 v[9:16], v[53:56], v[45:48], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v45, v63 offset:2912
	ds_load_u8 v46, v63 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v63 offset:3040
	ds_load_u8 v47, v63 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v63 offset:2656
	ds_load_u8 v48, v63 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v63 offset:2784
	ds_load_u8 v65, v63 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v65, v48, 0xc0c0004
	v_lshl_or_b32 v48, v46, 16, v45
	ds_load_u8 v45, v63 offset:2400
	ds_load_u8 v46, v63 offset:2336
	v_lshl_or_b32 v47, v65, 16, v47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v63 offset:2528
	ds_load_u8 v65, v63 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v65, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v63 offset:2144
	ds_load_u8 v65, v63 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v65, v45, 0xc0c0004
	ds_load_u8 v65, v63 offset:2272
	ds_load_u8 v66, v63 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v65, 16, v45
	v_wmma_i32_16x16x16_iu8 v[25:32], v[49:52], v[45:48], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[53:56], v[45:48], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v45, v63 offset:3904
	ds_load_u8 v46, v63 offset:3840
	ds_load_u8 v47, v63 offset:4032
	ds_load_u8 v48, v63 offset:3968
	ds_load_u8 v49, v63 offset:3648
	ds_load_u8 v50, v63 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v63 offset:3776
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v63 offset:3712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v48, v46, 0xc0c0004
	v_lshl_or_b32 v48, v47, 16, v45
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v47, v46, 16, v49
	ds_load_u8 v45, v63 offset:3392
	ds_load_u8 v46, v63 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v63 offset:3520
	ds_load_u8 v49, v63 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v49, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v63 offset:3136
	ds_load_u8 v49, v63 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v49, v45, 0xc0c0004
	ds_load_u8 v49, v63 offset:3264
	ds_load_u8 v50, v63 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v49, 16, v45
	ds_load_u8 v49, v64 offset:7808
	ds_load_u8 v50, v64 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v64 offset:8064
	ds_load_u8 v51, v64 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v64 offset:7296
	ds_load_u8 v52, v64 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v64 offset:7552
	ds_load_u8 v53, v64 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v53, v52, 0xc0c0004
	v_lshl_or_b32 v52, v50, 16, v49
	ds_load_u8 v49, v64 offset:6784
	ds_load_u8 v50, v64 offset:6656
	v_lshl_or_b32 v51, v53, 16, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v64 offset:7040
	ds_load_u8 v53, v64 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v53, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v64 offset:6272
	ds_load_u8 v53, v64 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v53, v49, 0xc0c0004
	ds_load_u8 v53, v64 offset:6528
	ds_load_u8 v54, v64 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v53, 16, v49
	ds_load_u8 v53, v64 offset:7872
	ds_load_u8 v54, v64 offset:7744
	v_wmma_i32_16x16x16_iu8 v[17:24], v[49:52], v[45:48], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v64 offset:8128
	ds_load_u8 v55, v64 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v64 offset:7360
	ds_load_u8 v56, v64 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	ds_load_u8 v56, v64 offset:7616
	ds_load_u8 v65, v64 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v65, v56, 0xc0c0004
	v_lshl_or_b32 v56, v54, 16, v53
	ds_load_u8 v53, v64 offset:6848
	ds_load_u8 v54, v64 offset:6720
	v_lshl_or_b32 v55, v65, 16, v55
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v64 offset:7104
	ds_load_u8 v65, v64 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v65, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v53, v64 offset:6336
	ds_load_u8 v65, v64 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v65, v53, 0xc0c0004
	ds_load_u8 v65, v64 offset:6592
	ds_load_u8 v64, v64 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v64, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v64, 16, v53
	v_wmma_i32_16x16x16_iu8 v[9:16], v[53:56], v[45:48], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v45, v63 offset:3936
	ds_load_u8 v46, v63 offset:3872
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v63 offset:4064
	ds_load_u8 v47, v63 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v63 offset:3680
	ds_load_u8 v48, v63 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v63 offset:3808
	ds_load_u8 v64, v63 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v64, v48, 0xc0c0004
	v_lshl_or_b32 v48, v46, 16, v45
	ds_load_u8 v45, v63 offset:3424
	ds_load_u8 v46, v63 offset:3360
	v_lshl_or_b32 v47, v64, 16, v47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v63 offset:3552
	ds_load_u8 v64, v63 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v64, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v63 offset:3168
	ds_load_u8 v64, v63 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v64, v45, 0xc0c0004
	ds_load_u8 v64, v63 offset:3296
	ds_load_u8 v63, v63 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v63, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v63, 16, v45
	v_wmma_i32_16x16x16_iu8 v[25:32], v[49:52], v[45:48], v[25:32] neg_lo:[1,1,0]
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v49, v120, s4, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v51, v119, s6, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[33:40], v[53:56], v[45:48], v[33:40] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v45, v9
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v50, v121, s4, 1
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v49, v49, s[36:39], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v51, v51, s[40:43], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v46, v10
	v_cvt_f32_i32_e32 v47, v11
	v_cvt_f32_i32_e32 v48, v12
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[9:12], v62, s[16:19], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v38, v38
	s_mov_b32 s4, s1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s1, s45, 12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v51, 16, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v51, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v79, v52, v17
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v17, v118, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	buffer_load_u16 v17, v17, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v17, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v102, v52, v18
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v18, v117, s6, 1
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	buffer_load_u16 v18, v18, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v18, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v99, v52, v19
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v19, v116, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	buffer_load_u16 v19, v19, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v19, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v101, v52, v20
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v20, v115, s6, 1
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	buffer_load_u16 v20, v20, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v20, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v95, v52, v21
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v21, v114, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	buffer_load_u16 v21, v21, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v21, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v97, v52, v22
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v22, v113, s6, 1
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	buffer_load_u16 v22, v22, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v22, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v91, v52, v23
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v23, v112, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	buffer_load_u16 v23, v23, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v23, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v93, v52, v24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v24, v111, s6, 1
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	buffer_load_u16 v24, v24, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v24, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v87, v52, v45
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v45, v110, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	buffer_load_u16 v45, v45, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v45, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v89, v52, v46
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v46, v109, s6, 1
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	buffer_load_u16 v46, v46, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v46, 16, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v46, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v83, v52, v47
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v47, v108, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	buffer_load_u16 v47, v47, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v47, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v85, v52, v48
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v48, v106, s6, 1
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	buffer_load_u16 v48, v48, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v48, 16, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v48, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v76, v52, v13
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v13, v107, s6, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	buffer_load_u16 v13, v13, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v52, 16, v13
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v13, v52, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v75, v13, v14
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v13, v77, s6, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v14, 0x80000000, v50 :: v_dual_cndmask_b32 v13, 0x80000000, v13
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v13, v13, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v53, 16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v13, v53, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v71, v13, v15
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v13, v78, s6, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s6, s1, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s1, s6, s1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s0, s6, 0x4000
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v14, v14, s[36:39], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v13, v13, s[40:43], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s26, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v50, 16, v14
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v54, 16, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v14, v50, v51
	v_mul_f32_e32 v13, v54, v49
	v_mul_f32_e32 v49, v50, v52
	v_mul_f32_e32 v20, v50, v20
	v_dual_mul_f32 v19, v50, v19 :: v_dual_add_nc_u32 v52, s1, v57
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v70, v13, v16
	v_fmac_f32_e32 v100, v14, v25
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[13:16], v61, s[16:19], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v17, v50, v17 :: v_dual_fmac_f32 v94, v19, v28
	v_dual_mul_f32 v23, v50, v23 :: v_dual_fmac_f32 v92, v20, v29
	v_mul_f32_e32 v47, v50, v47
	v_dual_mul_f32 v22, v50, v22 :: v_dual_add_nc_u32 v61, s44, v61
	v_dual_mul_f32 v24, v50, v24 :: v_dual_add_nc_u32 v25, s6, v57
	v_mul_f32_e32 v18, v50, v18
	v_dual_mul_f32 v21, v50, v21 :: v_dual_fmac_f32 v98, v17, v26
	v_mul_f32_e32 v45, v50, v45
	v_mul_f32_e32 v48, v50, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v86, v23, v32 :: v_dual_mul_f32 v51, v50, v54
	v_fmac_f32_e32 v80, v47, v36
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v46, v50, v46
	v_mul_f32_e32 v50, v50, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v62, s44, v62
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v96, v18, v27
	v_fmac_f32_e32 v90, v21, v30
	v_fmac_f32_e32 v88, v22, v31
	v_fmac_f32_e32 v84, v24, v33
	v_dual_fmac_f32 v74, v48, v37 :: v_dual_fmac_f32 v73, v49, v38
	v_dual_fmac_f32 v72, v50, v39 :: v_dual_fmac_f32 v69, v51, v40
	v_dual_fmac_f32 v82, v45, v34 :: v_dual_fmac_f32 v81, v46, v35
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v25, v[41:44] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v52, v[9:12]
	s_waitcnt vmcnt(0)
	ds_store_b128 v52, v[13:16] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_add_i32 s16, s5, 0x80
	s_branch .LBB0_5
.LBB0_4:
	s_add_i32 s16, s14, 64
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v79, 0
	s_add_i32 s27, 0, 0x4000
	s_add_i32 s0, 0, 0x5000
	s_add_i32 s1, 0, 0x2000
.LBB0_5:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v1, v59, v58
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v124, 0
	v_mov_b32_e32 v125, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_7
; %bb.6:
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v2, s27, v103
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v2 offset:832
	ds_load_u8 v4, v2 offset:768
	ds_load_u8 v5, v2 offset:960
	ds_load_u8 v6, v2 offset:896
	ds_load_u8 v7, v2 offset:576
	ds_load_u8 v8, v2 offset:512
	ds_load_u8 v10, v2 offset:704
	ds_load_u8 v11, v2 offset:640
	ds_load_u8 v12, v2 offset:320
	ds_load_u8 v13, v2 offset:256
	ds_load_u8 v14, v2 offset:448
	ds_load_u8 v15, v2 offset:384
	ds_load_u8 v16, v2 offset:64
	ds_load_u8 v17, v2
	ds_load_u8 v18, v2 offset:192
	ds_load_u8 v19, v2 offset:128
	ds_load_u8 v66, v2 offset:992
	ds_load_u8 v67, v2 offset:928
	ds_load_u8 v68, v2 offset:864
	ds_load_u8 v126, v2 offset:800
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v4, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v5, v8, v7, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v8, s4, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v11, v10, 0xc0c0004
	v_lshl_or_b32 v6, v4, 16, v3
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v13, v12, 0xc0c0004
	s_mov_b32 s4, 0
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v15, v14, 0xc0c0004
	ds_load_u8 v12, v8 offset:1664
	ds_load_u8 v13, v8 offset:1536
	ds_load_u8 v14, v8 offset:1920
	ds_load_u8 v15, v8 offset:1792
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v17, v16, 0xc0c0004
	s_mov_b32 s11, s4
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v11, v19, v18, 0xc0c0004
	v_lshl_or_b32 v4, v4, 16, v3
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_lshl_or_b32 v3, v11, 16, v10
	ds_load_u8 v10, v8 offset:1152
	ds_load_u8 v11, v8 offset:1024
	ds_load_u8 v16, v8 offset:1408
	ds_load_u8 v17, v8 offset:1280
	ds_load_u8 v18, v8 offset:640
	ds_load_u8 v19, v8 offset:512
	ds_load_u8 v20, v8 offset:896
	ds_load_u8 v21, v8 offset:768
	ds_load_u8 v22, v8 offset:128
	ds_load_u8 v23, v8
	ds_load_u8 v24, v8 offset:384
	ds_load_u8 v25, v8 offset:256
	ds_load_u8 v26, v8 offset:1984
	ds_load_u8 v27, v8 offset:1856
	ds_load_u8 v28, v8 offset:1728
	ds_load_u8 v29, v8 offset:1600
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_lshl_or_b32 v5, v7, 16, v5
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v11, v17, v16, 0xc0c0004
	v_perm_b32 v12, v13, v12, 0xc0c0004
	v_perm_b32 v13, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v14, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v15, v21, v20, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v16, v23, v22, 0xc0c0004
	v_lshl_or_b32 v44, v11, 16, v10
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v25, v24, 0xc0c0004
	v_lshl_or_b32 v45, v13, 16, v12
	v_lshl_or_b32 v43, v15, 16, v14
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v42, v17, 16, v16
	v_mov_b32_e32 v17, s11
	ds_load_u8 v34, v2 offset:1856
	ds_load_u8 v35, v2 offset:1792
	ds_load_u8 v36, v2 offset:1984
	ds_load_u8 v37, v2 offset:1920
	ds_load_u8 v38, v2 offset:1600
	ds_load_u8 v39, v2 offset:1536
	ds_load_u8 v40, v2 offset:1728
	ds_load_u8 v41, v2 offset:1664
	ds_load_u8 v46, v2 offset:1344
	ds_load_u8 v47, v2 offset:1280
	ds_load_u8 v48, v2 offset:1472
	ds_load_u8 v49, v2 offset:1408
	ds_load_u8 v138, v2 offset:2016
	ds_load_u8 v139, v2 offset:1952
	ds_load_u8 v140, v2 offset:1888
	ds_load_u8 v141, v2 offset:1824
	v_mov_b32_e32 v15, s9
	ds_load_u8 v30, v8 offset:1472
	ds_load_u8 v31, v8 offset:1344
	ds_load_u8 v32, v8 offset:1216
	ds_load_u8 v33, v8 offset:1088
	ds_load_u8 v58, v8 offset:960
	ds_load_u8 v59, v8 offset:832
	ds_load_u8 v60, v8 offset:704
	ds_load_u8 v61, v8 offset:576
	ds_load_u8 v62, v8 offset:448
	ds_load_u8 v63, v8 offset:320
	ds_load_u8 v64, v8 offset:192
	ds_load_u8 v65, v8 offset:64
	ds_load_u8 v127, v2 offset:736
	ds_load_u8 v128, v2 offset:672
	ds_load_u8 v129, v2 offset:608
	ds_load_u8 v130, v2 offset:544
	ds_load_u8 v7, v2 offset:480
	ds_load_u8 v131, v2 offset:416
	ds_load_u8 v132, v2 offset:352
	ds_load_u8 v133, v2 offset:288
	ds_load_u8 v134, v2 offset:224
	ds_load_u8 v135, v2 offset:160
	ds_load_u8 v136, v2 offset:96
	ds_load_u8 v137, v2 offset:32
	ds_load_u8 v146, v2 offset:1504
	ds_load_u8 v147, v2 offset:1440
	ds_load_u8 v148, v2 offset:1376
	ds_load_u8 v149, v2 offset:1312
	ds_load_u8 v150, v2 offset:1248
	ds_load_u8 v151, v2 offset:1184
	ds_load_u8 v152, v2 offset:1120
	ds_load_u8 v153, v2 offset:1056
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v176, v2 offset:2528
	ds_load_u8 v177, v2 offset:2464
	ds_load_u8 v178, v2 offset:2400
	ds_load_u8 v179, v2 offset:2336
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	ds_load_u8 v180, v2 offset:2272
	ds_load_u8 v181, v2 offset:2208
	ds_load_u8 v182, v2 offset:2144
	ds_load_u8 v183, v2 offset:2080
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v40, v47, v46, 0xc0c0004
	ds_load_u8 v158, v8 offset:3008
	ds_load_u8 v159, v8 offset:2880
	ds_load_u8 v160, v8 offset:2752
	ds_load_u8 v161, v8 offset:2624
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v41, v49, v48, 0xc0c0004
	ds_load_u8 v47, v8 offset:3712
	ds_load_u8 v48, v8 offset:3584
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v2 offset:1088
	ds_load_u8 v50, v2 offset:1024
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v2 offset:1216
	ds_load_u8 v51, v2 offset:1152
	ds_load_u8 v142, v2 offset:1760
	ds_load_u8 v143, v2 offset:1696
	ds_load_u8 v144, v2 offset:1632
	ds_load_u8 v145, v2 offset:1568
	ds_load_u8 v162, v8 offset:2496
	ds_load_u8 v163, v8 offset:2368
	ds_load_u8 v164, v8 offset:2240
	ds_load_u8 v165, v8 offset:2112
	ds_load_u8 v196, v8 offset:5056
	ds_load_u8 v197, v8 offset:4928
	ds_load_u8 v198, v8 offset:4800
	ds_load_u8 v199, v8 offset:4672
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v27, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v32, v63, v62, 0xc0c0004
	v_dual_mov_b32 v16, s10 :: v_dual_mov_b32 v13, s7
	v_dual_mov_b32 v14, s8 :: v_dual_mov_b32 v11, s5
	v_mov_b32_e32 v12, s6
	v_mov_b32_e32 v10, s4
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v7, v131, v7, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v131, v149, v148, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[18:25], v[42:45], v[3:6], v[10:17] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v49, v51, v37, 0xc0c0004
	v_perm_b32 v46, v50, v35, 0xc0c0004
	ds_load_u8 v50, v8 offset:3968
	ds_load_u8 v51, v8 offset:3840
	v_lshl_or_b32 v37, v36, 16, v34
	v_lshl_or_b32 v36, v39, 16, v38
	v_lshl_or_b32 v35, v41, 16, v40
	v_lshl_or_b32 v34, v49, 16, v46
	ds_load_u8 v38, v8 offset:3200
	ds_load_u8 v39, v8 offset:3072
	ds_load_u8 v40, v8 offset:3456
	ds_load_u8 v41, v8 offset:3328
	ds_load_u8 v46, v8 offset:2688
	ds_load_u8 v49, v8 offset:2560
	ds_load_u8 v52, v8 offset:2944
	ds_load_u8 v53, v8 offset:2816
	ds_load_u8 v122, v8 offset:4032
	ds_load_u8 v123, v8 offset:3904
	ds_load_u8 v124, v8 offset:3776
	ds_load_u8 v125, v8 offset:3648
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v8 offset:2176
	ds_load_u8 v54, v8 offset:2048
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v40, v49, v46, 0xc0c0004
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v41, v53, v52, 0xc0c0004
	ds_load_u8 v52, v2 offset:2880
	ds_load_u8 v53, v2 offset:2816
	ds_load_u8 v51, v8 offset:2432
	ds_load_u8 v55, v8 offset:2304
	ds_load_u8 v154, v8 offset:3520
	ds_load_u8 v155, v8 offset:3392
	ds_load_u8 v156, v8 offset:3264
	ds_load_u8 v157, v8 offset:3136
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v62, v123, v122, 0xc0c0004
	v_lshl_or_b32 v49, v50, 16, v47
	v_lshl_or_b32 v47, v41, 16, v40
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v46, v54, v48, 0xc0c0004
	v_lshl_or_b32 v48, v39, 16, v38
	v_perm_b32 v122, v159, v158, 0xc0c0004
	v_perm_b32 v123, v165, v164, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v51, v55, v51, 0xc0c0004
	ds_load_u8 v54, v2 offset:3008
	ds_load_u8 v55, v2 offset:2944
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v53, v2 offset:2112
	ds_load_u8 v170, v2 offset:2048
	v_lshl_or_b32 v46, v51, 16, v46
	ds_load_u8 v38, v2 offset:2624
	ds_load_u8 v39, v2 offset:2560
	ds_load_u8 v40, v2 offset:2752
	ds_load_u8 v41, v2 offset:2688
	ds_load_u8 v50, v2 offset:2368
	ds_load_u8 v51, v2 offset:2304
	ds_load_u8 v56, v2 offset:2496
	ds_load_u8 v57, v2 offset:2432
	ds_load_u8 v166, v2 offset:3040
	ds_load_u8 v167, v2 offset:2976
	ds_load_u8 v168, v2 offset:2912
	ds_load_u8 v169, v2 offset:2848
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v63, v157, v156, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[18:25], v[46:49], v[34:37], v[18:25] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v51, v57, v56, 0xc0c0004
	ds_load_u8 v55, v2 offset:2240
	ds_load_u8 v171, v2 offset:2176
	ds_load_u8 v172, v2 offset:2784
	ds_load_u8 v173, v2 offset:2720
	ds_load_u8 v174, v2 offset:2656
	ds_load_u8 v175, v2 offset:2592
	v_perm_b32 v53, v170, v53, 0xc0c0004
	ds_load_u8 v56, v8 offset:5760
	ds_load_u8 v57, v8 offset:5632
	ds_load_u8 v170, v8 offset:6016
	ds_load_u8 v184, v8 offset:5888
	v_lshl_or_b32 v41, v54, 16, v52
	v_lshl_or_b32 v40, v39, 16, v38
	v_lshl_or_b32 v39, v51, 16, v50
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v55, v171, v55, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v38, v55, 16, v53
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v184, v170, 0xc0c0004
	ds_load_u8 v170, v8 offset:4224
	ds_load_u8 v184, v8 offset:4096
	ds_load_u8 v190, v8 offset:4480
	ds_load_u8 v191, v8 offset:4352
	ds_load_u8 v192, v8 offset:5568
	ds_load_u8 v193, v8 offset:5440
	ds_load_u8 v194, v8 offset:5312
	ds_load_u8 v195, v8 offset:5184
	ds_load_u8 v50, v8 offset:5248
	ds_load_u8 v51, v8 offset:5120
	ds_load_u8 v52, v8 offset:5504
	ds_load_u8 v53, v8 offset:5376
	ds_load_u8 v54, v8 offset:4736
	ds_load_u8 v55, v8 offset:4608
	ds_load_u8 v171, v8 offset:4992
	ds_load_u8 v185, v8 offset:4864
	ds_load_u8 v186, v8 offset:6080
	ds_load_u8 v187, v8 offset:5952
	ds_load_u8 v188, v8 offset:5824
	ds_load_u8 v189, v8 offset:5696
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v51, v53, v52, 0xc0c0004
	v_perm_b32 v170, v184, v170, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	v_perm_b32 v184, v191, v190, 0xc0c0004
	ds_load_u8 v190, v2 offset:3648
	ds_load_u8 v191, v2 offset:3584
	ds_load_u8 v206, v2 offset:3776
	ds_load_u8 v207, v2 offset:3712
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v55, v185, v171, 0xc0c0004
	ds_load_u8 v171, v2 offset:3904
	ds_load_u8 v185, v2 offset:3840
	ds_load_u8 v200, v2 offset:4032
	ds_load_u8 v201, v2 offset:3968
	ds_load_u8 v202, v8 offset:4544
	ds_load_u8 v203, v8 offset:4416
	ds_load_u8 v204, v8 offset:4288
	ds_load_u8 v205, v8 offset:4160
	v_lshl_or_b32 v53, v57, 16, v56
	v_lshl_or_b32 v52, v51, 16, v50
	v_lshl_or_b32 v50, v184, 16, v170
	v_lshl_or_b32 v51, v55, 16, v54
	ds_load_u8 v170, v2 offset:4064
	ds_load_u8 v184, v2 offset:4000
	ds_load_u8 v208, v2 offset:3936
	ds_load_u8 v209, v2 offset:3872
	v_wmma_i32_16x16x16_iu8 v[18:25], v[50:53], v[38:41], v[18:25] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v54, v185, v171, 0xc0c0004
	v_perm_b32 v56, v191, v190, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v55, v201, v200, 0xc0c0004
	v_perm_b32 v190, v207, v206, 0xc0c0004
	ds_load_u8 v191, v2 offset:3136
	ds_load_u8 v206, v2 offset:3072
	ds_load_u8 v207, v2 offset:3264
	ds_load_u8 v214, v2 offset:3200
	ds_load_u8 v171, v2 offset:3392
	ds_load_u8 v185, v2 offset:3328
	ds_load_u8 v200, v2 offset:3520
	ds_load_u8 v201, v2 offset:3456
	ds_load_u8 v210, v2 offset:3808
	ds_load_u8 v211, v2 offset:3744
	ds_load_u8 v212, v2 offset:3680
	ds_load_u8 v213, v2 offset:3616
	v_lshl_or_b32 v57, v55, 16, v54
	v_lshl_or_b32 v56, v190, 16, v56
	ds_load_u8 v190, v2 offset:3552
	ds_load_u8 v215, v2 offset:3488
	ds_load_u8 v216, v2 offset:3424
	ds_load_u8 v217, v2 offset:3360
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v54, v185, v171, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v55, v201, v200, 0xc0c0004
	ds_load_u8 v171, v8 offset:7808
	ds_load_u8 v185, v8 offset:7680
	ds_load_u8 v200, v8 offset:8064
	ds_load_u8 v201, v8 offset:7936
	ds_load_u8 v218, v2 offset:3296
	ds_load_u8 v219, v2 offset:3232
	ds_load_u8 v220, v2 offset:3168
	ds_load_u8 v221, v2 offset:3104
	v_perm_b32 v2, v206, v191, 0xc0c0004
	v_perm_b32 v191, v214, v207, 0xc0c0004
	ds_load_u8 v206, v8 offset:7296
	ds_load_u8 v207, v8 offset:7168
	ds_load_u8 v214, v8 offset:7552
	ds_load_u8 v222, v8 offset:7424
	v_lshl_or_b32 v55, v55, 16, v54
	v_lshl_or_b32 v54, v191, 16, v2
	ds_load_u8 v2, v8 offset:6784
	ds_load_u8 v191, v8 offset:6656
	ds_load_u8 v223, v8 offset:7040
	ds_load_u8 v224, v8 offset:6912
	ds_load_u8 v225, v8 offset:8128
	ds_load_u8 v226, v8 offset:8000
	ds_load_u8 v227, v8 offset:7872
	ds_load_u8 v228, v8 offset:7744
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v171, v185, v171, 0xc0c0004
	ds_load_u8 v185, v8 offset:6272
	ds_load_u8 v229, v8 offset:6144
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v200, v201, v200, 0xc0c0004
	ds_load_u8 v201, v8 offset:7616
	ds_load_u8 v230, v8 offset:7488
	ds_load_u8 v231, v8 offset:7360
	ds_load_u8 v232, v8 offset:7232
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v206, v207, v206, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v191, v191, v2, 0xc0c0004
	v_perm_b32 v2, v29, v28, 0xc0c0004
	v_perm_b32 v28, v31, v30, 0xc0c0004
	v_perm_b32 v29, v61, v60, 0xc0c0004
	v_perm_b32 v30, v59, v58, 0xc0c0004
	v_perm_b32 v31, v65, v64, 0xc0c0004
	v_lshl_or_b32 v61, v26, 16, v2
	v_lshl_or_b32 v60, v28, 16, v27
	v_perm_b32 v2, v125, v124, 0xc0c0004
	v_lshl_or_b32 v59, v30, 16, v29
	v_lshl_or_b32 v58, v32, 16, v31
	v_perm_b32 v64, v155, v154, 0xc0c0004
	v_perm_b32 v65, v161, v160, 0xc0c0004
	v_perm_b32 v124, v163, v162, 0xc0c0004
	v_perm_b32 v125, v203, v202, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[26:33], v[58:61], v[3:6], v[10:17] neg_lo:[1,1,0]
	v_lshl_or_b32 v5, v62, 16, v2
	v_lshl_or_b32 v4, v64, 16, v63
	v_lshl_or_b32 v3, v122, 16, v65
	v_lshl_or_b32 v2, v124, 16, v123
	v_perm_b32 v6, v189, v188, 0xc0c0004
	v_perm_b32 v62, v187, v186, 0xc0c0004
	v_perm_b32 v63, v195, v194, 0xc0c0004
	v_perm_b32 v64, v193, v192, 0xc0c0004
	v_perm_b32 v122, v199, v198, 0xc0c0004
	v_perm_b32 v123, v197, v196, 0xc0c0004
	v_perm_b32 v124, v205, v204, 0xc0c0004
	v_perm_b32 v207, v222, v214, 0xc0c0004
	ds_load_u8 v214, v8 offset:6528
	ds_load_u8 v222, v8 offset:6400
	ds_load_u8 v233, v8 offset:7104
	ds_load_u8 v234, v8 offset:6976
	ds_load_u8 v235, v8 offset:6848
	ds_load_u8 v236, v8 offset:6720
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v223, v224, v223, 0xc0c0004
	ds_load_u8 v224, v8 offset:6592
	ds_load_u8 v237, v8 offset:6464
	ds_load_u8 v238, v8 offset:6336
	ds_load_u8 v8, v8 offset:6208
	v_wmma_i32_16x16x16_iu8 v[26:33], v[2:5], v[34:37], v[26:33] neg_lo:[1,1,0]
	v_lshl_or_b32 v65, v62, 16, v6
	v_lshl_or_b32 v64, v64, 16, v63
	v_lshl_or_b32 v63, v123, 16, v122
	v_lshl_or_b32 v62, v125, 16, v124
	v_perm_b32 v34, v126, v68, 0xc0c0004
	v_perm_b32 v35, v67, v66, 0xc0c0004
	v_perm_b32 v36, v130, v129, 0xc0c0004
	v_perm_b32 v37, v128, v127, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[26:33], v[62:65], v[38:41], v[26:33] neg_lo:[1,1,0]
	v_perm_b32 v38, v133, v132, 0xc0c0004
	v_perm_b32 v39, v137, v136, 0xc0c0004
	v_perm_b32 v40, v135, v134, 0xc0c0004
	v_lshl_or_b32 v129, v35, 16, v34
	v_lshl_or_b32 v128, v37, 16, v36
	v_lshl_or_b32 v127, v7, 16, v38
	v_perm_b32 v7, v141, v140, 0xc0c0004
	v_lshl_or_b32 v126, v40, 16, v39
	v_perm_b32 v67, v139, v138, 0xc0c0004
	v_perm_b32 v68, v145, v144, 0xc0c0004
	v_perm_b32 v130, v143, v142, 0xc0c0004
	v_perm_b32 v132, v147, v146, 0xc0c0004
	v_perm_b32 v133, v153, v152, 0xc0c0004
	v_perm_b32 v134, v151, v150, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[34:41], v[42:45], v[126:129], v[10:17] neg_lo:[1,1,0]
	v_lshl_or_b32 v45, v67, 16, v7
	v_lshl_or_b32 v44, v130, 16, v68
	v_lshl_or_b32 v43, v132, 16, v131
	v_lshl_or_b32 v42, v134, 16, v133
	v_perm_b32 v7, v169, v168, 0xc0c0004
	v_perm_b32 v67, v167, v166, 0xc0c0004
	v_perm_b32 v68, v175, v174, 0xc0c0004
	v_perm_b32 v130, v173, v172, 0xc0c0004
	v_perm_b32 v131, v179, v178, 0xc0c0004
	v_perm_b32 v132, v177, v176, 0xc0c0004
	v_perm_b32 v133, v183, v182, 0xc0c0004
	v_perm_b32 v134, v181, v180, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v6, v228, v227, 0xc0c0004
	v_perm_b32 v154, v226, v225, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v8, v238, 0xc0c0004
	v_perm_b32 v66, v237, v224, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[34:41], v[46:49], v[42:45], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v49, v67, 16, v7
	v_lshl_or_b32 v48, v130, 16, v68
	v_lshl_or_b32 v47, v132, 16, v131
	v_lshl_or_b32 v46, v134, 16, v133
	v_wmma_i32_16x16x16_iu8 v[10:17], v[58:61], v[126:129], v[10:17] neg_lo:[1,1,0]
	v_perm_b32 v185, v229, v185, 0xc0c0004
	v_perm_b32 v214, v222, v214, 0xc0c0004
	v_perm_b32 v155, v232, v231, 0xc0c0004
	v_perm_b32 v156, v230, v201, 0xc0c0004
	v_perm_b32 v157, v236, v235, 0xc0c0004
	v_perm_b32 v158, v234, v233, 0xc0c0004
	v_lshl_or_b32 v133, v154, 16, v6
	v_lshl_or_b32 v130, v66, 16, v8
	v_wmma_i32_16x16x16_iu8 v[34:41], v[50:53], v[46:49], v[34:41] neg_lo:[1,1,0]
	v_perm_b32 v6, v209, v208, 0xc0c0004
	v_perm_b32 v7, v184, v170, 0xc0c0004
	v_perm_b32 v8, v213, v212, 0xc0c0004
	v_perm_b32 v50, v211, v210, 0xc0c0004
	v_perm_b32 v51, v217, v216, 0xc0c0004
	v_perm_b32 v52, v215, v190, 0xc0c0004
	v_perm_b32 v53, v221, v220, 0xc0c0004
	v_perm_b32 v58, v219, v218, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[10:17], v[2:5], v[42:45], v[10:17] neg_lo:[1,1,0]
	v_lshl_or_b32 v125, v200, 16, v171
	v_lshl_or_b32 v124, v207, 16, v206
	v_lshl_or_b32 v123, v223, 16, v191
	v_lshl_or_b32 v122, v214, 16, v185
	v_lshl_or_b32 v132, v156, 16, v155
	v_lshl_or_b32 v131, v158, 16, v157
	v_lshl_or_b32 v5, v7, 16, v6
	v_lshl_or_b32 v4, v50, 16, v8
	v_lshl_or_b32 v3, v52, 16, v51
	v_lshl_or_b32 v2, v58, 16, v53
	v_wmma_i32_16x16x16_iu8 v[10:17], v[62:65], v[46:49], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[18:25], v[122:125], v[54:57], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[26:33], v[130:133], v[54:57], v[26:33] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[122:125], v[2:5], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[10:17], v[130:133], v[2:5], v[10:17] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v137, v19
	v_cvt_f32_i32_e32 v132, v20
	v_cvt_f32_i32_e32 v138, v21
	v_cvt_f32_i32_e32 v133, v22
	v_cvt_f32_i32_e32 v139, v23
	v_cvt_f32_i32_e32 v134, v24
	v_cvt_f32_i32_e32 v140, v25
	v_cvt_f32_i32_e32 v135, v26
	v_cvt_f32_i32_e32 v141, v27
	v_cvt_f32_i32_e32 v136, v28
	v_cvt_f32_i32_e32 v142, v29
	v_cvt_f32_i32_e32 v127, v30
	v_cvt_f32_i32_e32 v126, v31
	v_cvt_f32_i32_e32 v123, v32
	v_cvt_f32_i32_e32 v122, v33
	v_cvt_f32_i32_e32 v145, v34
	v_cvt_f32_i32_e32 v151, v35
	v_cvt_f32_i32_e32 v149, v36
	v_cvt_f32_i32_e32 v154, v37
	v_cvt_f32_i32_e32 v144, v38
	v_cvt_f32_i32_e32 v148, v39
	v_cvt_f32_i32_e32 v146, v40
	v_cvt_f32_i32_e32 v152, v41
	v_cvt_f32_i32_e32 v147, v10
	v_cvt_f32_i32_e32 v153, v11
	v_cvt_f32_i32_e32 v150, v12
	v_cvt_f32_i32_e32 v155, v13
	v_cvt_f32_i32_e32 v129, v14
	v_cvt_f32_i32_e32 v128, v15
	v_cvt_f32_i32_e32 v125, v16
	v_cvt_f32_i32_e32 v124, v17
	v_cvt_f32_i32_e32 v143, v18
.LBB0_7:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s14, 31
	s_mov_b32 s27, 0x31027000
	s_lshr_b32 s4, s4, 25
	s_mov_b32 s26, 0x7ffffffe
	s_add_i32 s4, s14, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s14, s26
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s15, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s35
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v2, v120, s4, 1
	v_add_lshl_u32 v3, v121, s4, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s4, s31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v4, v119, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v5, v118, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s25, s25, 0xffff
	s_clause 0x1
	buffer_load_u16 v168, v2, s[24:27], 0 offen
	buffer_load_u16 v169, v3, s[24:27], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v117, s4, 1
	v_dual_cndmask_b32 v3, 0x80000000, v4 :: v_dual_cndmask_b32 v4, 0x80000000, v5
	v_add_lshl_u32 v5, v116, s4, 1
	v_add_lshl_u32 v6, v115, s4, 1
	v_add_lshl_u32 v7, v114, s4, 1
	v_add_lshl_u32 v8, v113, s4, 1
	v_add_lshl_u32 v10, v112, s4, 1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	v_add_lshl_u32 v11, v111, s4, 1
	s_and_b32 s13, s13, 0xffff
	v_add_lshl_u32 v12, v110, s4, 1
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_add_lshl_u32 v13, v109, s4, 1
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	s_clause 0x7
	buffer_load_u16 v170, v3, s[12:15], 0 offen
	buffer_load_u16 v171, v4, s[12:15], 0 offen
	buffer_load_u16 v166, v2, s[12:15], 0 offen
	buffer_load_u16 v167, v5, s[12:15], 0 offen
	buffer_load_u16 v164, v6, s[12:15], 0 offen
	buffer_load_u16 v165, v7, s[12:15], 0 offen
	buffer_load_u16 v162, v8, s[12:15], 0 offen
	buffer_load_u16 v163, v10, s[12:15], 0 offen
	v_add_lshl_u32 v5, v108, s4, 1
	v_add_lshl_u32 v6, v106, s4, 1
	v_dual_cndmask_b32 v2, 0x80000000, v11 :: v_dual_mov_b32 v35, 0
	v_add_lshl_u32 v7, v107, s4, 1
	v_add_lshl_u32 v8, v77, s4, 1
	v_add_lshl_u32 v10, v78, s4, 1
	v_dual_cndmask_b32 v3, 0x80000000, v12 :: v_dual_cndmask_b32 v4, 0x80000000, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	v_dual_mov_b32 v33, 0 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	v_dual_mov_b32 v37, 0 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	v_mov_b32_e32 v15, 0
	s_clause 0x7
	buffer_load_u16 v160, v2, s[12:15], 0 offen
	buffer_load_u16 v161, v3, s[12:15], 0 offen
	buffer_load_u16 v158, v4, s[12:15], 0 offen
	buffer_load_u16 v159, v5, s[12:15], 0 offen
	buffer_load_u16 v156, v6, s[12:15], 0 offen
	buffer_load_u16 v157, v7, s[12:15], 0 offen
	buffer_load_u16 v131, v8, s[12:15], 0 offen
	buffer_load_u16 v130, v10, s[12:15], 0 offen
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v3, 0
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v2, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v172, s0, v103
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v26, s1, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v172 offset:832
	ds_load_u8 v2, v172 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v172 offset:960
	ds_load_u8 v3, v172 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v2, 16, v1
	ds_load_u8 v1, v172 offset:576
	ds_load_u8 v2, v172 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v172 offset:704
	ds_load_u8 v3, v172 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v2, 16, v1
	ds_load_u8 v1, v172 offset:320
	ds_load_u8 v2, v172 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v172 offset:448
	ds_load_u8 v3, v172 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v2, 16, v1
	ds_load_u8 v1, v172 offset:64
	ds_load_u8 v2, v172
	ds_load_u8 v25, v172 offset:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v172 offset:192
	ds_load_u8 v3, v172 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v2, 16, v1
	ds_load_u8 v1, v26 offset:1664
	ds_load_u8 v2, v26 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v26 offset:1920
	ds_load_u8 v3, v26 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v2, 16, v1
	ds_load_u8 v1, v26 offset:1152
	ds_load_u8 v2, v26 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v26 offset:1408
	ds_load_u8 v3, v26 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v2, 16, v1
	ds_load_u8 v1, v26 offset:640
	ds_load_u8 v2, v26 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v26 offset:896
	ds_load_u8 v3, v26 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v2, 16, v1
	ds_load_u8 v1, v26 offset:128
	ds_load_u8 v2, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v26 offset:384
	ds_load_u8 v3, v26 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v2, 16, v1
	v_mov_b32_e32 v1, s4
	v_mov_b32_e32 v3, s6
	ds_load_u8 v17, v172 offset:1856
	ds_load_u8 v18, v172 offset:1792
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v6, s9
	v_mov_b32_e32 v8, s11
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[61:64], v[27:30], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:1984
	ds_load_u8 v19, v172 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v18, 16, v17
	ds_load_u8 v17, v172 offset:1600
	ds_load_u8 v18, v172 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:1728
	ds_load_u8 v19, v172 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v18, 16, v17
	ds_load_u8 v17, v172 offset:1344
	ds_load_u8 v18, v172 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:1472
	ds_load_u8 v19, v172 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v18, 16, v17
	ds_load_u8 v17, v172 offset:1088
	ds_load_u8 v18, v172 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:1216
	ds_load_u8 v19, v172 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v18, 16, v17
	ds_load_u8 v17, v26 offset:3712
	ds_load_u8 v18, v26 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:3968
	ds_load_u8 v19, v26 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v18, 16, v17
	ds_load_u8 v17, v26 offset:3200
	ds_load_u8 v18, v26 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:3456
	ds_load_u8 v19, v26 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v18, 16, v17
	ds_load_u8 v17, v26 offset:2688
	ds_load_u8 v18, v26 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:2944
	ds_load_u8 v19, v26 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v18, 16, v17
	ds_load_u8 v17, v26 offset:2176
	ds_load_u8 v18, v26 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:2432
	ds_load_u8 v19, v26 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v18, 16, v17
	ds_load_u8 v17, v172 offset:2880
	ds_load_u8 v18, v172 offset:2816
	v_wmma_i32_16x16x16_iu8 v[9:16], v[57:60], v[41:44], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:3008
	ds_load_u8 v19, v172 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v18, 16, v17
	ds_load_u8 v17, v172 offset:2624
	ds_load_u8 v18, v172 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:2752
	ds_load_u8 v19, v172 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v18, 16, v17
	ds_load_u8 v17, v172 offset:2368
	ds_load_u8 v18, v172 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:2496
	ds_load_u8 v19, v172 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v18, 16, v17
	ds_load_u8 v17, v172 offset:2112
	ds_load_u8 v18, v172 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:2240
	ds_load_u8 v19, v172 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v18, 16, v17
	ds_load_u8 v17, v26 offset:5760
	ds_load_u8 v18, v26 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:6016
	ds_load_u8 v19, v26 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v18, 16, v17
	ds_load_u8 v17, v26 offset:5248
	ds_load_u8 v18, v26 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:5504
	ds_load_u8 v19, v26 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v18, 16, v17
	ds_load_u8 v17, v26 offset:4736
	ds_load_u8 v18, v26 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:4992
	ds_load_u8 v19, v26 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v18, 16, v17
	ds_load_u8 v17, v26 offset:4224
	ds_load_u8 v18, v26 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:4480
	ds_load_u8 v19, v26 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v18, 16, v17
	ds_load_u8 v17, v172 offset:3904
	ds_load_u8 v18, v172 offset:3840
	v_wmma_i32_16x16x16_iu8 v[9:16], v[53:56], v[49:52], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:4032
	ds_load_u8 v19, v172 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v18, 16, v17
	ds_load_u8 v17, v172 offset:3648
	ds_load_u8 v18, v172 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:3776
	ds_load_u8 v19, v172 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v18, 16, v17
	ds_load_u8 v17, v172 offset:3392
	ds_load_u8 v18, v172 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:3520
	ds_load_u8 v19, v172 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v18, 16, v17
	ds_load_u8 v17, v172 offset:3136
	ds_load_u8 v18, v172 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:3264
	ds_load_u8 v19, v172 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v18, 16, v17
	ds_load_u8 v17, v26 offset:7808
	ds_load_u8 v18, v26 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:8064
	ds_load_u8 v19, v26 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v18, 16, v17
	ds_load_u8 v17, v26 offset:7296
	ds_load_u8 v18, v26 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:7552
	ds_load_u8 v19, v26 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v18, 16, v17
	ds_load_u8 v17, v26 offset:6784
	ds_load_u8 v18, v26 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:7040
	ds_load_u8 v19, v26 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v18, 16, v17
	ds_load_u8 v17, v26 offset:6272
	ds_load_u8 v18, v26 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:6528
	ds_load_u8 v19, v26 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v18, 16, v17
	ds_load_u8 v17, v26 offset:1728
	ds_load_u8 v18, v26 offset:1600
	v_wmma_i32_16x16x16_iu8 v[9:16], v[45:48], v[65:68], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:1984
	ds_load_u8 v19, v26 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v18, 16, v17
	ds_load_u8 v17, v26 offset:1216
	ds_load_u8 v18, v26 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:1472
	ds_load_u8 v19, v26 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v18, 16, v17
	ds_load_u8 v17, v26 offset:704
	ds_load_u8 v18, v26 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:960
	ds_load_u8 v19, v26 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v18, 16, v17
	ds_load_u8 v17, v26 offset:192
	ds_load_u8 v18, v26 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:448
	ds_load_u8 v19, v26 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[33:36], v[27:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v27, v26 offset:3776
	ds_load_u8 v28, v26 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:4032
	ds_load_u8 v29, v26 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v28, 16, v27
	ds_load_u8 v27, v26 offset:3264
	ds_load_u8 v28, v26 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:3520
	ds_load_u8 v29, v26 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v28, 16, v27
	ds_load_u8 v27, v26 offset:2752
	ds_load_u8 v28, v26 offset:2624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:3008
	ds_load_u8 v29, v26 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v28, 16, v27
	ds_load_u8 v27, v26 offset:2240
	ds_load_u8 v28, v26 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:2496
	ds_load_u8 v29, v26 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v28, 16, v27
	ds_load_u8 v27, v26 offset:5824
	ds_load_u8 v28, v26 offset:5696
	v_wmma_i32_16x16x16_iu8 v[17:24], v[37:40], v[41:44], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:6080
	ds_load_u8 v29, v26 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v28, 16, v27
	ds_load_u8 v27, v26 offset:5312
	ds_load_u8 v28, v26 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:5568
	ds_load_u8 v29, v26 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v28, 16, v27
	ds_load_u8 v27, v26 offset:4800
	ds_load_u8 v28, v26 offset:4672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:5056
	ds_load_u8 v29, v26 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v28, 16, v27
	ds_load_u8 v27, v26 offset:4288
	ds_load_u8 v28, v26 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:4544
	ds_load_u8 v29, v26 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v28, 16, v27
	ds_load_u8 v27, v26 offset:7872
	ds_load_u8 v28, v26 offset:7744
	v_wmma_i32_16x16x16_iu8 v[17:24], v[41:44], v[49:52], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:8128
	ds_load_u8 v29, v26 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v28, 16, v27
	ds_load_u8 v27, v26 offset:7360
	ds_load_u8 v28, v26 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:7616
	ds_load_u8 v29, v26 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v28, 16, v27
	ds_load_u8 v27, v26 offset:6848
	ds_load_u8 v28, v26 offset:6720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:7104
	ds_load_u8 v29, v26 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v28, 16, v27
	ds_load_u8 v27, v26 offset:6336
	ds_load_u8 v28, v26 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:6592
	ds_load_u8 v26, v26 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v26, 16, v27
	ds_load_u8 v26, v172 offset:864
	ds_load_u8 v27, v172 offset:800
	v_wmma_i32_16x16x16_iu8 v[17:24], v[49:52], v[65:68], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v172 offset:992
	ds_load_u8 v28, v172 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v27, 16, v26
	ds_load_u8 v26, v172 offset:608
	ds_load_u8 v27, v172 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v172 offset:736
	ds_load_u8 v28, v172 offset:672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v27, 16, v26
	ds_load_u8 v26, v172 offset:352
	ds_load_u8 v27, v172 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v172 offset:480
	ds_load_u8 v28, v172 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v27, 16, v26
	ds_load_u8 v26, v172 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	ds_load_u8 v26, v172 offset:224
	ds_load_u8 v27, v172 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[61:64], v[65:68], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v61, v172 offset:1888
	ds_load_u8 v62, v172 offset:1824
	v_wmma_i32_16x16x16_iu8 v[1:8], v[33:36], v[65:68], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v35, v10
	v_cvt_f32_i32_e32 v33, v11
	v_cvt_f32_i32_e32 v36, v12
	v_cvt_f32_i32_e32 v34, v13
	v_cvt_f32_i32_e32 v12, v21
	v_cvt_f32_i32_e32 v13, v22
	v_cvt_f32_i32_e32 v11, v23
	v_cvt_f32_i32_e32 v10, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v172 offset:2016
	ds_load_u8 v63, v172 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v172 offset:1632
	ds_load_u8 v62, v172 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v172 offset:1760
	ds_load_u8 v63, v172 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v62, 16, v61
	ds_load_u8 v61, v172 offset:1376
	ds_load_u8 v62, v172 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v172 offset:1504
	ds_load_u8 v173, v172 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v173, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v172 offset:1120
	ds_load_u8 v173, v172 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v173, v61, 0xc0c0004
	ds_load_u8 v173, v172 offset:1248
	ds_load_u8 v174, v172 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v173, 16, v61
	v_wmma_i32_16x16x16_iu8 v[25:32], v[57:60], v[61:64], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v57, v172 offset:2912
	ds_load_u8 v58, v172 offset:2848
	v_wmma_i32_16x16x16_iu8 v[1:8], v[37:40], v[61:64], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v37, v14
	v_cvt_f32_i32_e32 v14, v15
	v_cvt_f32_i32_e32 v38, v16
	v_cvt_f32_i32_e32 v15, v17
	v_cvt_f32_i32_e32 v17, v18
	v_cvt_f32_i32_e32 v16, v19
	v_cvt_f32_i32_e32 v18, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v172 offset:3040
	ds_load_u8 v59, v172 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v58, 16, v57
	ds_load_u8 v57, v172 offset:2656
	ds_load_u8 v58, v172 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v172 offset:2784
	ds_load_u8 v59, v172 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v58, 16, v57
	ds_load_u8 v57, v172 offset:2400
	ds_load_u8 v58, v172 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v172 offset:2528
	ds_load_u8 v173, v172 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v173, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v172 offset:2144
	ds_load_u8 v173, v172 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v173, v57, 0xc0c0004
	ds_load_u8 v173, v172 offset:2272
	ds_load_u8 v174, v172 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v173, 16, v57
	v_wmma_i32_16x16x16_iu8 v[25:32], v[53:56], v[57:60], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v53, v172 offset:3936
	ds_load_u8 v54, v172 offset:3872
	v_wmma_i32_16x16x16_iu8 v[1:8], v[41:44], v[57:60], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v172 offset:4064
	ds_load_u8 v55, v172 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v54, 16, v53
	ds_load_u8 v53, v172 offset:3680
	ds_load_u8 v54, v172 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v172 offset:3808
	ds_load_u8 v55, v172 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v54, 16, v53
	ds_load_u8 v53, v172 offset:3424
	ds_load_u8 v54, v172 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v172 offset:3552
	ds_load_u8 v173, v172 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v173, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v53, v172 offset:3168
	ds_load_u8 v173, v172 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v173, v53, 0xc0c0004
	ds_load_u8 v173, v172 offset:3296
	ds_load_u8 v172, v172 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v172, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v172, 16, v53
	v_wmma_i32_16x16x16_iu8 v[25:32], v[45:48], v[53:56], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[49:52], v[53:56], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v20, v25
	v_cvt_f32_i32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v24, v27
	v_cvt_f32_i32_e32 v39, v28
	v_cvt_f32_i32_e32 v19, v29
	v_cvt_f32_i32_e32 v23, v30
	v_cvt_f32_i32_e32 v21, v31
	v_cvt_f32_i32_e32 v27, v32
	v_cvt_f32_i32_e32 v22, v1
	v_cvt_f32_i32_e32 v28, v2
	v_cvt_f32_i32_e32 v25, v3
	v_cvt_f32_i32_e32 v29, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v2, v7
	v_cvt_f32_i32_e32 v3, v8
.LBB0_9:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s16, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s14, s26
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s15, s27
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s16, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(15)
	v_mov_b16_e64 v55.h, v170.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(13)
	v_mov_b16_e64 v57.h, v166.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s35
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v120, s0, 1
	v_add_lshl_u32 v4, v121, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v7, v119, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v8, v118, s0, 1
	v_add_lshl_u32 v30, v115, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v32, v1, s[24:27], 0 offen
	buffer_load_u16 v40, v4, s[24:27], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v1, v117, s0, 1
	v_add_lshl_u32 v4, v116, s0, 1
	v_add_lshl_u32 v31, v114, s0, 1
	v_add_lshl_u32 v41, v113, s0, 1
	v_add_lshl_u32 v42, v112, s0, 1
	v_add_lshl_u32 v43, v111, s0, 1
	v_add_lshl_u32 v44, v110, s0, 1
	v_add_lshl_u32 v45, v109, s0, 1
	v_add_lshl_u32 v46, v108, s0, 1
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	v_dual_cndmask_b32 v30, 0x80000000, v30 :: v_dual_cndmask_b32 v31, 0x80000000, v31
	v_dual_cndmask_b32 v41, 0x80000000, v41 :: v_dual_cndmask_b32 v42, 0x80000000, v42
	v_dual_cndmask_b32 v43, 0x80000000, v43 :: v_dual_cndmask_b32 v44, 0x80000000, v44
	v_dual_cndmask_b32 v45, 0x80000000, v45 :: v_dual_cndmask_b32 v46, 0x80000000, v46
	s_clause 0xb
	buffer_load_u16 v47, v8, s[12:15], 0 offen
	buffer_load_u16 v48, v7, s[12:15], 0 offen
	buffer_load_u16 v49, v4, s[12:15], 0 offen
	buffer_load_u16 v50, v1, s[12:15], 0 offen
	buffer_load_u16 v51, v31, s[12:15], 0 offen
	buffer_load_u16 v52, v30, s[12:15], 0 offen
	buffer_load_u16 v42, v42, s[12:15], 0 offen
	buffer_load_u16 v53, v41, s[12:15], 0 offen
	buffer_load_u16 v44, v44, s[12:15], 0 offen
	buffer_load_u16 v43, v43, s[12:15], 0 offen
	buffer_load_u16 v46, v46, s[12:15], 0 offen
	buffer_load_u16 v45, v45, s[12:15], 0 offen
	v_add_lshl_u32 v1, v106, s0, 1
	v_add_lshl_u32 v4, v107, s0, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v7.h, v169.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v77, v77, s0, 1
	v_add_lshl_u32 v78, v78, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v8.h, v168.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v55.l, v7.l
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_mov_b16_e32 v57.l, v7.l
	v_cndmask_b32_e32 v31, 0x80000000, v4, vcc_lo
	v_dual_cndmask_b32 v77, 0x80000000, v77 :: v_dual_cndmask_b32 v78, 0x80000000, v78
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v114, v7, v55
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v30, v1, s[12:15], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v116, v7, v57
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x2
	buffer_load_u16 v31, v31, s[12:15], 0 offen
	buffer_load_u16 v77, v77, s[12:15], 0 offen
	buffer_load_u16 v78, v78, s[12:15], 0 offen
	s_waitcnt vmcnt(29)
	v_mov_b16_e64 v59.h, v164.l
	s_waitcnt vmcnt(22)
	v_mov_b16_e64 v64.h, v159.l
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v8.l, v7.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v59.l, v7.l
	v_mov_b16_e32 v64.l, v7.l
	v_mov_b16_e64 v56.h, v167.l
	v_mov_b16_e64 v58.h, v165.l
	v_mov_b16_e64 v60.h, v163.l
	v_mov_b16_e64 v62.h, v161.l
	v_mov_b16_e64 v63.h, v160.l
	s_waitcnt vmcnt(20)
	v_mov_b16_e64 v66.h, v157.l
	v_mov_b16_e32 v56.l, v7.l
	v_mov_b16_e32 v58.l, v7.l
	v_mov_b16_e32 v60.l, v7.l
	v_mov_b16_e32 v62.l, v7.l
	v_mov_b16_e32 v63.l, v7.l
	v_mov_b16_e32 v66.l, v7.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v55, v55, v8
	v_dual_mul_f32 v57, v57, v8 :: v_dual_mul_f32 v118, v7, v59
	v_mul_f32_e32 v59, v59, v8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v65.h, v158.l
	v_mov_b16_e64 v67.h, v156.l
	v_mov_b16_e32 v65.l, v7.l
	v_mov_b16_e32 v67.l, v7.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v117, v7, v56
	v_dual_mul_f32 v119, v7, v58 :: v_dual_mul_f32 v58, v58, v8
	v_mul_f32_e32 v156, v7, v63
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v116, v116, v149, v96
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v110.h, v7.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v158, v7, v65 :: v_dual_mul_f32 v65, v65, v8
	v_mul_f32_e32 v160, v67, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v57, v57, v132, v99
	v_fma_f32 v58, v58, v139, v97
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v4, s31, v103
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v103.h, v7.l
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v61.h, v162.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v99, v57, s3
	v_cndmask_b32_e64 v58, v97, v58, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v61.l, v7.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v119, v119, v148, v90
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v54.h, v171.l
	v_mov_b16_e32 v54.l, v7.l
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v41, 56, v105
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v120, v7, v61 :: v_dual_mul_f32 v61, v61, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v90, v90, v119, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v111.h, v7.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v115, v7, v54 :: v_dual_mul_f32 v56, v56, v8
	v_mul_f32_e32 v54, v54, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v61, v61, v134, v91
	v_fma_f32 v65, v65, v136, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v115, v115, v151, v98
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v106.h, v7.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v54, v54, v137, v102
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v61, v91, v61, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v56, v56, v138, v101
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v98, v98, v115, s3
	v_cndmask_b32_e64 v65, v83, v65, s3
	v_cndmask_b32_e64 v54, v102, v54, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v118, v118, v144, v92
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v101, v56, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v120, v120, v146, v88
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.h, v7.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v114, v114, v145, v100
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v92, v92, v118, s3
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s1, s34, s31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v88, v88, v120, s3
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s1, s1, s33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v100, v100, v114, s3
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v161, s1, v41
	v_add3_u32 v41, s1, v41, 64
	v_mul_lo_u32 v1, s31, v104
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v104.h, v7.l
	v_mov_b16_e32 v109.h, v7.l
	v_mov_b16_e32 v107.h, v7.l
	v_mov_b16_e32 v108.h, v7.l
	v_mov_b16_e32 v105.h, v7.l
	v_mov_b16_e32 v112.h, v7.l
	v_mov_b16_e32 v113.h, v7.l
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v157, v7, v62 :: v_dual_mul_f32 v62, v62, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v132, v157, v153, v82
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v82, v82, v132, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v121, v7, v60 :: v_dual_lshlrev_b32 v50, 16, v50
	v_mul_f32_e32 v60, v60, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v55, v55, v143, v79
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v63, v63, v8 :: v_dual_lshlrev_b32 v42, 16, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v62, v62, v141, v89
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v159, v7, v64 :: v_dual_lshlrev_b32 v46, 16, v46
	v_mul_f32_e32 v64, v64, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v59, v59, v133, v95
	v_fma_f32 v133, v156, v147, v84
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v79, v55, s3
	v_cndmask_b32_e64 v79, v96, v116, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v142, v85
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v53, 16, v53
	v_lshlrev_b32_e32 v44, 16, v44
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v84, v84, v133, s3
	v_cndmask_b32_e64 v64, v85, v64, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v85, v47, v32
	v_dual_mul_f32 v47, v40, v47 :: v_dual_mul_f32 v96, v42, v32
	v_mul_f32_e32 v42, v40, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v63, v63, v135, v87
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v89, v62, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v97, v43, v32
	v_mul_f32_e32 v99, v44, v32
	v_mul_f32_e32 v43, v40, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v63, v87, v63, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v44, v40, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v60, v60, v140, v93
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v17, v99, v17, v62
	v_fma_f32 v15, v97, v15, v63
	v_fma_f32 v28, v44, v28, v82
	v_fma_f32 v22, v43, v22, v84
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v93, v60, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v87, v50, v32 :: v_dual_mul_f32 v50, v40, v50
	v_mul_f32_e32 v93, v51, v32
	v_mul_f32_e32 v51, v40, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v63, v15, s2
	v_cndmask_b32_e64 v17, v62, v17, s2
	v_cndmask_b32_e64 v22, v84, v22, s2
	v_cndmask_b32_e64 v28, v82, v28, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v24, v50, v24, v79
	v_fma_f32 v23, v51, v23, v90
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v50, v15, 16, 1
	v_bfe_u32 v51, v17, 16, 1
	v_mov_b16_e32 v110.l, v28.h
	v_mov_b16_e32 v111.l, v22.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v95, v59, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v91, v52, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s17, v15, v15
	v_cmp_o_f32_e64 s18, v17, v17
	v_add3_u32 v15, v15, v50, 0x7fff
	v_add3_u32 v17, v17, v51, 0x7fff
	v_and_b32_e32 v50, 1, v110
	v_and_b32_e32 v51, 1, v111
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v89, v49, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s19, v28, v28
	v_cmp_o_f32_e64 s20, v22, v22
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s17
	v_cndmask_b16 v15.h, 0x7fff, v17.h, s18
	v_add3_u32 v17, v22, v51, 0x7fff
	v_add3_u32 v22, v28, v50, 0x7fff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v28, 16, v30
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v30, 16, v31
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v34, v91, v34, v59
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v7, v66
	v_dual_mul_f32 v52, v40, v52 :: v_dual_lshlrev_b32 v45, 16, v45
	v_mul_f32_e32 v102, v46, v32
	v_mul_f32_e32 v46, v40, v46
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v134, v159, v155, v80
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v49, v40, v49 :: v_dual_lshlrev_b32 v48, 16, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v59, v34, s2
	v_cndmask_b32_e64 v23, v90, v23, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v80, v80, v134, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v121, v121, v152, v86
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v101, v45, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v26, v47, v26, v98
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v106.l, v23.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v83, v48, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v29, v46, v29, v80
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v46, v34, 16, 1
	v_cmp_o_f32_e64 s9, v34, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v86, v121, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v45, v40, v45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v101, v16, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v34, v46, 0x7fff
	v_and_b32_e32 v46, 1, v106
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v83, v9, v55
	v_fma_f32 v18, v102, v18, v64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v98, v26, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v95, v53, v32
	v_mul_f32_e32 v53, v40, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v55, v9, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v27, v42, v27, v86
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v65, v16, s2
	v_cndmask_b32_e64 v18, v64, v18, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v26.h
	v_bfe_u32 v42, v9, 16, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v117, v117, v154, v94
	v_fma_f32 v19, v52, v19, v92
	v_fma_f32 v21, v53, v21, v88
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_bfe_u32 v52, v16, 16, 1
	v_bfe_u32 v53, v18, 16, 1
	v_add3_u32 v9, v9, v42, 0x7fff
	v_and_b32_e32 v42, 1, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v94, v94, v117, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v48, v40, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v35, v85, v35, v54
	v_fma_f32 v37, v93, v37, v58
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v26, v26
	v_cmp_o_f32_e64 s21, v16, v16
	v_cmp_o_f32_e64 s22, v18, v18
	v_add3_u32 v16, v16, v52, 0x7fff
	v_add3_u32 v18, v18, v53, 0x7fff
	v_add3_u32 v26, v26, v42, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v20, v48, v20, v100
	v_fma_f32 v39, v49, v39, v94
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v54, v35, s2
	v_cndmask_b32_e64 v37, v58, v37, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v16.l, 0x7fff, v16.h, s21
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s22
	v_cndmask_b16 v18.h, 0x7fff, v26.h, s1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v26, v7, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v33, v87, v33, v57
	v_fma_f32 v38, v96, v38, v60
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v100, v20, s2
	v_cndmask_b32_e64 v39, v94, v39, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v43, v35, 16, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v57, v33, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v47, v37, 16, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v135, v158, v150, v81
	v_fma_f32 v36, v89, v36, v56
	v_fma_f32 v14, v95, v14, v61
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v60, v38, s2
	v_cndmask_b32_e64 v21, v88, v21, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v35, v35
	v_mov_b16_e32 v103.l, v20.h
	v_bfe_u32 v44, v33, 16, 1
	v_mov_b16_e32 v104.l, v39.h
	v_cmp_o_f32_e64 s10, v37, v37
	v_add3_u32 v35, v35, v43, 0x7fff
	v_add3_u32 v37, v37, v47, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v81, v81, v135, s3
	v_cndmask_b32_e64 v36, v56, v36, s2
	v_cndmask_b32_e64 v19, v92, v19, s2
	v_cndmask_b32_e64 v14, v61, v14, s2
	v_cndmask_b32_e64 v27, v86, v27, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v33, v33
	v_bfe_u32 v49, v38, 16, 1
	v_mov_b16_e32 v109.l, v21.h
	v_and_b32_e32 v43, 1, v103
	v_add3_u32 v33, v33, v44, 0x7fff
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.h, 0x7fff, v35.h, s0
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s9
	v_cndmask_b16 v34.h, 0x7fff, v37.h, s10
	v_and_b32_e32 v44, 1, v104
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v25, v45, v25, v81
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v45, v36, 16, 1
	v_mov_b16_e32 v107.l, v19.h
	v_bfe_u32 v48, v14, 16, 1
	v_mov_b16_e32 v108.l, v27.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v79, v24, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v20, v20
	v_cmp_o_f32_e64 s7, v39, v39
	v_cmp_o_f32_e64 s14, v38, v38
	v_add3_u32 v38, v38, v49, 0x7fff
	v_and_b32_e32 v49, 1, v109
	v_add3_u32 v20, v20, v43, 0x7fff
	v_add3_u32 v35, v39, v44, 0x7fff
	v_cmp_o_f32_e64 s6, v36, v36
	v_cmp_o_f32_e64 s13, v14, v14
	v_add3_u32 v36, v36, v45, 0x7fff
	v_and_b32_e32 v47, 1, v107
	v_add3_u32 v14, v14, v48, 0x7fff
	v_and_b32_e32 v48, 1, v108
	v_mov_b16_e32 v105.l, v24.h
	v_cmp_o_f32_e64 s16, v21, v21
	v_cndmask_b16 v18.l, 0x7fff, v20.h, s4
	v_cndmask_b16 v20.h, 0x7fff, v35.h, s7
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v35, v28, v32
	v_mul_f32_e32 v28, v40, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v21, v21, v49, 0x7fff
	v_cmp_o_f32_e64 s12, v19, v19
	v_cmp_o_f32_e64 s15, v27, v27
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s5
	v_cndmask_b16 v33.h, 0x7fff, v36.h, s6
	v_add3_u32 v27, v27, v48, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v36, v30, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v19, v19, v47, 0x7fff
	v_cmp_o_f32_e64 s11, v23, v23
	v_and_b32_e32 v45, 1, v105
	v_add3_u32 v23, v23, v46, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v21.h, s16
	v_cndmask_b16 v21.h, 0x7fff, v22.h, s19
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v22, v66, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v80, v29, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.l, 0x7fff, v19.h, s12
	v_cndmask_b16 v19.h, 0x7fff, v27.h, s15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v27, v160, v127, v76
	v_fma_f32 v22, v22, v126, v75
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v112.l, v29.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v81, v25, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s8, v24, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v76, v27, s3
	v_cndmask_b32_e64 v22, v75, v22, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v52, 1, v112
	v_add3_u32 v24, v24, v45, 0x7fff
	v_mov_b16_e32 v113.l, v25.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v35, v12, v27
	v_fma_f32 v13, v36, v13, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_cndmask_b16 v20.l, 0x7fff, v24.h, s8
	v_add3_u32 v24, v29, v52, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v29, v31, v128, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v27, v12, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v53, 1, v113
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v22, v13, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v26, v26, v129, v74
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v73, v29, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v22, v40, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v29, v12, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v17.h, s20
	v_add3_u32 v17, v25, v53, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v24.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_bfe_u32 v25, v13, 16, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v74, v26, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v22, v6, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v22, v12, v29, 0x7fff
	v_cmp_o_f32_e64 s0, v12, v12
	v_add3_u32 v12, v13, v25, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v28, v5, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v27, v6, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v22.l, v7.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v12.l, 0x7fff, v22.h, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v22.h, v131.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v13, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v26, v5, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.l, v6.h
	v_mov_b16_e32 v13.h, v7.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v26, v7, v22
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v25.l, v7.l
	v_mov_b16_e64 v25.h, v130.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v22, v22, v8 :: v_dual_and_b32 v13, 1, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v26, v26, v125, v72
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.l, 0x7fff, v17.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v25, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v13, v6, v13, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v7, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v72, v26, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v22, v22, v123, v71
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v26, 16, v77
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s13
	v_cndmask_b16 v14.h, 0x7fff, v38.h, s14
	v_mov_b16_e32 v17.l, v5.h
	v_mov_b16_e32 v17.h, v7.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v6, v124, v69
	v_fma_f32 v8, v8, v122, v70
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v78
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v71, v22, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v28, v26, v32
	v_mul_f32_e32 v26, v40, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s1
	v_and_b32_e32 v17, 1, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v69, v6, s3
	v_cndmask_b32_e64 v8, v70, v8, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v29, v40, v27
	v_mul_f32_e32 v27, v27, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v11, v28, v11, v22
	v_fma_f32 v2, v26, v2, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v17, v5, v17, 0x7fff
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v29, v3, v6
	v_fma_f32 v5, v27, v10, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v22, v11, s2
	v_cndmask_b32_e64 v2, v25, v2, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v6, v3, s2
	v_cndmask_b32_e64 v5, v8, v5, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v6, v10, 16, 1
	v_mov_b16_e32 v8.l, v2.h
	v_mov_b16_e32 v8.h, v7.l
	v_cndmask_b16 v13.l, 0x7fff, v17.h, vcc_lo
	v_mov_b16_e32 v11.l, v3.h
	v_mov_b16_e32 v11.h, v7.l
	v_bfe_u32 v7, v5, 16, 1
	v_add3_u32 v6, v10, v6, 0x7fff
	v_and_b32_e32 v8, 1, v8
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_and_b32_e32 v0, 16, v0
	v_and_b32_e32 v10, 1, v11
	v_add3_u32 v7, v5, v7, 0x7fff
	v_cmp_o_f32_e64 s0, v5, v5
	v_cmp_o_f32_e64 s2, v2, v2
	v_mov_b32_e32 v11, 0x7632
	v_add3_u32 v5, v2, v8, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v6.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add3_u32 v8, v3, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v3, v3
	v_cndmask_b16 v2.h, 0x7fff, v7.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v5.h, s2
	v_cndmask_b32_e32 v3, v34, v9, vcc_lo
	v_cndmask_b32_e32 v5, v9, v34, vcc_lo
	v_mov_b32_e32 v9, 0x5410
	v_cndmask_b16 v0.h, 0x7fff, v8.h, s1
	v_cndmask_b32_e32 v8, v14, v33, vcc_lo
	v_cndmask_b32_e32 v6, v33, v14, vcc_lo
	v_dual_cndmask_b32 v10, v12, v15 :: v_dual_cndmask_b32 v7, v15, v12
	v_dual_cndmask_b32 v12, v2, v16 :: v_dual_cndmask_b32 v9, 0x1054, v9
	v_dual_cndmask_b32 v14, v23, v18 :: v_dual_cndmask_b32 v11, 0x3276, v11
	v_cndmask_b32_e32 v15, v18, v23, vcc_lo
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v9, v9, 8, v9
	v_cndmask_b32_e32 v2, v16, v2, vcc_lo
	v_lshl_or_b32 v11, v11, 8, v11
	v_cndmask_b32_e32 v18, v13, v21, vcc_lo
	v_dual_cndmask_b32 v16, v19, v20 :: v_dual_cndmask_b32 v17, v20, v19
	v_and_b32_e32 v9, 0x540054, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v11, 0x760076, v11
	v_dual_cndmask_b32 v13, v21, v13 :: v_dual_cndmask_b32 v20, v0, v24
	v_cndmask_b32_e32 v0, v24, v0, vcc_lo
	v_permlanex16_b32 v19, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v5, v9, 4, v9
	v_lshl_or_b32 v6, v11, 4, v11
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v22, 0x5040504, v5
	v_and_b32_e32 v23, 0x7060706, v6
	v_permlanex16_b32 v15, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v5, v19, v3, v22
	v_perm_b32 v6, v19, v3, v23
	v_perm_b32 v7, v21, v8, v22
	v_perm_b32 v8, v21, v8, v23
	v_perm_b32 v19, v0, v20, v22
	v_perm_b32 v20, v0, v20, v23
	v_add_lshl_u32 v0, v161, v4, 1
	v_perm_b32 v9, v11, v10, v22
	v_perm_b32 v10, v11, v10, v23
	v_perm_b32 v11, v2, v12, v22
	v_perm_b32 v12, v2, v12, v23
	v_add_lshl_u32 v2, v41, v4, 1
	v_perm_b32 v13, v15, v14, v22
	v_perm_b32 v14, v15, v14, v23
	v_perm_b32 v15, v17, v16, v22
	v_perm_b32 v16, v17, v16, v23
	v_add_lshl_u32 v3, v161, v1, 1
	v_perm_b32 v17, v24, v18, v22
	v_perm_b32 v18, v24, v18, v23
	v_add_lshl_u32 v1, v41, v1, 1
	s_clause 0x3
	buffer_store_b128 v[5:8], v0, s[28:31], 0 offen
	buffer_store_b128 v[9:12], v2, s[28:31], 0 offen
	buffer_store_b128 v[13:16], v3, s[28:31], 0 offen
	buffer_store_b128 v[17:20], v1, s[28:31], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 241
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 239
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 22180
; TotalNumSgprs: 48
; NumVgprs: 239
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 241
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
	.byte	1                               ; Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x46 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	291                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	361                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
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
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     239
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
