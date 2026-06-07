	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v69, 4, v0
	v_lshrrev_b32_e32 v3, 2, v0
	v_lshrrev_b32_e32 v4, 3, v0
	v_and_b32_e32 v70, 0x80, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v72, 0x60, v0
	v_and_b32_e32 v2, 0x70, v69
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v50, 15, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v29, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v30, 3, v70
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v51, 1, v72
	s_mov_b32 s45, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v49, v30, v50
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v29, v29, 1, v51
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v30, 0, v69
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s13, s4, 2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v31, 32, v49
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s13
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v32, 2, v29
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v33, 4, v29
	v_or_b32_e32 v34, 6, v29
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v35, 8, v29
	v_or_b32_e32 v36, 10, v29
	v_or_b32_e32 v37, 12, v29
	v_or_b32_e32 v38, 14, v29
	v_or_b32_e32 v39, 64, v29
	v_or_b32_e32 v40, 0x42, v29
	v_or_b32_e32 v41, 0x44, v29
	v_or_b32_e32 v42, 0x46, v29
	v_or_b32_e32 v43, 0x48, v29
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_readfirstlane_b32 s5, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v44, 0x4a, v29
	v_or_b32_e32 v45, 0x4c, v29
	v_or_b32_e32 v46, 0x4e, v29
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s16, s14, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s14, s14, s13
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s7, s16
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s14
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s17, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s15, s17
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s18, s15
	s_sub_i32 s19, 0, s15
	s_load_b64 s[0:1], s[0:1], 0x20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 48, v69
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s6, s18, 0x4f7ffffe
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[5:6], null, s34, v3, v[1:2]
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[6:7], null, s35, v4, v[2:3]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s18, s6
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s27, s7
	s_mov_b32 s26, s6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s19, s19, s18
	s_mul_hi_u32 s13, s18, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s18, s18, s13
	s_xor_b32 s13, s2, s17
	s_mul_hi_u32 s18, s14, s18
	s_ashr_i32 s13, s13, 31
	s_mul_i32 s19, s18, s15
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s18, 1
	s_sub_i32 s20, s14, s15
	s_cmp_ge_u32 s14, s15
	s_cselect_b32 s18, s19, s18
	s_cselect_b32 s14, s20, s14
	s_add_i32 s19, s18, 1
	s_cmp_ge_u32 s14, s15
	s_cselect_b32 s14, s19, s18
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s22, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s14, s14, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s3, s12, 0x7f
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s20, s14, s13
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s15, s12, 0xff
.Ltmp15:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s12, s3, 31
.Ltmp16:
	.loc	1 296 28 is_stmt 1              ; generate_amdgcn.py:296:28
	s_mul_i32 s17, s20, s17
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s12, s12, 25
.Ltmp18:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s17
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s3, s3, s12
.Ltmp20:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s16
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s40, s20, 7
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s42, s3, 7
.Ltmp22:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s41, s2, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s15, 0xff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s19, s35, s22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s33, s35, 5
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s18, s34, s22
	.loc	1 346 22 is_stmt 0              ; generate_amdgcn.py:346:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 30 is_stmt 1              ; generate_amdgcn.py:352:30
	s_add_i32 s12, s40, s19
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v7, s33, v6
	.loc	1 346 30 is_stmt 1              ; generate_amdgcn.py:346:30
	v_add3_u32 v5, s18, s41, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s15, 0x1ff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v8, s12, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s44, s35, 8
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s23, s34, 8
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s16, s12, s44
	v_add_nc_u32_e32 v11, s12, v7
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v10, s23, v5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v13, s16, v6
	v_add_nc_u32_e32 v14, s16, v7
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v9, 0x80000000, v5, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v12, 0x80000000, v8, s3
	v_cndmask_b32_e64 v15, 0x80000000, v11, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v17, 0x80000000, v10, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v21, 0x80000000, v13, s2
	v_cndmask_b32_e64 v25, 0x80000000, v14, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[5:8], v9, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v12, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v15, s[24:27], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[17:20], v17, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[21:24], v21, s[24:27], 0 offen
	buffer_load_b128 v[25:28], v25, s[24:27], 0 offen
	v_or_b32_e32 v119, s40, v29
	v_or_b32_e32 v29, s41, v49
	v_or_b32_e32 v31, s41, v31
	v_or_b32_e32 v118, s40, v32
	v_or_b32_e32 v117, s40, v33
	v_or_b32_e32 v116, s40, v34
	v_mul_lo_u32 v120, v29, s42
	v_mul_lo_u32 v121, v31, s42
	v_or_b32_e32 v115, s40, v35
	v_or_b32_e32 v114, s40, v36
	v_or_b32_e32 v113, s40, v37
	v_or_b32_e32 v112, s40, v38
	v_or_b32_e32 v111, s40, v39
	v_or_b32_e32 v110, s40, v40
	v_or_b32_e32 v109, s40, v41
	v_or_b32_e32 v108, s40, v42
	v_or_b32_e32 v106, s40, v43
	v_or_b32_e32 v107, s40, v44
	v_or_b32_e32 v105, s40, v45
	v_or_b32_e32 v104, s40, v46
	s_mov_b32 s12, 0
	s_mov_b64 s[20:21], s[10:11]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_lt_i32 s15, 0x300
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
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v4, s22, v4
.Ltmp23:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s10, s15, 8
.Ltmp24:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s11, s14, 7
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_add_nc_u32_e32 v5, 0x220, v4
	v_add_nc_u32_e32 v4, 0x200, v4
	v_add3_u32 v3, s22, v3, 0x200
	s_lshl_b32 s13, s13, 7
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_mul_lo_u32 v5, s35, v5
	v_mul_lo_u32 v4, s35, v4
	v_mul_lo_u32 v3, s34, v3
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_add3_u32 v5, v5, s11, v2
	v_add3_u32 v2, v4, s11, v2
	v_add3_u32 v52, v3, s41, v1
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v53, s13, v5
	v_subrev_nc_u32_e32 v54, s13, v2
	s_mov_b32 s13, s12
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v96, 0
	v_mov_b32_e32 v103, 0
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s21, 0xffff
	s_mov_b32 s36, s20
	s_add_i32 s46, 0, 0x4000
	s_add_i32 s34, 0, 0x5000
	s_add_i32 s43, 0, 0x2000
	s_add_i32 s10, s10, -2
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s38, s6
	s_mov_b32 s39, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v55, s46, v49
	s_mov_b32 s11, s12
	buffer_load_b128 v[25:28], v52, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v56, s11, v50, v51
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v9, v55 offset:832
	ds_load_u8 v10, v55 offset:768
	ds_load_u8 v11, v55 offset:960
	ds_load_u8 v12, v55 offset:896
	ds_load_u8 v13, v55 offset:576
	ds_load_u8 v14, v55 offset:512
	ds_load_u8 v15, v55 offset:704
	ds_load_u8 v16, v55 offset:640
	ds_load_u8 v17, v55 offset:320
	ds_load_u8 v18, v55 offset:256
	ds_load_u8 v19, v55 offset:448
	ds_load_u8 v20, v55 offset:384
	ds_load_u8 v21, v55 offset:64
	ds_load_u8 v22, v55
	ds_load_u8 v23, v55 offset:192
	ds_load_u8 v24, v55 offset:128
	ds_load_u8 v29, v56 offset:1664
	ds_load_u8 v30, v56 offset:1536
	ds_load_u8 v31, v56 offset:1920
	ds_load_u8 v32, v56 offset:1792
	ds_load_u8 v33, v56 offset:1152
	ds_load_u8 v34, v56 offset:1024
	ds_load_u8 v35, v56 offset:1408
	ds_load_u8 v36, v56 offset:1280
	ds_load_u8 v37, v56 offset:640
	ds_load_u8 v38, v56 offset:512
	ds_load_u8 v39, v56 offset:896
	ds_load_u8 v40, v56 offset:768
	ds_load_u8 v45, v56 offset:128
	ds_load_u8 v46, v56
	ds_load_u8 v47, v56 offset:384
	ds_load_u8 v48, v56 offset:256
	ds_load_u8 v57, v55 offset:1856
	ds_load_u8 v58, v55 offset:1792
	ds_load_u8 v59, v55 offset:1984
	ds_load_u8 v60, v55 offset:1920
	ds_load_u8 v61, v55 offset:1600
	ds_load_u8 v62, v55 offset:1536
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v14, v16, v15, 0xc0c0004
	ds_load_u8 v16, v55 offset:1408
	ds_load_u8 v10, v55 offset:1728
	ds_load_u8 v12, v55 offset:1664
	v_lshl_or_b32 v44, v11, 16, v9
	v_lshl_or_b32 v43, v14, 16, v13
	ds_load_u8 v9, v55 offset:1344
	ds_load_u8 v11, v55 offset:1280
	ds_load_u8 v14, v55 offset:1472
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v13, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v17, v22, v21, 0xc0c0004
	ds_load_u8 v18, v55 offset:1216
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v21, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v29, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v30, v36, v35, 0xc0c0004
	v_perm_b32 v15, v20, v19, 0xc0c0004
	v_perm_b32 v19, v24, v23, 0xc0c0004
	v_perm_b32 v23, v32, v31, 0xc0c0004
	ds_load_u8 v20, v55 offset:1152
	v_lshl_or_b32 v31, v30, 16, v29
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v29, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v40, v58, v57, 0xc0c0004
	v_lshl_or_b32 v42, v15, 16, v13
	ds_load_u8 v13, v55 offset:1088
	ds_load_u8 v15, v55 offset:1024
	ds_load_u8 v22, v56 offset:3712
	ds_load_u8 v34, v56 offset:3840
	ds_load_u8 v39, v56 offset:2816
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v14, v16, v14, 0xc0c0004
	v_lshl_or_b32 v32, v23, 16, v21
	v_perm_b32 v21, v38, v37, 0xc0c0004
	ds_load_u8 v23, v56 offset:3456
	v_perm_b32 v38, v48, v47, 0xc0c0004
	v_lshl_or_b32 v58, v14, 16, v9
	ds_load_u8 v9, v56 offset:1216
	ds_load_u8 v14, v56 offset:1088
	v_perm_b32 v47, v62, v61, 0xc0c0004
	v_perm_b32 v10, v12, v10, 0xc0c0004
	v_lshl_or_b32 v30, v29, 16, v21
	ds_load_u8 v21, v56 offset:2688
	ds_load_u8 v36, v56 offset:2560
	ds_load_u8 v24, v56 offset:3584
	ds_load_u8 v33, v56 offset:3968
	ds_load_u8 v37, v56 offset:2944
	v_lshl_or_b32 v41, v19, 16, v17
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v13, v15, v13, 0xc0c0004
	ds_load_u8 v17, v56 offset:3200
	ds_load_u8 v19, v56 offset:3072
	ds_load_u8 v15, v56 offset:1472
	v_perm_b32 v29, v46, v45, 0xc0c0004
	ds_load_u8 v12, v56 offset:2304
	v_perm_b32 v46, v60, v59, 0xc0c0004
	v_lshl_or_b32 v59, v10, 16, v47
	ds_load_u8 v45, v56 offset:2176
	ds_load_u8 v63, v56 offset:2048
	ds_load_u8 v16, v56 offset:1856
	v_lshl_or_b32 v29, v38, 16, v29
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	ds_load_u8 v14, v56 offset:3264
	ds_load_u8 v61, v56 offset:2432
	ds_load_u8 v10, v56 offset:1728
	ds_load_u8 v38, v56 offset:1600
	v_lshl_or_b32 v60, v46, 16, v40
	ds_load_u8 v62, v55 offset:800
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s12, s22, 31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v52, s23, v52
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s12, s12, 25
	s_mov_b32 s11, s22
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v56 offset:960
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s12, s22, s12
	s_mov_b32 s46, s34
	s_ashr_i32 s13, s12, 7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s12, s13, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s13, s42
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v12, v12, v61, 0xc0c0004
	ds_load_u8 v61, v55 offset:864
	v_perm_b32 v18, v20, v18, 0xc0c0004
	ds_load_u8 v20, v56 offset:1344
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v38, v10, 0xc0c0004
	ds_load_u8 v38, v56 offset:4032
	v_lshl_or_b32 v57, v18, 16, v13
	v_perm_b32 v18, v36, v21, 0xc0c0004
	ds_load_u8 v36, v56 offset:3776
	ds_load_u8 v35, v56 offset:3328
	v_perm_b32 v22, v24, v22, 0xc0c0004
	ds_load_u8 v24, v56 offset:704
	ds_load_u8 v21, v56 offset:448
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v33, 16, v22
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v15, v20, v15, 0xc0c0004
	ds_load_u8 v20, v56 offset:3136
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v23, v35, v23, 0xc0c0004
	ds_load_u8 v35, v56 offset:832
	ds_load_u8 v34, v56 offset:576
	v_lshl_or_b32 v47, v23, 16, v17
	ds_load_u8 v13, v56 offset:192
	ds_load_u8 v17, v56 offset:64
	ds_load_u8 v23, v56 offset:320
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v14, v20, v14, 0xc0c0004
	ds_load_u8 v20, v56 offset:2240
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v19, v35, v19, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v24, v34, v24, 0xc0c0004
	ds_load_u8 v34, v56 offset:3520
	ds_load_u8 v35, v56 offset:3392
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v13, v17, v13, 0xc0c0004
	ds_load_u8 v17, v56 offset:2752
	v_perm_b32 v22, v39, v37, 0xc0c0004
	ds_load_u8 v37, v56 offset:3648
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v21, v23, v21, 0xc0c0004
	ds_load_u8 v23, v56 offset:2624
	v_lshl_or_b32 v46, v22, 16, v18
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v37, v36, 0xc0c0004
	ds_load_u8 v36, v56 offset:3008
	v_perm_b32 v39, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v17, v23, v17, 0xc0c0004
	ds_load_u8 v23, v56 offset:2496
	ds_load_u8 v35, v56 offset:2368
	ds_load_u8 v34, v56 offset:2112
	ds_load_u8 v11, v56 offset:1984
	v_perm_b32 v33, v63, v45, 0xc0c0004
	v_lshl_or_b32 v39, v39, 16, v14
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v45, v12, 16, v33
	v_lshl_or_b32 v33, v21, 16, v13
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v23, v35, v23, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v20, v34, v20, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v16, v11, 0xc0c0004
	ds_load_u8 v16, v56 offset:3904
	v_lshl_or_b32 v35, v15, 16, v9
	v_lshl_or_b32 v34, v19, 16, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v16, v38, 0xc0c0004
	ds_load_u8 v38, v56 offset:2880
	v_lshl_or_b32 v40, v16, 16, v37
	v_lshl_or_b32 v37, v23, 16, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v36, 0xc0c0004
	v_lshl_or_b32 v36, v11, 16, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v38, v38, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[29:32], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[33:36], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v55 offset:992
	ds_load_u8 v42, v55 offset:928
	ds_load_u8 v43, v55 offset:608
	ds_load_u8 v44, v55 offset:544
	v_wmma_i32_16x16x16_iu8 v[17:24], v[45:48], v[57:60], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[37:40], v[57:60], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v58, v55 offset:736
	v_perm_b32 v57, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v55 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	v_lshl_or_b32 v44, v41, 16, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v42, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v42, 16, v43
	ds_load_u8 v41, v55 offset:352
	ds_load_u8 v42, v55 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v55 offset:480
	ds_load_u8 v57, v55 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v57, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v55 offset:32
	ds_load_u8 v57, v55 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v57, 0xc0c0004
	ds_load_u8 v57, v55 offset:224
	ds_load_u8 v58, v55 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v57, 16, v41
	ds_load_u8 v57, v55 offset:1888
	ds_load_u8 v58, v55 offset:1824
	v_wmma_i32_16x16x16_iu8 v[122:129], v[33:36], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v55 offset:2016
	ds_load_u8 v59, v55 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v55 offset:1632
	ds_load_u8 v60, v55 offset:1568
	v_lshl_or_b32 v68, v58, 16, v57
	ds_load_u8 v57, v55 offset:1376
	ds_load_u8 v58, v55 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v55 offset:1760
	ds_load_u8 v61, v55 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v60, 16, v59
	ds_load_u8 v58, v55 offset:1504
	ds_load_u8 v59, v55 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v66, v58, 16, v57
	ds_load_u8 v57, v55 offset:1120
	ds_load_u8 v58, v55 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v55 offset:1248
	ds_load_u8 v59, v55 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[29:32], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v29, v55 offset:2880
	ds_load_u8 v30, v55 offset:2816
	ds_load_u8 v31, v55 offset:3008
	ds_load_u8 v32, v55 offset:2944
	ds_load_u8 v33, v55 offset:2624
	ds_load_u8 v34, v55 offset:2560
	v_wmma_i32_16x16x16_iu8 v[122:129], v[37:40], v[65:68], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[45:48], v[65:68], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v55 offset:2752
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v55 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v32, v30, 0xc0c0004
	v_lshl_or_b32 v32, v31, 16, v29
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v31, v30, 16, v33
	ds_load_u8 v29, v55 offset:2368
	ds_load_u8 v30, v55 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v55 offset:2496
	ds_load_u8 v33, v55 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v33, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	ds_load_u8 v29, v55 offset:2112
	ds_load_u8 v33, v55 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v33, v29, 0xc0c0004
	ds_load_u8 v33, v55 offset:2240
	ds_load_u8 v34, v55 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v33, 16, v29
	ds_load_u8 v33, v56 offset:5760
	ds_load_u8 v34, v56 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v56 offset:6016
	ds_load_u8 v35, v56 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v56 offset:5248
	ds_load_u8 v36, v56 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v56 offset:5504
	ds_load_u8 v37, v56 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v36, 0xc0c0004
	v_lshl_or_b32 v36, v34, 16, v33
	ds_load_u8 v33, v56 offset:4736
	ds_load_u8 v34, v56 offset:4608
	v_lshl_or_b32 v35, v37, 16, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v56 offset:4992
	ds_load_u8 v37, v56 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v37, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v56 offset:4224
	ds_load_u8 v37, v56 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v37, v33, 0xc0c0004
	ds_load_u8 v37, v56 offset:4480
	ds_load_u8 v38, v56 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v37, 16, v33
	ds_load_u8 v37, v56 offset:5824
	ds_load_u8 v38, v56 offset:5696
	v_wmma_i32_16x16x16_iu8 v[17:24], v[33:36], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v56 offset:6080
	ds_load_u8 v39, v56 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v39, v56 offset:5312
	ds_load_u8 v40, v56 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v56 offset:5568
	ds_load_u8 v41, v56 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v40, 0xc0c0004
	v_lshl_or_b32 v40, v38, 16, v37
	ds_load_u8 v37, v56 offset:4800
	ds_load_u8 v38, v56 offset:4672
	v_lshl_or_b32 v39, v41, 16, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v56 offset:5056
	ds_load_u8 v41, v56 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v41, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v56 offset:4288
	ds_load_u8 v41, v56 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v41, v37, 0xc0c0004
	ds_load_u8 v41, v56 offset:4544
	ds_load_u8 v42, v56 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v41, 16, v37
	v_wmma_i32_16x16x16_iu8 v[9:16], v[37:40], v[29:32], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v29, v55 offset:2912
	ds_load_u8 v30, v55 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v55 offset:3040
	ds_load_u8 v31, v55 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	ds_load_u8 v31, v55 offset:2656
	ds_load_u8 v32, v55 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v55 offset:2784
	ds_load_u8 v41, v55 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v32, 0xc0c0004
	v_lshl_or_b32 v32, v30, 16, v29
	ds_load_u8 v29, v55 offset:2400
	ds_load_u8 v30, v55 offset:2336
	v_lshl_or_b32 v31, v41, 16, v31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v55 offset:2528
	ds_load_u8 v41, v55 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v41, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	ds_load_u8 v29, v55 offset:2144
	ds_load_u8 v41, v55 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v41, v29, 0xc0c0004
	ds_load_u8 v41, v55 offset:2272
	ds_load_u8 v42, v55 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v41, 16, v29
	v_wmma_i32_16x16x16_iu8 v[57:64], v[33:36], v[29:32], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[37:40], v[29:32], v[122:129] neg_lo:[1,1,0]
	ds_load_u8 v29, v55 offset:3904
	ds_load_u8 v30, v55 offset:3840
	ds_load_u8 v31, v55 offset:4032
	ds_load_u8 v32, v55 offset:3968
	ds_load_u8 v33, v55 offset:3648
	ds_load_u8 v34, v55 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v55 offset:3776
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v55 offset:3712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v32, v30, 0xc0c0004
	v_lshl_or_b32 v32, v31, 16, v29
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v31, v30, 16, v33
	ds_load_u8 v29, v55 offset:3392
	ds_load_u8 v30, v55 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v55 offset:3520
	ds_load_u8 v33, v55 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v33, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	ds_load_u8 v29, v55 offset:3136
	ds_load_u8 v33, v55 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v33, v29, 0xc0c0004
	ds_load_u8 v33, v55 offset:3264
	ds_load_u8 v34, v55 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v33, 16, v29
	ds_load_u8 v33, v56 offset:7808
	ds_load_u8 v34, v56 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v56 offset:8064
	ds_load_u8 v35, v56 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v56 offset:7296
	ds_load_u8 v36, v56 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v56 offset:7552
	ds_load_u8 v37, v56 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v36, 0xc0c0004
	v_lshl_or_b32 v36, v34, 16, v33
	ds_load_u8 v33, v56 offset:6784
	ds_load_u8 v34, v56 offset:6656
	v_lshl_or_b32 v35, v37, 16, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v56 offset:7040
	ds_load_u8 v37, v56 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v37, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v56 offset:6272
	ds_load_u8 v37, v56 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v37, v33, 0xc0c0004
	ds_load_u8 v37, v56 offset:6528
	ds_load_u8 v38, v56 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v37, 16, v33
	ds_load_u8 v37, v56 offset:7872
	ds_load_u8 v38, v56 offset:7744
	v_wmma_i32_16x16x16_iu8 v[17:24], v[33:36], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v56 offset:8128
	ds_load_u8 v39, v56 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v39, v56 offset:7360
	ds_load_u8 v40, v56 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v56 offset:7616
	ds_load_u8 v41, v56 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v40, 0xc0c0004
	v_lshl_or_b32 v40, v38, 16, v37
	ds_load_u8 v37, v56 offset:6848
	ds_load_u8 v38, v56 offset:6720
	v_lshl_or_b32 v39, v41, 16, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v56 offset:7104
	ds_load_u8 v41, v56 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v41, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v56 offset:6336
	ds_load_u8 v41, v56 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v41, v37, 0xc0c0004
	ds_load_u8 v41, v56 offset:6592
	ds_load_u8 v42, v56 offset:6464
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v56, v121, s13, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v41, 16, v37
	v_wmma_i32_16x16x16_iu8 v[9:16], v[37:40], v[29:32], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v29, v55 offset:3936
	ds_load_u8 v30, v55 offset:3872
	v_cvt_f32_i32_e32 v44, v13
	v_cvt_f32_i32_e32 v45, v14
	v_cvt_f32_i32_e32 v46, v15
	v_cvt_f32_i32_e32 v47, v16
	v_cvt_f32_i32_e32 v43, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v55 offset:4064
	ds_load_u8 v31, v55 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	ds_load_u8 v31, v55 offset:3680
	ds_load_u8 v32, v55 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v55 offset:3808
	ds_load_u8 v41, v55 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v32, 0xc0c0004
	v_lshl_or_b32 v32, v30, 16, v29
	ds_load_u8 v29, v55 offset:3424
	ds_load_u8 v30, v55 offset:3360
	v_lshl_or_b32 v31, v41, 16, v31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v55 offset:3552
	ds_load_u8 v41, v55 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v41, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	ds_load_u8 v29, v55 offset:3168
	ds_load_u8 v41, v55 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v41, v29, 0xc0c0004
	ds_load_u8 v41, v55 offset:3296
	ds_load_u8 v42, v55 offset:3232
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v55, v120, s13, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s13, s45, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cmp_lt_i32 s13, 2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v55, 0x80000000, v55, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s45, s13, 0
	s_add_i32 s10, s10, -1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s13, s45, 12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_addk_i32 s22, 0x100
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s14, s13, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	s_add_i32 s34, s14, 0x4000
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	v_cvt_f32_i32_e32 v42, v11
	v_lshl_or_b32 v29, v41, 16, v29
	v_cvt_f32_i32_e32 v41, v10
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[33:36], v[29:32], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[37:40], v[29:32], v[122:129] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v32, v17
	v_cvt_f32_i32_e32 v33, v18
	v_cvt_f32_i32_e32 v34, v19
	v_cvt_f32_i32_e32 v48, v57
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v57, v119, s12, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v13, v58
	v_cvt_f32_i32_e32 v14, v59
	v_cvt_f32_i32_e32 v35, v20
	v_cvt_f32_i32_e32 v15, v60
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v55, v55, s[28:31], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v57, v57, s[36:39], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v16, v61
	v_cvt_f32_i32_e32 v36, v21
	v_cvt_f32_i32_e32 v37, v22
	v_cvt_f32_i32_e32 v38, v23
	v_cvt_f32_i32_e32 v39, v24
	v_cvt_f32_i32_e32 v40, v9
	v_cvt_f32_i32_e32 v17, v62
	v_cvt_f32_i32_e32 v19, v64
	v_cvt_f32_i32_e32 v22, v124
	v_cvt_f32_i32_e32 v30, v128
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[9:12], v54, s[24:27], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v18, v63
	v_cvt_f32_i32_e32 v20, v122
	v_cvt_f32_i32_e32 v21, v123
	v_cvt_f32_i32_e32 v23, v125
	v_cvt_f32_i32_e32 v24, v126
	v_cvt_f32_i32_e32 v29, v127
	v_cvt_f32_i32_e32 v31, v129
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v55, 16, v55
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v57, 16, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v58, v55, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v71, v58, v32
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v32, v118, s12, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	buffer_load_u16 v32, v32, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v58, 16, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v55, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v73, v32, v33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v32, v117, s12, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v33, 0x80000000, v56, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	buffer_load_u16 v32, v32, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v59, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v55, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v74, v32, v34
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v32, v116, s12, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	buffer_load_u16 v32, v32, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v60, 16, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v55, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v75, v32, v35
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v32, v115, s12, 1
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	buffer_load_u16 v32, v32, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v61, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v55, v61
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v76, v32, v36
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v32, v114, s12, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	buffer_load_u16 v32, v32, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v55, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v77, v32, v37
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v32, v113, s12, 1
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	buffer_load_u16 v32, v32, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v55, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v78, v32, v38
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v32, v112, s12, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	buffer_load_u16 v32, v32, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v55, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v79, v32, v39
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v32, v111, s12, 1
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	buffer_load_u16 v32, v32, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v39, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v55, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v80, v32, v40
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v32, v110, s12, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	buffer_load_u16 v32, v32, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v40, 16, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v55, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v81, v32, v41
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v32, v109, s12, 1
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	buffer_load_u16 v32, v32, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v55, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v82, v32, v42
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v32, v108, s12, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	buffer_load_u16 v32, v32, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v42, 16, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v55, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v83, v32, v43
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v32, v106, s12, 1
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	buffer_load_u16 v32, v32, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v43, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v55, v43
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v84, v32, v44
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v32, v107, s12, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	buffer_load_u16 v32, v32, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v55, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v85, v32, v45
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v32, v105, s12, 1
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	buffer_load_u16 v32, v32, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v45, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v55, v45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v86, v32, v46
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v32, v104, s12, 1
	s_mov_b32 s12, s43
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s43, s14, s13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s10, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v33, v33, s[28:31], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v32, v32, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v56, 16, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v55, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v87, v32, v47 :: v_dual_lshlrev_b32 v46, 16, v33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v33, v46, v57
	v_mul_f32_e32 v55, v46, v59
	v_mul_f32_e32 v57, v46, v60
	v_mul_f32_e32 v36, v46, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v37, v46, v37 :: v_dual_fmac_f32 v88, v33, v48
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[32:35], v53, s[24:27], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v38, v46, v38
	v_mul_f32_e32 v39, v46, v39
	v_mul_f32_e32 v40, v46, v40
	v_mul_f32_e32 v41, v46, v41
	v_mul_f32_e32 v42, v46, v42
	v_mul_f32_e32 v43, v46, v43
	v_mul_f32_e32 v48, v46, v58
	v_mul_f32_e32 v58, v46, v61
	v_mul_f32_e32 v44, v46, v44
	v_mul_f32_e32 v45, v46, v45
	v_dual_mul_f32 v46, v46, v56 :: v_dual_add_nc_u32 v53, s44, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v97, v39, v20 :: v_dual_add_nc_u32 v54, s44, v54
	v_dual_fmac_f32 v90, v55, v14 :: v_dual_add_nc_u32 v47, s14, v69
	v_dual_fmac_f32 v91, v57, v15 :: v_dual_fmac_f32 v92, v58, v16
	v_dual_fmac_f32 v93, v36, v17 :: v_dual_fmac_f32 v94, v37, v18
	v_dual_fmac_f32 v95, v38, v19 :: v_dual_fmac_f32 v98, v40, v21
	v_dual_fmac_f32 v99, v41, v22 :: v_dual_fmac_f32 v100, v42, v23
	v_fmac_f32_e32 v101, v43, v24
	v_fmac_f32_e32 v89, v48, v13
	v_dual_fmac_f32 v102, v44, v29 :: v_dual_fmac_f32 v103, v45, v30
	v_fmac_f32_e32 v96, v46, v31
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v56, s43, v69
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v47, v[25:28] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v56, v[9:12]
	s_waitcnt vmcnt(0)
	ds_store_b128 v56, v[32:35] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_add_i32 s4, s11, 0x200
	s_branch .LBB0_5
.LBB0_4:
	s_add_i32 s4, s22, 0x100
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_mov_b32_e32 v73, 0
	v_mov_b32_e32 v71, 0
	s_add_i32 s46, 0, 0x4000
	s_add_i32 s34, 0, 0x5000
	s_add_i32 s43, 0, 0x2000
.LBB0_5:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v1, v51, v50
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	v_mov_b32_e32 v153, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_7
; %bb.6:
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v2, s46, v49
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
	ds_load_u8 v46, v2 offset:992
	ds_load_u8 v47, v2 offset:928
	ds_load_u8 v48, v2 offset:864
	ds_load_u8 v66, v2 offset:800
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v4, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v5, v8, v7, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v8, s12, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v11, v10, 0xc0c0004
	v_lshl_or_b32 v6, v4, 16, v3
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v13, v12, 0xc0c0004
	s_mov_b32 s12, 0
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v15, v14, 0xc0c0004
	ds_load_u8 v12, v8 offset:1664
	ds_load_u8 v13, v8 offset:1536
	ds_load_u8 v14, v8 offset:1920
	ds_load_u8 v15, v8 offset:1792
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v17, v16, 0xc0c0004
	s_mov_b32 s13, s12
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v11, v19, v18, 0xc0c0004
	v_lshl_or_b32 v4, v4, 16, v3
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
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
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
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
	v_dual_mov_b32 v10, s12 :: v_dual_mov_b32 v15, s17
	v_mov_b32_e32 v11, s13
	ds_load_u8 v34, v2 offset:1856
	ds_load_u8 v35, v2 offset:1792
	ds_load_u8 v36, v2 offset:1984
	ds_load_u8 v37, v2 offset:1920
	ds_load_u8 v38, v2 offset:1600
	ds_load_u8 v39, v2 offset:1536
	ds_load_u8 v40, v2 offset:1728
	ds_load_u8 v41, v2 offset:1664
	ds_load_u8 v50, v2 offset:1344
	ds_load_u8 v51, v2 offset:1280
	ds_load_u8 v52, v2 offset:1472
	ds_load_u8 v53, v2 offset:1408
	ds_load_u8 v139, v2 offset:2016
	ds_load_u8 v140, v2 offset:1952
	ds_load_u8 v141, v2 offset:1888
	ds_load_u8 v142, v2 offset:1824
	v_mov_b32_e32 v13, s15
	ds_load_u8 v30, v8 offset:1472
	ds_load_u8 v31, v8 offset:1344
	ds_load_u8 v32, v8 offset:1216
	ds_load_u8 v33, v8 offset:1088
	ds_load_u8 v62, v8 offset:960
	ds_load_u8 v63, v8 offset:832
	ds_load_u8 v64, v8 offset:704
	ds_load_u8 v65, v8 offset:576
	ds_load_u8 v122, v8 offset:448
	ds_load_u8 v123, v8 offset:320
	ds_load_u8 v124, v8 offset:192
	ds_load_u8 v125, v8 offset:64
	ds_load_u8 v67, v2 offset:736
	ds_load_u8 v68, v2 offset:672
	ds_load_u8 v130, v2 offset:608
	ds_load_u8 v131, v2 offset:544
	ds_load_u8 v7, v2 offset:480
	ds_load_u8 v132, v2 offset:416
	ds_load_u8 v133, v2 offset:352
	ds_load_u8 v134, v2 offset:288
	ds_load_u8 v135, v2 offset:224
	ds_load_u8 v136, v2 offset:160
	ds_load_u8 v137, v2 offset:96
	ds_load_u8 v138, v2 offset:32
	ds_load_u8 v147, v2 offset:1504
	ds_load_u8 v148, v2 offset:1440
	ds_load_u8 v149, v2 offset:1376
	ds_load_u8 v150, v2 offset:1312
	ds_load_u8 v151, v2 offset:1248
	ds_load_u8 v152, v2 offset:1184
	ds_load_u8 v153, v2 offset:1120
	ds_load_u8 v154, v2 offset:1056
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v177, v2 offset:2528
	ds_load_u8 v178, v2 offset:2464
	ds_load_u8 v179, v2 offset:2400
	ds_load_u8 v180, v2 offset:2336
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	ds_load_u8 v181, v2 offset:2272
	ds_load_u8 v182, v2 offset:2208
	ds_load_u8 v183, v2 offset:2144
	ds_load_u8 v184, v2 offset:2080
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v40, v51, v50, 0xc0c0004
	ds_load_u8 v159, v8 offset:3008
	ds_load_u8 v160, v8 offset:2880
	ds_load_u8 v161, v8 offset:2752
	ds_load_u8 v162, v8 offset:2624
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v41, v53, v52, 0xc0c0004
	ds_load_u8 v51, v8 offset:3712
	ds_load_u8 v52, v8 offset:3584
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v2 offset:1088
	ds_load_u8 v54, v2 offset:1024
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v2 offset:1216
	ds_load_u8 v55, v2 offset:1152
	ds_load_u8 v143, v2 offset:1760
	ds_load_u8 v144, v2 offset:1696
	ds_load_u8 v145, v2 offset:1632
	ds_load_u8 v146, v2 offset:1568
	ds_load_u8 v163, v8 offset:2496
	ds_load_u8 v164, v8 offset:2368
	ds_load_u8 v165, v8 offset:2240
	ds_load_u8 v166, v8 offset:2112
	ds_load_u8 v197, v8 offset:5056
	ds_load_u8 v198, v8 offset:4928
	ds_load_u8 v199, v8 offset:4800
	ds_load_u8 v200, v8 offset:4672
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v27, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v32, v123, v122, 0xc0c0004
	v_dual_mov_b32 v12, s14 :: v_dual_mov_b32 v17, s19
	v_mov_b32_e32 v14, s16
	v_mov_b32_e32 v16, s18
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v7, v132, v7, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[18:25], v[42:45], v[3:6], v[10:17] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v53, v55, v37, 0xc0c0004
	v_lshl_or_b32 v37, v36, 16, v34
	v_perm_b32 v50, v54, v35, 0xc0c0004
	ds_load_u8 v54, v8 offset:3968
	ds_load_u8 v55, v8 offset:3840
	v_lshl_or_b32 v36, v39, 16, v38
	v_lshl_or_b32 v35, v41, 16, v40
	v_perm_b32 v51, v52, v51, 0xc0c0004
	v_lshl_or_b32 v34, v53, 16, v50
	ds_load_u8 v38, v8 offset:3200
	ds_load_u8 v39, v8 offset:3072
	ds_load_u8 v40, v8 offset:3456
	ds_load_u8 v41, v8 offset:3328
	ds_load_u8 v50, v8 offset:2688
	ds_load_u8 v53, v8 offset:2560
	ds_load_u8 v56, v8 offset:2944
	ds_load_u8 v57, v8 offset:2816
	ds_load_u8 v126, v8 offset:4032
	ds_load_u8 v127, v8 offset:3904
	ds_load_u8 v128, v8 offset:3776
	ds_load_u8 v129, v8 offset:3648
	ds_load_u8 v52, v8 offset:2176
	ds_load_u8 v58, v8 offset:2048
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v40, v53, v50, 0xc0c0004
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v41, v57, v56, 0xc0c0004
	ds_load_u8 v56, v2 offset:2880
	ds_load_u8 v57, v2 offset:2816
	ds_load_u8 v55, v8 offset:2432
	ds_load_u8 v59, v8 offset:2304
	ds_load_u8 v155, v8 offset:3520
	ds_load_u8 v156, v8 offset:3392
	ds_load_u8 v157, v8 offset:3264
	ds_load_u8 v158, v8 offset:3136
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v122, v127, v126, 0xc0c0004
	v_lshl_or_b32 v53, v54, 16, v51
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v50, v58, v52, 0xc0c0004
	v_lshl_or_b32 v52, v39, 16, v38
	v_lshl_or_b32 v51, v41, 16, v40
	v_perm_b32 v126, v160, v159, 0xc0c0004
	v_perm_b32 v127, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v55, v59, v55, 0xc0c0004
	ds_load_u8 v58, v2 offset:3008
	ds_load_u8 v59, v2 offset:2944
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v57, v2 offset:2112
	ds_load_u8 v171, v2 offset:2048
	v_lshl_or_b32 v50, v55, 16, v50
	ds_load_u8 v38, v2 offset:2624
	ds_load_u8 v39, v2 offset:2560
	ds_load_u8 v40, v2 offset:2752
	ds_load_u8 v41, v2 offset:2688
	ds_load_u8 v54, v2 offset:2368
	ds_load_u8 v55, v2 offset:2304
	ds_load_u8 v60, v2 offset:2496
	ds_load_u8 v61, v2 offset:2432
	ds_load_u8 v167, v2 offset:3040
	ds_load_u8 v168, v2 offset:2976
	ds_load_u8 v169, v2 offset:2912
	ds_load_u8 v170, v2 offset:2848
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v123, v158, v157, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[18:25], v[50:53], v[34:37], v[18:25] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v55, v61, v60, 0xc0c0004
	ds_load_u8 v59, v2 offset:2240
	ds_load_u8 v172, v2 offset:2176
	ds_load_u8 v173, v2 offset:2784
	ds_load_u8 v174, v2 offset:2720
	ds_load_u8 v175, v2 offset:2656
	ds_load_u8 v176, v2 offset:2592
	v_perm_b32 v57, v171, v57, 0xc0c0004
	ds_load_u8 v60, v8 offset:5760
	ds_load_u8 v61, v8 offset:5632
	ds_load_u8 v171, v8 offset:6016
	ds_load_u8 v185, v8 offset:5888
	v_lshl_or_b32 v41, v58, 16, v56
	v_lshl_or_b32 v40, v39, 16, v38
	v_lshl_or_b32 v39, v55, 16, v54
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v59, v172, v59, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v38, v59, 16, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v185, v171, 0xc0c0004
	ds_load_u8 v171, v8 offset:4224
	ds_load_u8 v185, v8 offset:4096
	ds_load_u8 v191, v8 offset:4480
	ds_load_u8 v192, v8 offset:4352
	ds_load_u8 v193, v8 offset:5568
	ds_load_u8 v194, v8 offset:5440
	ds_load_u8 v195, v8 offset:5312
	ds_load_u8 v196, v8 offset:5184
	ds_load_u8 v54, v8 offset:5248
	ds_load_u8 v55, v8 offset:5120
	ds_load_u8 v56, v8 offset:5504
	ds_load_u8 v57, v8 offset:5376
	ds_load_u8 v58, v8 offset:4736
	ds_load_u8 v59, v8 offset:4608
	ds_load_u8 v172, v8 offset:4992
	ds_load_u8 v186, v8 offset:4864
	ds_load_u8 v187, v8 offset:6080
	ds_load_u8 v188, v8 offset:5952
	ds_load_u8 v189, v8 offset:5824
	ds_load_u8 v190, v8 offset:5696
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v55, v57, v56, 0xc0c0004
	v_perm_b32 v171, v185, v171, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_perm_b32 v185, v192, v191, 0xc0c0004
	ds_load_u8 v191, v2 offset:3648
	ds_load_u8 v192, v2 offset:3584
	ds_load_u8 v207, v2 offset:3776
	ds_load_u8 v208, v2 offset:3712
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v59, v186, v172, 0xc0c0004
	ds_load_u8 v172, v2 offset:3904
	ds_load_u8 v186, v2 offset:3840
	ds_load_u8 v201, v2 offset:4032
	ds_load_u8 v202, v2 offset:3968
	ds_load_u8 v203, v8 offset:4544
	ds_load_u8 v204, v8 offset:4416
	ds_load_u8 v205, v8 offset:4288
	ds_load_u8 v206, v8 offset:4160
	v_lshl_or_b32 v57, v61, 16, v60
	v_lshl_or_b32 v56, v55, 16, v54
	v_lshl_or_b32 v54, v185, 16, v171
	v_lshl_or_b32 v55, v59, 16, v58
	ds_load_u8 v171, v2 offset:4064
	ds_load_u8 v185, v2 offset:4000
	ds_load_u8 v209, v2 offset:3936
	ds_load_u8 v210, v2 offset:3872
	v_wmma_i32_16x16x16_iu8 v[18:25], v[54:57], v[38:41], v[18:25] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v58, v186, v172, 0xc0c0004
	v_perm_b32 v60, v192, v191, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v59, v202, v201, 0xc0c0004
	v_perm_b32 v191, v208, v207, 0xc0c0004
	ds_load_u8 v192, v2 offset:3136
	ds_load_u8 v207, v2 offset:3072
	ds_load_u8 v208, v2 offset:3264
	ds_load_u8 v215, v2 offset:3200
	ds_load_u8 v172, v2 offset:3392
	ds_load_u8 v186, v2 offset:3328
	ds_load_u8 v201, v2 offset:3520
	ds_load_u8 v202, v2 offset:3456
	ds_load_u8 v211, v2 offset:3808
	ds_load_u8 v212, v2 offset:3744
	ds_load_u8 v213, v2 offset:3680
	ds_load_u8 v214, v2 offset:3616
	v_lshl_or_b32 v61, v59, 16, v58
	v_lshl_or_b32 v60, v191, 16, v60
	ds_load_u8 v191, v2 offset:3552
	ds_load_u8 v216, v2 offset:3488
	ds_load_u8 v217, v2 offset:3424
	ds_load_u8 v218, v2 offset:3360
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v58, v186, v172, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v59, v202, v201, 0xc0c0004
	ds_load_u8 v172, v8 offset:7808
	ds_load_u8 v186, v8 offset:7680
	ds_load_u8 v201, v8 offset:8064
	ds_load_u8 v202, v8 offset:7936
	ds_load_u8 v219, v2 offset:3296
	ds_load_u8 v220, v2 offset:3232
	ds_load_u8 v221, v2 offset:3168
	ds_load_u8 v222, v2 offset:3104
	v_perm_b32 v2, v207, v192, 0xc0c0004
	v_perm_b32 v192, v215, v208, 0xc0c0004
	ds_load_u8 v207, v8 offset:7296
	ds_load_u8 v208, v8 offset:7168
	ds_load_u8 v215, v8 offset:7552
	ds_load_u8 v223, v8 offset:7424
	v_lshl_or_b32 v59, v59, 16, v58
	v_lshl_or_b32 v58, v192, 16, v2
	ds_load_u8 v2, v8 offset:6784
	ds_load_u8 v192, v8 offset:6656
	ds_load_u8 v224, v8 offset:7040
	ds_load_u8 v225, v8 offset:6912
	ds_load_u8 v226, v8 offset:8128
	ds_load_u8 v227, v8 offset:8000
	ds_load_u8 v228, v8 offset:7872
	ds_load_u8 v229, v8 offset:7744
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v172, v186, v172, 0xc0c0004
	ds_load_u8 v186, v8 offset:6272
	ds_load_u8 v230, v8 offset:6144
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v201, v202, v201, 0xc0c0004
	ds_load_u8 v202, v8 offset:7616
	ds_load_u8 v231, v8 offset:7488
	ds_load_u8 v232, v8 offset:7360
	ds_load_u8 v233, v8 offset:7232
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v207, v208, v207, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v192, v192, v2, 0xc0c0004
	v_perm_b32 v2, v29, v28, 0xc0c0004
	v_perm_b32 v28, v31, v30, 0xc0c0004
	v_perm_b32 v29, v65, v64, 0xc0c0004
	v_perm_b32 v30, v63, v62, 0xc0c0004
	v_perm_b32 v31, v125, v124, 0xc0c0004
	v_lshl_or_b32 v65, v26, 16, v2
	v_lshl_or_b32 v64, v28, 16, v27
	v_perm_b32 v2, v129, v128, 0xc0c0004
	v_lshl_or_b32 v63, v30, 16, v29
	v_lshl_or_b32 v62, v32, 16, v31
	v_perm_b32 v124, v156, v155, 0xc0c0004
	v_perm_b32 v125, v162, v161, 0xc0c0004
	v_perm_b32 v128, v164, v163, 0xc0c0004
	v_perm_b32 v129, v204, v203, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[26:33], v[62:65], v[3:6], v[10:17] neg_lo:[1,1,0]
	v_lshl_or_b32 v5, v122, 16, v2
	v_lshl_or_b32 v4, v124, 16, v123
	v_lshl_or_b32 v3, v126, 16, v125
	v_lshl_or_b32 v2, v128, 16, v127
	v_perm_b32 v6, v190, v189, 0xc0c0004
	v_perm_b32 v122, v188, v187, 0xc0c0004
	v_perm_b32 v123, v196, v195, 0xc0c0004
	v_perm_b32 v124, v194, v193, 0xc0c0004
	v_perm_b32 v126, v200, v199, 0xc0c0004
	v_perm_b32 v127, v198, v197, 0xc0c0004
	v_perm_b32 v128, v206, v205, 0xc0c0004
	v_perm_b32 v208, v223, v215, 0xc0c0004
	ds_load_u8 v215, v8 offset:6528
	ds_load_u8 v223, v8 offset:6400
	ds_load_u8 v234, v8 offset:7104
	ds_load_u8 v235, v8 offset:6976
	ds_load_u8 v236, v8 offset:6848
	ds_load_u8 v237, v8 offset:6720
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v224, v225, v224, 0xc0c0004
	ds_load_u8 v225, v8 offset:6592
	ds_load_u8 v238, v8 offset:6464
	ds_load_u8 v239, v8 offset:6336
	ds_load_u8 v8, v8 offset:6208
	v_wmma_i32_16x16x16_iu8 v[26:33], v[2:5], v[34:37], v[26:33] neg_lo:[1,1,0]
	v_lshl_or_b32 v125, v122, 16, v6
	v_lshl_or_b32 v124, v124, 16, v123
	v_lshl_or_b32 v123, v127, 16, v126
	v_lshl_or_b32 v122, v129, 16, v128
	v_perm_b32 v34, v66, v48, 0xc0c0004
	v_perm_b32 v35, v47, v46, 0xc0c0004
	v_perm_b32 v36, v131, v130, 0xc0c0004
	v_perm_b32 v37, v68, v67, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[26:33], v[122:125], v[38:41], v[26:33] neg_lo:[1,1,0]
	v_perm_b32 v38, v134, v133, 0xc0c0004
	v_perm_b32 v39, v138, v137, 0xc0c0004
	v_perm_b32 v40, v136, v135, 0xc0c0004
	v_lshl_or_b32 v133, v35, 16, v34
	v_lshl_or_b32 v132, v37, 16, v36
	v_lshl_or_b32 v131, v7, 16, v38
	v_perm_b32 v7, v142, v141, 0xc0c0004
	v_lshl_or_b32 v130, v40, 16, v39
	v_perm_b32 v47, v140, v139, 0xc0c0004
	v_perm_b32 v48, v146, v145, 0xc0c0004
	v_perm_b32 v66, v144, v143, 0xc0c0004
	v_perm_b32 v67, v150, v149, 0xc0c0004
	v_perm_b32 v68, v148, v147, 0xc0c0004
	v_perm_b32 v134, v154, v153, 0xc0c0004
	v_perm_b32 v135, v152, v151, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[34:41], v[42:45], v[130:133], v[10:17] neg_lo:[1,1,0]
	v_lshl_or_b32 v45, v47, 16, v7
	v_lshl_or_b32 v44, v66, 16, v48
	v_lshl_or_b32 v43, v68, 16, v67
	v_lshl_or_b32 v42, v135, 16, v134
	v_perm_b32 v7, v170, v169, 0xc0c0004
	v_perm_b32 v47, v168, v167, 0xc0c0004
	v_perm_b32 v48, v176, v175, 0xc0c0004
	v_perm_b32 v66, v174, v173, 0xc0c0004
	v_perm_b32 v67, v180, v179, 0xc0c0004
	v_perm_b32 v68, v178, v177, 0xc0c0004
	v_perm_b32 v134, v184, v183, 0xc0c0004
	v_perm_b32 v135, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v6, v229, v228, 0xc0c0004
	v_perm_b32 v155, v227, v226, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v8, v239, 0xc0c0004
	v_perm_b32 v46, v238, v225, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[34:41], v[50:53], v[42:45], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v53, v47, 16, v7
	v_lshl_or_b32 v52, v66, 16, v48
	v_lshl_or_b32 v51, v68, 16, v67
	v_lshl_or_b32 v50, v135, 16, v134
	v_wmma_i32_16x16x16_iu8 v[10:17], v[62:65], v[130:133], v[10:17] neg_lo:[1,1,0]
	v_perm_b32 v186, v230, v186, 0xc0c0004
	v_perm_b32 v215, v223, v215, 0xc0c0004
	v_perm_b32 v156, v233, v232, 0xc0c0004
	v_perm_b32 v157, v231, v202, 0xc0c0004
	v_perm_b32 v158, v237, v236, 0xc0c0004
	v_perm_b32 v159, v235, v234, 0xc0c0004
	v_lshl_or_b32 v137, v155, 16, v6
	v_lshl_or_b32 v134, v46, 16, v8
	v_wmma_i32_16x16x16_iu8 v[34:41], v[54:57], v[50:53], v[34:41] neg_lo:[1,1,0]
	v_perm_b32 v6, v210, v209, 0xc0c0004
	v_perm_b32 v7, v185, v171, 0xc0c0004
	v_perm_b32 v8, v214, v213, 0xc0c0004
	v_perm_b32 v46, v212, v211, 0xc0c0004
	v_perm_b32 v47, v218, v217, 0xc0c0004
	v_perm_b32 v48, v216, v191, 0xc0c0004
	v_perm_b32 v54, v222, v221, 0xc0c0004
	v_perm_b32 v55, v220, v219, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[10:17], v[2:5], v[42:45], v[10:17] neg_lo:[1,1,0]
	v_lshl_or_b32 v129, v201, 16, v172
	v_lshl_or_b32 v128, v208, 16, v207
	v_lshl_or_b32 v127, v224, 16, v192
	v_lshl_or_b32 v126, v215, 16, v186
	v_lshl_or_b32 v136, v157, 16, v156
	v_lshl_or_b32 v135, v159, 16, v158
	v_lshl_or_b32 v5, v7, 16, v6
	v_lshl_or_b32 v4, v46, 16, v8
	v_lshl_or_b32 v3, v48, 16, v47
	v_lshl_or_b32 v2, v55, 16, v54
	v_wmma_i32_16x16x16_iu8 v[10:17], v[122:125], v[50:53], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[18:25], v[126:129], v[58:61], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[26:33], v[134:137], v[58:61], v[26:33] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[126:129], v[2:5], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[10:17], v[134:137], v[2:5], v[10:17] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v122, v19
	v_cvt_f32_i32_e32 v123, v20
	v_cvt_f32_i32_e32 v124, v21
	v_cvt_f32_i32_e32 v125, v22
	v_cvt_f32_i32_e32 v126, v23
	v_cvt_f32_i32_e32 v127, v24
	v_cvt_f32_i32_e32 v128, v25
	v_cvt_f32_i32_e32 v129, v26
	v_cvt_f32_i32_e32 v130, v27
	v_cvt_f32_i32_e32 v131, v28
	v_cvt_f32_i32_e32 v133, v29
	v_cvt_f32_i32_e32 v134, v30
	v_cvt_f32_i32_e32 v135, v31
	v_cvt_f32_i32_e32 v136, v32
	v_cvt_f32_i32_e32 v137, v33
	v_cvt_f32_i32_e32 v138, v34
	v_cvt_f32_i32_e32 v139, v35
	v_cvt_f32_i32_e32 v140, v36
	v_cvt_f32_i32_e32 v141, v37
	v_cvt_f32_i32_e32 v142, v38
	v_cvt_f32_i32_e32 v143, v39
	v_cvt_f32_i32_e32 v144, v40
	v_cvt_f32_i32_e32 v145, v41
	v_cvt_f32_i32_e32 v146, v10
	v_cvt_f32_i32_e32 v147, v11
	v_cvt_f32_i32_e32 v148, v12
	v_cvt_f32_i32_e32 v149, v13
	v_cvt_f32_i32_e32 v150, v14
	v_cvt_f32_i32_e32 v151, v15
	v_cvt_f32_i32_e32 v152, v16
	v_cvt_f32_i32_e32 v153, v17
	v_cvt_f32_i32_e32 v132, v18
.LBB0_7:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s5, s22, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s5, s5, 25
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s5, s22, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s5, s5, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s5, s42
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v2, v120, s5, 1
	v_add_lshl_u32 v3, v121, s5, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s6, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s5, s5, s35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v4, v119, s5, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v5, v118, s5, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s9, s9, 0xffff
	s_clause 0x1
	buffer_load_u16 v154, v2, s[8:11], 0 offen
	buffer_load_u16 v155, v3, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v117, s5, 1
	v_dual_cndmask_b32 v3, 0x80000000, v4 :: v_dual_cndmask_b32 v4, 0x80000000, v5
	v_add_lshl_u32 v5, v116, s5, 1
	v_add_lshl_u32 v6, v115, s5, 1
	v_add_lshl_u32 v7, v114, s5, 1
	v_add_lshl_u32 v8, v113, s5, 1
	v_add_lshl_u32 v10, v112, s5, 1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	v_add_lshl_u32 v11, v111, s5, 1
	s_and_b32 s21, s21, 0xffff
	v_add_lshl_u32 v12, v110, s5, 1
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_add_lshl_u32 v13, v109, s5, 1
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	s_clause 0x7
	buffer_load_u16 v156, v3, s[20:23], 0 offen
	buffer_load_u16 v157, v4, s[20:23], 0 offen
	buffer_load_u16 v158, v2, s[20:23], 0 offen
	buffer_load_u16 v159, v5, s[20:23], 0 offen
	buffer_load_u16 v160, v6, s[20:23], 0 offen
	buffer_load_u16 v161, v7, s[20:23], 0 offen
	buffer_load_u16 v162, v8, s[20:23], 0 offen
	buffer_load_u16 v163, v10, s[20:23], 0 offen
	v_add_lshl_u32 v5, v108, s5, 1
	v_add_lshl_u32 v6, v106, s5, 1
	v_dual_cndmask_b32 v2, 0x80000000, v11 :: v_dual_mov_b32 v11, 0
	v_add_lshl_u32 v7, v107, s5, 1
	v_add_lshl_u32 v8, v105, s5, 1
	v_add_lshl_u32 v10, v104, s5, 1
	v_dual_cndmask_b32 v3, 0x80000000, v12 :: v_dual_cndmask_b32 v4, 0x80000000, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	v_dual_mov_b32 v13, 0 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	v_dual_mov_b32 v15, 0 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	v_mov_b32_e32 v17, 0
	s_clause 0x7
	buffer_load_u16 v164, v2, s[20:23], 0 offen
	buffer_load_u16 v165, v3, s[20:23], 0 offen
	buffer_load_u16 v166, v4, s[20:23], 0 offen
	buffer_load_u16 v167, v5, s[20:23], 0 offen
	buffer_load_u16 v168, v6, s[20:23], 0 offen
	buffer_load_u16 v169, v7, s[20:23], 0 offen
	buffer_load_u16 v170, v8, s[20:23], 0 offen
	buffer_load_u16 v171, v10, s[20:23], 0 offen
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v7, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v8, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s5, 0
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v172, s34, v49
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v26, s43, v1
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
	v_mov_b32_e32 v1, s12
	v_mov_b32_e32 v3, s14
	ds_load_u8 v17, v172 offset:1856
	ds_load_u8 v18, v172 offset:1792
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v6, s17
	v_mov_b32_e32 v8, s19
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
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v26, 16, v27
	ds_load_u8 v26, v172 offset:864
	ds_load_u8 v27, v172 offset:800
	v_wmma_i32_16x16x16_iu8 v[17:24], v[49:52], v[65:68], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
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
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v35, v32
	v_cvt_f32_i32_e32 v36, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_9:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s6, s4, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s6, s6, 25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s4, s4, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v55.h, v169.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v57.h, v167.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s42
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v120, s4, 1
	v_add_lshl_u32 v32, v121, s4, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s6, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s4, s35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v33, v119, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v32, 0x80000000, v32
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v34, v118, s4, 1
	v_add_lshl_u32 v37, v117, s4, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	buffer_load_u16 v38, v32, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v39, v115, s4, 1
	v_cndmask_b32_e32 v32, 0x80000000, v34, vcc_lo
	v_cndmask_b32_e32 v34, 0x80000000, v37, vcc_lo
	v_add_lshl_u32 v37, v116, s4, 1
	v_add_lshl_u32 v40, v114, s4, 1
	v_add_lshl_u32 v41, v113, s4, 1
	v_add_lshl_u32 v42, v112, s4, 1
	v_add_lshl_u32 v43, v111, s4, 1
	v_add_lshl_u32 v44, v110, s4, 1
	v_add_lshl_u32 v45, v109, s4, 1
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	v_dual_cndmask_b32 v41, 0x80000000, v41 :: v_dual_cndmask_b32 v42, 0x80000000, v42
	s_clause 0x7
	buffer_load_u16 v46, v33, s[20:23], 0 offen
	buffer_load_u16 v47, v32, s[20:23], 0 offen
	buffer_load_u16 v48, v34, s[20:23], 0 offen
	buffer_load_u16 v37, v37, s[20:23], 0 offen
	buffer_load_u16 v39, v39, s[20:23], 0 offen
	buffer_load_u16 v40, v40, s[20:23], 0 offen
	buffer_load_u16 v41, v41, s[20:23], 0 offen
	buffer_load_u16 v42, v42, s[20:23], 0 offen
	v_dual_cndmask_b32 v32, 0x80000000, v43 :: v_dual_cndmask_b32 v33, 0x80000000, v44
	v_add_lshl_u32 v43, v108, s4, 1
	v_cndmask_b32_e32 v34, 0x80000000, v45, vcc_lo
	v_add_lshl_u32 v44, v106, s4, 1
	v_add_lshl_u32 v45, v107, s4, 1
	v_add_lshl_u32 v49, v105, s4, 1
	v_add_lshl_u32 v50, v104, s4, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v43, 0x80000000, v43 :: v_dual_cndmask_b32 v44, 0x80000000, v44
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v49, 0x80000000, v49 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	s_clause 0x7
	buffer_load_u16 v51, v32, s[20:23], 0 offen
	buffer_load_u16 v52, v33, s[20:23], 0 offen
	buffer_load_u16 v53, v34, s[20:23], 0 offen
	buffer_load_u16 v43, v43, s[20:23], 0 offen
	buffer_load_u16 v44, v44, s[20:23], 0 offen
	buffer_load_u16 v45, v45, s[20:23], 0 offen
	buffer_load_u16 v49, v49, s[20:23], 0 offen
	buffer_load_u16 v50, v50, s[20:23], 0 offen
	v_mov_b16_e32 v33.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v33.h, v155.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_bfe_i32 v107, v0, 0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(19)
	v_mov_b16_e64 v54.h, v170.l
	v_mov_b16_e64 v56.h, v168.l
	v_mov_b16_e32 v55.l, v33.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v106, 2, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v57.l, v33.l
	v_mov_b16_e32 v54.l, v33.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v105, 14, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v111, v33, v55 :: v_dual_and_b32 v106, 0x78, v106
	v_mul_f32_e32 v113, v33, v57
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v56.l, v33.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v107, 0x840, v107
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(18)
	v_mov_b16_e64 v34.h, v171.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v72, v72, 3, v106
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v58.h, v166.l
	v_mov_b16_e64 v59.h, v165.l
	v_mov_b16_e64 v60.h, v164.l
	v_mov_b16_e64 v61.h, v163.l
	v_mov_b16_e64 v62.h, v162.l
	v_mov_b16_e64 v63.h, v161.l
	v_mov_b16_e64 v64.h, v160.l
	v_mov_b16_e64 v65.h, v159.l
	v_mov_b16_e64 v66.h, v158.l
	v_mov_b16_e64 v67.h, v157.l
	v_mov_b16_e64 v68.h, v156.l
	v_mov_b16_e32 v34.l, v33.l
	v_mov_b16_e32 v58.l, v33.l
	v_mov_b16_e32 v59.l, v33.l
	v_mov_b16_e32 v60.l, v33.l
	v_mov_b16_e32 v61.l, v33.l
	v_mov_b16_e32 v62.l, v33.l
	v_mov_b16_e32 v63.l, v33.l
	v_mov_b16_e32 v64.l, v33.l
	v_mov_b16_e32 v65.l, v33.l
	v_mov_b16_e32 v66.l, v33.l
	v_mov_b16_e32 v67.l, v33.l
	v_mov_b16_e32 v68.l, v33.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v110, v33, v54
	v_dual_mul_f32 v115, v33, v59 :: v_dual_lshlrev_b32 v108, 11, v105
	v_mul_f32_e32 v112, v33, v56
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v72, v72, v107
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v109, v33, v34 :: v_dual_and_b32 v32, 0x7f, v0
	v_mul_f32_e32 v116, v33, v60
	v_mul_f32_e32 v117, v33, v61
	v_mul_f32_e32 v118, v33, v62
	v_mul_f32_e32 v119, v33, v63
	v_mul_f32_e32 v120, v33, v64
	v_mul_f32_e32 v121, v33, v65
	v_mul_f32_e32 v155, v33, v66
	v_mul_f32_e32 v156, v33, v67
	v_mul_f32_e32 v157, v33, v68
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_or3_b32 v72, v72, v108, v70
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v114, v33, v58
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v33.h, v154.l
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v104, 7, v70
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s4, s41, s35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v106, v110, v152, v103
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_add_i32 s4, s4, s40
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v57, v33, v57
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v104, s35, v104
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v34, v33, v34
	v_mul_f32_e32 v54, v33, v54
	v_mul_f32_e32 v58, v33, v58
	v_mul_f32_e32 v56, v33, v56
	v_mul_f32_e32 v60, v33, v60
	v_mul_f32_e32 v59, v33, v59
	v_mul_f32_e32 v55, v33, v55
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v32, s4, v32, v104
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v104, v109, v153, v96
	v_fma_f32 v110, v112, v150, v101
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v62, v33, v62
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v109, v111, v151, v102
	v_fma_f32 v111, v113, v149, v100
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v96, v96, v104, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v113, v115, v147, v98
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v103, v103, v106, s3
	v_cndmask_b32_e64 v101, v101, v110, s3
	v_cndmask_b32_e64 v102, v102, v109, s3
	v_cndmask_b32_e64 v100, v100, v111, s3
	v_cndmask_b32_e64 v98, v98, v113, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b32_e32 v0, 6, v0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v1, 16, v1
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v115, v117, v145, v95
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v95, v95, v115, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v61, v33, v61 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v47, 16, v47
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v68, v33, v68 :: v_dual_lshlrev_b32 v39, 16, v39
	v_mul_f32_e32 v66, v33, v66
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v67, v33, v67 :: v_dual_lshlrev_b32 v42, 16, v42
	v_dual_mul_f32 v65, v33, v65 :: v_dual_lshlrev_b32 v40, 16, v40
	v_mul_f32_e32 v64, v33, v64
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v138, v157, v138, v88
	v_fma_f32 v104, v34, v137, v87
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v54, v54, v136, v86
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v53, 16, v53
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v43, 16, v43
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v57, v57, v133, v83
	v_fma_f32 v58, v58, v131, v82
	v_fma_f32 v56, v56, v134, v84
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v60, v60, v129, v80
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v83, v57, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v83, v1, v39
	v_mul_f32_e32 v39, v38, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v68, v68, v132, v71
	v_fma_f32 v61, v61, v128, v79
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v63, v33, v63 :: v_dual_lshlrev_b32 v48, 16, v48
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v52, 16, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v71, v68, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v71, 0, v72
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v112, v114, v148, v99
	v_fma_f32 v114, v116, v146, v97
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v59, v59, v130, v81
	v_fma_f32 v117, v119, v143, v93
	v_fma_f32 v119, v121, v141, v91
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v86, v54, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v121, v156, v139, v89
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v86, v1, v42
	v_mul_f32_e32 v42, v38, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v67, v67, v122, v73
	v_fma_f32 v116, v118, v144, v94
	v_fma_f32 v118, v120, v142, v92
	v_fma_f32 v120, v155, v140, v90
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v55, v55, v135, v85
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v82, v58, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v82, v1, v37
	v_mul_f32_e32 v37, v38, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v66, v123, v74
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v84, v56, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v84, v1, v40 :: v_dual_lshlrev_b32 v49, 16, v49
	v_mul_f32_e32 v40, v38, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v65, v65, v124, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v80, v60, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v80, v1, v47
	v_mul_f32_e32 v47, v38, v47
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v125, v76
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v97, v97, v114, s3
	v_cndmask_b32_e64 v88, v88, v138, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v62, v62, v127, v78
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v87, v87, v104, s3
	v_cndmask_b32_e64 v59, v81, v59, s3
	v_cndmask_b32_e64 v61, v79, v61, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v79, v1, v46
	v_mul_f32_e32 v81, v1, v48
	v_mul_f32_e32 v104, v1, v51
	v_mul_f32_e32 v106, v1, v52
	v_mul_f32_e32 v46, v38, v46
	v_mul_f32_e32 v48, v38, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v63, v63, v126, v77
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v51, v38, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v93, v93, v117, s3
	v_cndmask_b32_e64 v89, v89, v121, s3
	v_cndmask_b32_e64 v67, v73, v67, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v108, v1, v43
	v_mul_f32_e32 v52, v38, v52
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v99, v99, v112, s3
	v_cndmask_b32_e64 v94, v94, v116, s3
	v_cndmask_b32_e64 v90, v90, v120, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[33:34], 2, v[32:33]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v85, v55, s3
	v_cndmask_b32_e64 v66, v74, v66, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v85, v1, v41
	v_mul_f32_e32 v107, v1, v53
	v_mul_f32_e32 v110, v1, v45
	v_mul_f32_e32 v41, v38, v41
	v_mul_f32_e32 v53, v38, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v92, v92, v118, s3
	v_cndmask_b32_e64 v91, v91, v119, s3
	v_cndmask_b32_e64 v65, v75, v65, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v109, v1, v44
	v_mul_f32_e32 v111, v1, v49
	v_mul_f32_e32 v1, v1, v50
	v_mul_f32_e32 v43, v38, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v76, v64, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v44, v38, v44
	v_mul_f32_e32 v45, v38, v45
	v_mul_f32_e32 v49, v38, v49
	v_mul_f32_e32 v38, v38, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v78, v62, s3
	v_cndmask_b32_e64 v63, v77, v63, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v79, v9, v68
	v_fma_f32 v17, v104, v17, v60
	v_fma_f32 v18, v106, v18, v59
	v_fma_f32 v46, v46, v25, v88
	v_fma_f32 v36, v51, v36, v97
	v_fma_f32 v10, v80, v10, v67
	v_fma_f32 v20, v108, v20, v57
	v_fma_f32 v26, v47, v26, v89
	v_fma_f32 v30, v40, v30, v93
	v_fma_f32 v40, v52, v2, v98
	v_fma_f32 v11, v81, v11, v66
	v_fma_f32 v50, v107, v19, v58
	v_fma_f32 v22, v110, v22, v55
	v_fma_f32 v47, v48, v27, v90
	v_fma_f32 v31, v41, v31, v94
	v_fma_f32 v41, v53, v3, v99
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v33, vcc_lo, s0, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v82, v12, v65
	v_fma_f32 v24, v1, v24, v87
	v_fma_f32 v28, v37, v28, v91
	v_fma_f32 v37, v39, v29, v92
	v_fma_f32 v39, v42, v35, v95
	v_fma_f32 v42, v43, v4, v100
	v_fma_f32 v13, v83, v13, v64
	v_fma_f32 v79, v109, v21, v56
	v_fma_f32 v43, v44, v5, v101
	v_fma_f32 v38, v38, v8, v96
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v14, v84, v14, v63
	v_fma_f32 v15, v85, v15, v62
	v_fma_f32 v16, v86, v16, v61
	v_fma_f32 v80, v111, v23, v54
	v_fma_f32 v44, v45, v6, v102
	v_fma_f32 v45, v49, v7, v103
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v68, v9, s2
	v_cndmask_b32_e64 v17, v60, v17, s2
	v_cndmask_b32_e64 v19, v59, v18, s2
	v_cndmask_b32_e64 v2, v88, v46, s2
	v_cndmask_b32_e64 v18, v97, v36, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v73, v72, 8, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v67, v10, s2
	v_cndmask_b32_e64 v23, v57, v20, s2
	v_cndmask_b32_e64 v4, v89, v26, s2
	v_cndmask_b32_e64 v20, v98, v40, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v74, v72, 16, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v66, v11, s2
	v_cndmask_b32_e64 v21, v58, v50, s2
	v_cndmask_b32_e64 v27, v55, v22, s2
	v_cndmask_b32_e64 v6, v90, v47, s2
	v_cndmask_b32_e64 v22, v99, v41, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v75, v72, 24, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v65, v12, s2
	v_cndmask_b32_e64 v35, v87, v24, s2
	v_cndmask_b32_e64 v8, v91, v28, s2
	v_cndmask_b32_e64 v24, v100, v42, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v76, v72, 32, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v64, v13, s2
	v_cndmask_b32_e64 v25, v56, v79, s2
	v_cndmask_b32_e64 v10, v92, v37, s2
	v_cndmask_b32_e64 v26, v101, v43, s2
	v_cndmask_b32_e64 v36, v96, v38, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v77, v72, 40, 0
	v_xad_u32 v78, v72, 48, 0
	v_xad_u32 v72, v72, 56, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v63, v14, s2
	v_cndmask_b32_e64 v13, v62, v15, s2
	v_cndmask_b32_e64 v15, v61, v16, s2
	v_cndmask_b32_e64 v29, v54, v80, s2
	v_cndmask_b32_e64 v12, v93, v30, s2
	v_cndmask_b32_e64 v14, v94, v31, s2
	v_cndmask_b32_e64 v16, v95, v39, s2
	v_cndmask_b32_e64 v28, v102, v44, s2
	v_cndmask_b32_e64 v30, v103, v45, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_2addr_stride64_b64 v71, v[1:2], v[17:18] offset1:2
	ds_store_2addr_stride64_b64 v73, v[3:4], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v74, v[5:6], v[21:22] offset1:2
	ds_store_2addr_stride64_b64 v75, v[7:8], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v76, v[9:10], v[25:26] offset1:2
	ds_store_2addr_stride64_b64 v77, v[11:12], v[27:28] offset1:2
	ds_store_2addr_stride64_b64 v78, v[13:14], v[29:30] offset1:2
	ds_store_2addr_stride64_b64 v72, v[15:16], v[35:36] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v36, v[33:34], off
	v_cmp_eq_u32_e32 vcc_lo, 0, v70
	v_and_b32_e32 v2, 0x700, v69
	v_lshlrev_b32_e32 v3, 2, v105
	v_cndmask_b32_e64 v1, 0x840, 0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v0, v1, v0
	v_or3_b32 v0, v2, v3, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v0
	v_xad_u32 v2, 0x1008, v0, 0
	v_xad_u32 v3, 0x2010, v0, 0
	ds_load_2addr_b64 v[28:31], v1 offset1:16
	ds_load_2addr_b64 v[24:27], v2 offset1:16
	ds_load_2addr_b64 v[20:23], v3 offset1:16
	v_xad_u32 v1, 0x3018, v0, 0
	v_xad_u32 v2, 0x4020, v0, 0
	v_xad_u32 v3, 0x5028, v0, 0
	v_xad_u32 v4, 0x6030, v0, 0
	v_xad_u32 v0, 0x7038, v0, 0
	ds_load_2addr_b64 v[16:19], v1 offset1:16
	ds_load_2addr_b64 v[12:15], v2 offset1:16
	ds_load_2addr_b64 v[8:11], v3 offset1:16
	ds_load_2addr_b64 v[4:7], v4 offset1:16
	ds_load_2addr_b64 v[0:3], v0 offset1:16
.LBB0_10:                               ; %atomicrmw.start182
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v35, v36, v28
	global_atomic_cmpswap_b32 v35, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v35, v36
	v_mov_b32_e32 v36, v35
	s_or_b32 s5, vcc_lo, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s5
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end181
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s35, 1, v32
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_12:                               ; %atomicrmw.start176
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v35, v36, v24
	global_atomic_cmpswap_b32 v28, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v28, v36
	v_mov_b32_e32 v36, v28
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end175
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s35, 2, v32
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_14:                               ; %atomicrmw.start170
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v35, v36, v20
	global_atomic_cmpswap_b32 v24, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v24, v36
	v_mov_b32_e32 v36, v24
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end169
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 6, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_16:                               ; %atomicrmw.start164
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v35, v36, v16
	global_atomic_cmpswap_b32 v20, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v20, v36
	v_mov_b32_e32 v36, v20
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end163
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s35, 3, v32
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_18:                               ; %atomicrmw.start158
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v35, v36, v12
	global_atomic_cmpswap_b32 v16, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v36
	v_mov_b32_e32 v36, v16
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end157
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 10, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_20:                               ; %atomicrmw.start152
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v35, v36, v8
	global_atomic_cmpswap_b32 v12, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v36
	v_mov_b32_e32 v36, v12
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end151
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 12, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_22:                               ; %atomicrmw.start146
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v35, v36, v4
	global_atomic_cmpswap_b32 v8, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v36
	v_mov_b32_e32 v36, v8
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end145
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 14, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_24:                               ; %atomicrmw.start140
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v35, v36, v0
	global_atomic_cmpswap_b32 v4, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v36
	v_mov_b32_e32 v36, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end139
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s35, 4, v32
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_26:                               ; %atomicrmw.start134
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v30
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end133
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 18, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_28:                               ; %atomicrmw.start128
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v26
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end127
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 20, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_30:                               ; %atomicrmw.start122
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v22
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end121
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 22, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_32:                               ; %atomicrmw.start116
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v18
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end115
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 24, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_34:                               ; %atomicrmw.start110
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v14
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end109
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 26, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_36:                               ; %atomicrmw.start104
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v10
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_36
; %bb.37:                               ; %atomicrmw.end103
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 28, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_38:                               ; %atomicrmw.start98
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v6
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_38
; %bb.39:                               ; %atomicrmw.end97
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 30, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_40:                               ; %atomicrmw.start92
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v2
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_40
; %bb.41:                               ; %atomicrmw.end91
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v33, s33, v32
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_42:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v29
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_42
; %bb.43:                               ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[28:29], null, s35, 34, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v28, vcc_lo, s0, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s1, v29, vcc_lo
	global_load_b32 v34, v[28:29], off
.LBB0_44:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v33, v34, v25
	global_atomic_cmpswap_b32 v0, v[28:29], v[33:34], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v34
	v_mov_b32_e32 v34, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_44
; %bb.45:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[24:25], null, s35, 36, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v24, vcc_lo, s0, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s1, v25, vcc_lo
	global_load_b32 v29, v[24:25], off
.LBB0_46:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v21
	global_atomic_cmpswap_b32 v0, v[24:25], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_46
; %bb.47:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[20:21], null, s35, 38, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v20, vcc_lo, s0, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s1, v21, vcc_lo
	global_load_b32 v25, v[20:21], off
.LBB0_48:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v24, v25, v17
	global_atomic_cmpswap_b32 v0, v[20:21], v[24:25], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v25
	v_mov_b32_e32 v25, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_48
; %bb.49:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[16:17], null, s35, 40, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s0, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s1, v17, vcc_lo
	global_load_b32 v21, v[16:17], off
.LBB0_50:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v13
	global_atomic_cmpswap_b32 v0, v[16:17], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_50
; %bb.51:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[12:13], null, s35, 42, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s0, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s1, v13, vcc_lo
	global_load_b32 v17, v[12:13], off
.LBB0_52:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v9
	global_atomic_cmpswap_b32 v0, v[12:13], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_52
; %bb.53:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[8:9], null, s35, 44, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s0, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s1, v9, vcc_lo
	global_load_b32 v13, v[8:9], off
.LBB0_54:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v5
	global_atomic_cmpswap_b32 v0, v[8:9], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_54
; %bb.55:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[4:5], null, s35, 46, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v4, vcc_lo, s0, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s1, v5, vcc_lo
	global_load_b32 v9, v[4:5], off
.LBB0_56:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v1
	global_atomic_cmpswap_b32 v0, v[4:5], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_56
; %bb.57:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 48, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_58:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v31
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_58
; %bb.59:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 50, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_60:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v27
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_60
; %bb.61:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 52, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_62:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v23
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_62
; %bb.63:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 54, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_64:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v19
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_64
; %bb.65:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 56, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_66:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v15
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_66
; %bb.67:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 58, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_68:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_68
; %bb.69:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 60, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_70:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_70
; %bb.71:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 62, v[32:33]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s0, v0
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	s_mov_b32 s0, 0
	global_load_b32 v5, v[0:1], off
.LBB0_72:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v3
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_72
; %bb.73:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
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
		.amdhsa_next_free_sgpr 47
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_vgpr, 240
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 24128
; TotalNumSgprs: 49
; NumVgprs: 240
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 49
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     240
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
