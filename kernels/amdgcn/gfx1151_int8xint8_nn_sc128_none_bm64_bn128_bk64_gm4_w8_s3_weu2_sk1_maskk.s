	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[30:31], s[0:1], 0x30
	s_load_b32 s14, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_load_b256 s[20:27], s[0:1], 0x0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v86, 4, v0
	v_lshrrev_b32_e32 v87, 3, v0
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v64, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v88, 15, v0
	v_and_b32_e32 v2, 48, v86
	v_or_b32_e32 v6, 32, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v89, 48, v64
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v63, v87, 16, v88
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v65, 32, v63
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s31, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s30, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v7, s14, v3
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b64 s[16:17], s[22:23]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s10, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s8, s10
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s9, s6, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s7, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s7
	s_sub_i32 s8, 0, s7
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s6, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v86
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[4:5], null, s31, v87, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s8, s8, s6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v5, s31, 5, v4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s6, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s4
	s_mul_hi_u32 s4, s5, s6
	s_xor_b32 s6, s2, s9
	s_mul_i32 s8, s4, s7
	s_ashr_i32 s6, s6, 31
	s_sub_i32 s5, s5, s8
	s_add_i32 s8, s4, 1
	s_sub_i32 s11, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s8, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s8, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s8, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s45, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s7, s4, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s3, s14, 0x7f
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s11, s7, s6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s4, s3, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s12, s11, s9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v8, s45, v2
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s12
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v9, s45, v87
	v_or_b32_e32 v10, s45, v6
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s4, s4, 25
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s10
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s8, s14, 63
.Ltmp19:
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s30, s11, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s9, s3, s4
.Ltmp21:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s5, s31, s45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s8, 63
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s14, v8
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s14, v9
	v_cmp_gt_i32_e64 s4, s14, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s5, s30, s5
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s10, s33, s14
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v8, s5, v4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add3_u32 v7, v7, v2, s10
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s4, s4, s2
	s_and_b32 vcc_lo, vcc_lo, s2
	s_and_b32 s3, s3, s2
	s_cmpk_gt_i32 s8, 0x7f
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s36, s45, 64
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v10, s45, v7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v11, s36, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v9, s5, v5
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v12, s36, v87
	v_or_b32_e32 v6, s36, v6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s15, s31, 6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s14, v11
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v7, s36, v7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s5, s5, s15
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s14, v12
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v4, s5, v4
	v_add_nc_u32_e32 v5, s5, v5
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s14, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[21:24], v8, s[16:19], 0 offen
	buffer_load_b128 v[25:28], v9, s[16:19], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s3
	s_mov_b32 s4, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s5, s3
	s_mov_b64 s[12:13], s[26:27]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	v_add_nc_u32_e32 v45, 0, v86
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[33:36], v6, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[37:40], v4, s[16:19], 0 offen
	buffer_load_b128 v[41:44], v5, s[16:19], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v5, 1, v0
	buffer_load_b128 v[29:32], v10, s[20:23], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s8, 0xbf
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v6, 48, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v5, v4, 1, v89
	v_lshlrev_b32_e32 v4, 3, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v90, v86, v6
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v9, 2, v5
	v_or_b32_e32 v10, 4, v5
	v_or_b32_e32 v11, 6, v5
	v_or_b32_e32 v12, 8, v5
	v_or_b32_e32 v13, 10, v5
	v_or_b32_e32 v14, 12, v5
	v_or_b32_e32 v15, 14, v5
	v_or_b32_e32 v16, 64, v5
	v_or_b32_e32 v17, 0x42, v5
	v_or_b32_e32 v18, 0x44, v5
	v_or_b32_e32 v19, 0x46, v5
	v_or_b32_e32 v20, 0x48, v5
	v_or_b32_e32 v6, 0x4a, v5
	v_or_b32_e32 v7, 0x4c, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v46, 0, v90
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v8, 0x4e, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v45, v[25:28] offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v46, v[29:32] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v45, v[21:24]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v46, v[33:36] offset:20480
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v45, v[37:40] offset:8192
	ds_store_b128 v45, v[41:44] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v21, 0x430, v4
	s_mov_b32 s5, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v82, v88, 6, v21
	v_xor_b32_e32 v84, 16, v82
	v_xor_b32_e32 v85, 32, v82
	v_xor_b32_e32 v83, 48, v82
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr82
                                        ; implicit-def: $vgpr84
                                        ; implicit-def: $vgpr85
                                        ; implicit-def: $vgpr83
.LBB0_3:                                ; %Flow167
	s_load_b64 s[28:29], s[0:1], 0x20
	v_or_b32_e32 v21, s33, v63
	v_or_b32_e32 v22, s33, v65
	s_ashr_i32 s34, s9, 7
	v_or_b32_e32 v79, s30, v5
	v_or_b32_e32 v78, s30, v9
	v_mul_lo_u32 v80, v21, s34
	v_mul_lo_u32 v81, v22, s34
	v_or_b32_e32 v77, s30, v10
	v_or_b32_e32 v76, s30, v11
	v_or_b32_e32 v75, s30, v12
	v_or_b32_e32 v74, s30, v13
	v_or_b32_e32 v73, s30, v14
	v_or_b32_e32 v72, s30, v15
	v_or_b32_e32 v71, s30, v16
	v_or_b32_e32 v70, s30, v17
	v_or_b32_e32 v69, s30, v18
	v_or_b32_e32 v68, s30, v19
	v_or_b32_e32 v66, s30, v20
	v_or_b32_e32 v67, s30, v6
	v_or_b32_e32 v37, s30, v7
	v_or_b32_e32 v38, s30, v8
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v39, 0 :: v_dual_and_b32 v4, 0x430, v4
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s8, 6
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s1, s7, 7
	s_mov_b32 s5, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_add_nc_u32_e32 v5, s45, v87
	v_lshl_or_b32 v82, v88, 6, v4
	v_or_b32_e32 v94, 0x80, v2
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v30, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v4, 0xa0, v5
	v_add_nc_u32_e32 v5, 0x80, v5
	v_xor_b32_e32 v84, 16, v82
	v_xor_b32_e32 v85, 32, v82
	v_xor_b32_e32 v83, 48, v82
	v_mul_lo_u32 v4, s31, v4
	v_mul_lo_u32 v5, s31, v5
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v52, 0
	v_add3_u32 v4, v4, s1, v1
	v_add3_u32 v1, v5, s1, v1
	s_lshl_b32 s1, s6, 7
	s_mov_b32 s6, s4
	v_add_nc_u32_e32 v3, s33, v3
	v_subrev_nc_u32_e32 v91, s1, v4
	v_subrev_nc_u32_e32 v92, s1, v1
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v51, 0
	v_mov_b32_e32 v50, 0
	v_mul_lo_u32 v3, s14, v3
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_add3_u32 v93, v3, v2, 0x80
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s25, 0xffff
	s_mov_b32 s36, s24
	s_and_b32 s41, s13, 0xffff
	s_mov_b32 s40, s12
	s_add_i32 s26, s0, -2
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s35, 0, 0x5000
	s_add_i32 s44, 0, 0x2000
	s_mov_b32 s27, 1
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s5, s45
	s_mov_b32 s1, s4
	.loc	1 342 17 is_stmt 1              ; generate_amdgcn.py:342:17
	v_add_nc_u32_e32 v9, s5, v94
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v10, s5, v93
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v127, s1, v88, v89
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v119, s0, v82
	v_add_nc_u32_e32 v123, s0, v84
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s14, v9
	s_mov_b32 s4, s44
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	buffer_load_b128 v[25:28], v9, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v9, v127 offset:1664
	ds_load_u8 v10, v127 offset:1536
	ds_load_u8 v11, v127 offset:1920
	ds_load_u8 v12, v127 offset:1792
	ds_load_u8 v13, v127 offset:1152
	ds_load_u8 v14, v127 offset:1024
	ds_load_u8 v15, v127 offset:1408
	ds_load_u8 v16, v127 offset:1280
	ds_load_u8 v17, v127 offset:640
	ds_load_u8 v18, v127 offset:512
	ds_load_u8 v19, v127 offset:896
	ds_load_u8 v20, v127 offset:768
	ds_load_u8 v21, v127 offset:128
	ds_load_u8 v22, v127
	ds_load_u8 v23, v127 offset:384
	ds_load_u8 v24, v127 offset:256
	ds_load_u8 v95, v127 offset:3712
	ds_load_u8 v96, v127 offset:3584
	ds_load_u8 v97, v127 offset:3968
	ds_load_u8 v98, v127 offset:3840
	ds_load_u8 v99, v127 offset:3200
	ds_load_u8 v100, v127 offset:3072
	ds_load_u8 v101, v127 offset:3456
	ds_load_u8 v102, v127 offset:3328
	ds_load_u8 v103, v127 offset:2688
	ds_load_u8 v104, v127 offset:2560
	ds_load_u8 v105, v127 offset:2944
	ds_load_u8 v106, v127 offset:2816
	ds_load_u8 v107, v127 offset:2176
	ds_load_u8 v108, v127 offset:2048
	ds_load_u8 v109, v127 offset:2432
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v10, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v11, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v13, v16, v15, 0xc0c0004
	ds_load_u8 v111, v127 offset:1728
	ds_load_u8 v110, v127 offset:2304
	ds_load_u8 v16, v127 offset:1216
	v_lshl_or_b32 v12, v10, 16, v9
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v10, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v15, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v18, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v20, v24, v23, 0xc0c0004
	ds_load_u8 v21, v127 offset:704
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v22, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v24, v98, v97, 0xc0c0004
	ds_load_u8 v95, v127 offset:960
	ds_load_u8 v97, v127 offset:832
	ds_load_u8 v23, v127 offset:576
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v96, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v98, v102, v101, 0xc0c0004
	ds_load_u8 v99, v127 offset:192
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v100, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v102, v106, v105, 0xc0c0004
	ds_load_u8 v103, v127 offset:448
	ds_load_u8 v105, v127 offset:320
	ds_load_u8 v101, v127 offset:64
	v_lshl_or_b32 v11, v13, 16, v11
	ds_load_u8 v9, v127 offset:1600
	ds_load_u8 v13, v127 offset:1984
	v_lshl_or_b32 v10, v15, 16, v10
	ds_load_u8 v15, v127 offset:1088
	ds_load_u8 v17, v127 offset:1472
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v104, v108, v107, 0xc0c0004
	ds_load_u8 v107, v127 offset:3776
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v21, v23, v21, 0xc0c0004
	v_perm_b32 v23, v97, v95, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v97, v105, v103, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v95, v101, v99, 0xc0c0004
	ds_load_u8 v99, v127 offset:2752
	ds_load_u8 v103, v127 offset:2496
	ds_load_u8 v14, v127 offset:1856
	ds_load_u8 v19, v127 offset:1344
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v108, v9, v111, 0xc0c0004
	ds_load_u8 v9, v127 offset:3648
	v_perm_b32 v106, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v110, v15, v16, 0xc0c0004
	ds_load_u8 v15, v127 offset:3264
	ds_load_u8 v16, v127 offset:3136
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v109, v14, v13, 0xc0c0004
	ds_load_u8 v13, v127 offset:4032
	ds_load_u8 v14, v127 offset:3904
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v111, v19, v17, 0xc0c0004
	ds_load_u8 v17, v127 offset:3520
	ds_load_u8 v19, v127 offset:3392
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v101, v9, v107, 0xc0c0004
	ds_load_u8 v9, v127 offset:2624
	v_lshl_or_b32 v105, v111, 16, v110
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v107, v14, v13, 0xc0c0004
	ds_load_u8 v13, v127 offset:3008
	ds_load_u8 v14, v127 offset:2880
	ds_load_u8 v116, v127 offset:2368
	v_perm_b32 v112, v16, v15, 0xc0c0004
	ds_load_u8 v15, v127 offset:2240
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v99, v9, v99, 0xc0c0004
	ds_load_u8 v9, v127 offset:2112
	v_perm_b32 v113, v19, v17, 0xc0c0004
	v_lshl_or_b32 v16, v24, 16, v22
	v_lshl_or_b32 v110, v107, 16, v101
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v114, v14, v13, 0xc0c0004
	v_lshl_or_b32 v13, v106, 16, v104
	v_lshl_or_b32 v104, v23, 16, v21
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[21:24], v123
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v106, v109, 16, v108
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v115, v9, v15, 0xc0c0004
	v_lshl_or_b32 v9, v20, 16, v18
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[17:20], v119
	ds_load_b128 v[119:122], v119 offset:2048
	ds_load_b128 v[123:126], v123 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v15, v98, 16, v96
	v_perm_b32 v96, v116, v103, 0xc0c0004
	v_lshl_or_b32 v103, v97, 16, v95
	v_lshl_or_b32 v14, v102, 16, v100
	v_lshl_or_b32 v109, v113, 16, v112
	v_lshl_or_b32 v108, v114, 16, v99
	v_lshl_or_b32 v107, v96, 16, v115
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[9:12], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[103:106], v[17:20], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[13:16], v[21:24], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[107:110], v[21:24], v[111:118] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[9:12], v[119:122], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[13:16], v[123:126], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[103:106], v[119:122], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v103, v127 offset:5760
	ds_load_u8 v104, v127 offset:5632
	v_wmma_i32_16x16x16_iu8 v[9:16], v[107:110], v[123:126], v[9:16] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v123, s0, v85
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v127 offset:6016
	ds_load_u8 v105, v127 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v127 offset:5248
	ds_load_u8 v106, v127 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v127 offset:5504
	ds_load_u8 v107, v127 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v107, v106, 0xc0c0004
	v_lshl_or_b32 v106, v104, 16, v103
	ds_load_u8 v103, v127 offset:4736
	ds_load_u8 v104, v127 offset:4608
	v_lshl_or_b32 v105, v107, 16, v105
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v127 offset:4992
	ds_load_u8 v107, v127 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v107, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v104, 16, v103
	ds_load_u8 v103, v127 offset:4224
	ds_load_u8 v107, v127 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v107, v103, 0xc0c0004
	ds_load_u8 v107, v127 offset:4480
	ds_load_u8 v108, v127 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v107, 16, v103
	ds_load_u8 v107, v127 offset:5824
	ds_load_u8 v108, v127 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v127 offset:6080
	ds_load_u8 v109, v127 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v127 offset:5312
	ds_load_u8 v110, v127 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v127 offset:5568
	ds_load_u8 v119, v127 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v119, v110, 0xc0c0004
	v_lshl_or_b32 v110, v108, 16, v107
	ds_load_u8 v107, v127 offset:4800
	ds_load_u8 v108, v127 offset:4672
	v_lshl_or_b32 v109, v119, 16, v109
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v127 offset:5056
	ds_load_u8 v119, v127 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v119, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v108, 16, v107
	ds_load_u8 v107, v127 offset:4288
	ds_load_u8 v119, v127 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v119, v107, 0xc0c0004
	ds_load_u8 v119, v127 offset:4544
	ds_load_u8 v120, v127 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v119, 16, v107
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[119:122], v123
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[103:106], v[119:122], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[107:110], v[119:122], v[111:118] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[119:122], v123 offset:2048
	v_add_nc_u32_e32 v123, s0, v83
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s45, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s0, s0, 25
	s_add_i32 s0, s45, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s1, s0, 7
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s1, s31
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s1, s34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[103:106], v[119:122], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v103, v127 offset:7808
	ds_load_u8 v104, v127 offset:7680
	v_wmma_i32_16x16x16_iu8 v[9:16], v[107:110], v[119:122], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v127 offset:8064
	ds_load_u8 v105, v127 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v127 offset:7296
	ds_load_u8 v106, v127 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v127 offset:7552
	ds_load_u8 v107, v127 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v107, v106, 0xc0c0004
	v_lshl_or_b32 v106, v104, 16, v103
	ds_load_u8 v103, v127 offset:6784
	ds_load_u8 v104, v127 offset:6656
	v_lshl_or_b32 v105, v107, 16, v105
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v127 offset:7040
	ds_load_u8 v107, v127 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v107, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v104, 16, v103
	ds_load_u8 v103, v127 offset:6272
	ds_load_u8 v107, v127 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v107, v103, 0xc0c0004
	ds_load_u8 v107, v127 offset:6528
	ds_load_u8 v108, v127 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v107, 16, v103
	ds_load_u8 v107, v127 offset:7872
	ds_load_u8 v108, v127 offset:7744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v127 offset:8128
	ds_load_u8 v109, v127 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v127 offset:7360
	ds_load_u8 v110, v127 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v127 offset:7616
	ds_load_u8 v119, v127 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v119, v110, 0xc0c0004
	v_lshl_or_b32 v110, v108, 16, v107
	ds_load_u8 v107, v127 offset:6848
	ds_load_u8 v108, v127 offset:6720
	v_lshl_or_b32 v109, v119, 16, v109
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v127 offset:7104
	ds_load_u8 v119, v127 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v119, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v108, 16, v107
	ds_load_u8 v107, v127 offset:6336
	ds_load_u8 v119, v127 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v119, v107, 0xc0c0004
	ds_load_u8 v119, v127 offset:6592
	ds_load_u8 v120, v127 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v119, 16, v107
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[119:122], v123
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[103:106], v[119:122], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[107:110], v[119:122], v[111:118] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[119:122], v123 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[107:110], v[119:122], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[103:106], v[119:122], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v104, v101
	v_cvt_f32_i32_e32 v101, v112
	v_cvt_f32_i32_e32 v103, v102
	v_cvt_f32_i32_e32 v112, v9
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v9, v80, s1, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v102, v111
	v_cvt_f32_i32_e32 v111, v10
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v10, v79, s0, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v110, v95
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v106, v99
	v_cvt_f32_i32_e32 v99, v114
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v9, v9, s[36:39], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v10, v10, s[40:43], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v114, v11
	v_cvt_f32_i32_e32 v109, v96
	v_cvt_f32_i32_e32 v105, v100
	v_cvt_f32_i32_e32 v100, v113
	v_cvt_f32_i32_e32 v113, v12
	v_cvt_f32_i32_e32 v108, v97
	v_cvt_f32_i32_e32 v97, v116
	v_cvt_f32_i32_e32 v116, v13
	v_cvt_f32_i32_e32 v107, v98
	v_cvt_f32_i32_e32 v98, v115
	v_cvt_f32_i32_e32 v115, v14
	v_cvt_f32_i32_e32 v95, v118
	v_cvt_f32_i32_e32 v96, v117
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v118, v15
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v117, v16
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v11, v10, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v39, v11, v110
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v11, v78, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	buffer_load_u16 v11, v11, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v11, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v62, v12, v109
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v12, v77, s0, 1
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v13, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v59, v12, v108
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v12, v76, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v12
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v14, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v61, v12, v107
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v12, v75, s0, 1
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v107, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v107, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v55, v12, v106
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v12, v74, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v106, 16, v12
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v106, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v57, v12, v105
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v12, v73, s0, 1
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v105, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v105, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v51, v12, v104
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v12, v72, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v104, 16, v12
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v104, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v53, v12, v103
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v12, v71, s0, 1
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v103, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v103, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v47, v12, v102
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v12, v70, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v102, 16, v12
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v102, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v49, v12, v101
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v12, v69, s0, 1
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v101, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v101, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v43, v12, v100
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v12, v68, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v100, 16, v12
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v100, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v45, v12, v99
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v12, v66, s0, 1
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v99, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v99, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v36, v12, v98
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v12, v67, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v98, 16, v12
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v98, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v35, v12, v97
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v12, v37, s0, 1
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v97, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v97, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v31, v12, v96
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v12, v38, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v96, 16, v12
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v9, v96, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v30, v9, v95
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_add_nc_u32_e32 v9, s5, v87
	v_add_nc_u32_e32 v12, 0x80, v9
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_add_nc_u32_e32 v9, 0xa0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s14, v12
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v12, v81, s1, 1
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s1, s14, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v9, 0x80000000, v12, vcc_lo
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v15, 0x80000000, v91, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s27, 1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v12, 0x80000000, v92, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s1, 2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v9, v9, s[36:39], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s27, s1, 0
	v_add_nc_u32_e32 v91, s15, v91
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s1, s27, 12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s26, s26, -1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s6, s1, 0
	s_mov_b32 s0, s35
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s44, s6, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s45, s45, 64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s35, s6, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s26, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v95, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v9, v95, v10
	v_mul_f32_e32 v13, v95, v13
	v_mul_f32_e32 v14, v95, v14
	v_mul_f32_e32 v102, v95, v102
	v_dual_mul_f32 v103, v95, v103 :: v_dual_fmac_f32 v60, v9, v17
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v17, s6, v90
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v9, v95, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v56, v13, v19
	v_fmac_f32_e32 v54, v14, v20
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[13:16], v15, s[16:19], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v19, v95, v107 :: v_dual_fmac_f32 v58, v9, v18
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[9:12], v12, s[16:19], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v100, v95, v100
	v_mul_f32_e32 v101, v95, v101
	v_mul_f32_e32 v98, v95, v98
	v_mul_f32_e32 v18, v95, v106
	v_mul_f32_e32 v99, v95, v99
	v_mul_f32_e32 v96, v95, v96
	v_mul_f32_e32 v20, v95, v104
	v_mul_f32_e32 v104, v95, v105
	v_dual_mul_f32 v95, v95, v97 :: v_dual_add_nc_u32 v92, s15, v92
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v41, v101, v114 :: v_dual_fmac_f32 v52, v19, v21
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v48, v104, v23
	v_fmac_f32_e32 v44, v103, v112
	v_fmac_f32_e32 v42, v102, v111
	v_fmac_f32_e32 v40, v100, v113
	v_dual_fmac_f32 v34, v99, v116 :: v_dual_fmac_f32 v33, v98, v115
	v_fmac_f32_e32 v50, v18, v22
	v_dual_fmac_f32 v32, v95, v118 :: v_dual_fmac_f32 v29, v96, v117
	v_dual_fmac_f32 v46, v20, v24 :: v_dual_add_nc_u32 v97, s44, v86
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v17, v[25:28] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v97, v[9:12]
	ds_store_b128 v97, v[13:16] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_add_i32 s36, s5, 0x80
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v39, 0
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s35, 0, 0x5000
	s_add_i32 s44, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v115, v89, v88
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v3, 0
	v_mov_b32_e32 v4, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v19, s4, v115
	s_mov_b32 s4, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v18, v19 offset:1664
	ds_load_u8 v20, v19 offset:1536
	ds_load_u8 v21, v19 offset:1920
	ds_load_u8 v22, v19 offset:1792
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v5, s0, v85
	v_add_nc_u32_e32 v14, s0, v84
	ds_load_b128 v[1:4], v5 offset:2048
	ds_load_b128 v[5:8], v5
	ds_load_b128 v[10:13], v14 offset:2048
	ds_load_b128 v[14:17], v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v25, v19 offset:1152
	ds_load_u8 v26, v19 offset:1024
	ds_load_u8 v27, v19 offset:1408
	ds_load_u8 v28, v19 offset:1280
	ds_load_u8 v86, v19 offset:640
	ds_load_u8 v87, v19 offset:512
	ds_load_u8 v88, v19 offset:896
	ds_load_u8 v89, v19 offset:768
	ds_load_u8 v90, v19 offset:1984
	ds_load_u8 v91, v19 offset:1856
	ds_load_u8 v112, v19 offset:1728
	ds_load_u8 v113, v19 offset:1600
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v24, s0, v82
	v_add_nc_u32_e32 v23, s0, v83
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v20, v22, v21, 0xc0c0004
	ds_load_u8 v21, v19 offset:128
	ds_load_u8 v22, v19
	ds_load_u8 v92, v19 offset:384
	ds_load_u8 v93, v19 offset:256
	ds_load_u8 v114, v19 offset:1472
	ds_load_u8 v116, v19 offset:1344
	ds_load_u8 v117, v19 offset:1216
	ds_load_u8 v118, v19 offset:1088
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v26, v28, v27, 0xc0c0004
	v_lshl_or_b32 v127, v20, 16, v18
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v94, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v95, v89, v88, 0xc0c0004
	v_lshl_or_b32 v126, v26, 16, v25
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v125, v95, 16, v94
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v18, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v21, v93, v92, 0xc0c0004
	v_dual_mov_b32 v99, s11 :: v_dual_mov_b32 v98, s10
	ds_load_u8 v22, v19 offset:3712
	ds_load_u8 v100, v19 offset:3584
	ds_load_u8 v101, v19 offset:3968
	ds_load_u8 v102, v19 offset:3840
	ds_load_u8 v133, v19 offset:5760
	ds_load_u8 v134, v19 offset:5632
	ds_load_u8 v135, v19 offset:6016
	ds_load_u8 v136, v19 offset:5888
	v_lshl_or_b32 v124, v21, 16, v18
	ds_load_u8 v18, v19 offset:3200
	ds_load_u8 v21, v19 offset:3072
	ds_load_u8 v103, v19 offset:3456
	ds_load_u8 v104, v19 offset:3328
	ds_load_u8 v105, v19 offset:2688
	ds_load_u8 v106, v19 offset:2560
	ds_load_u8 v107, v19 offset:2944
	ds_load_u8 v121, v19 offset:2816
	ds_load_u8 v122, v19 offset:2176
	ds_load_u8 v123, v19 offset:2048
	ds_load_u8 v128, v19 offset:2432
	ds_load_u8 v129, v19 offset:2304
	ds_load_u8 v148, v19 offset:4032
	ds_load_u8 v149, v19 offset:3904
	ds_load_u8 v150, v19 offset:3776
	ds_load_u8 v151, v19 offset:3648
	ds_load_u8 v27, v19 offset:960
	ds_load_u8 v28, v19 offset:832
	ds_load_u8 v119, v19 offset:704
	ds_load_u8 v120, v19 offset:576
	v_mov_b32_e32 v97, s9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[86:89], v24 offset:2048
	ds_load_b128 v[108:111], v24
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v20, v19 offset:448
	ds_load_u8 v24, v19 offset:320
	ds_load_u8 v25, v19 offset:192
	ds_load_u8 v26, v19 offset:64
	v_mov_b32_e32 v94, s6
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v18, v21, v18, 0xc0c0004
	ds_load_u8 v152, v19 offset:3520
	ds_load_u8 v153, v19 offset:3392
	ds_load_u8 v154, v19 offset:3264
	ds_load_u8 v155, v19 offset:3136
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v21, v104, v103, 0xc0c0004
	ds_load_u8 v156, v19 offset:3008
	ds_load_u8 v157, v19 offset:2880
	ds_load_u8 v158, v19 offset:2752
	ds_load_u8 v159, v19 offset:2624
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v132, v106, v105, 0xc0c0004
	ds_load_u8 v160, v19 offset:2496
	ds_load_u8 v161, v19 offset:2368
	ds_load_u8 v162, v19 offset:2240
	ds_load_u8 v163, v19 offset:2112
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v121, v121, v107, 0xc0c0004
	v_perm_b32 v91, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	v_perm_b32 v22, v100, v22, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v123, v129, v128, 0xc0c0004
	v_perm_b32 v130, v102, v101, 0xc0c0004
	v_lshl_or_b32 v129, v121, 16, v132
	v_perm_b32 v133, v134, v133, 0xc0c0004
	v_perm_b32 v134, v136, v135, 0xc0c0004
	v_lshl_or_b32 v128, v123, 16, v122
	v_lshl_or_b32 v131, v130, 16, v22
	v_lshl_or_b32 v130, v21, 16, v18
	ds_load_u8 v18, v19 offset:5248
	ds_load_u8 v21, v19 offset:5120
	ds_load_u8 v22, v19 offset:5504
	ds_load_u8 v121, v19 offset:5376
	ds_load_u8 v122, v19 offset:4736
	ds_load_u8 v123, v19 offset:4608
	ds_load_u8 v132, v19 offset:4992
	ds_load_u8 v137, v19 offset:4864
	ds_load_u8 v164, v19 offset:6080
	ds_load_u8 v165, v19 offset:5952
	ds_load_u8 v166, v19 offset:5824
	ds_load_u8 v167, v19 offset:5696
	ds_load_u8 v135, v19 offset:4224
	ds_load_u8 v136, v19 offset:4096
	ds_load_u8 v138, v19 offset:4480
	ds_load_u8 v139, v19 offset:4352
	ds_load_u8 v168, v19 offset:5568
	ds_load_u8 v169, v19 offset:5440
	ds_load_u8 v170, v19 offset:5312
	ds_load_u8 v171, v19 offset:5184
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	v_perm_b32 v20, v24, v20, 0xc0c0004
	v_dual_mov_b32 v96, s8 :: v_dual_mov_b32 v95, s7
	v_dual_mov_b32 v92, s4 :: v_dual_mov_b32 v93, s5
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v117, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v18, v21, v18, 0xc0c0004
	v_perm_b32 v118, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v21, v121, v22, 0xc0c0004
	ds_load_u8 v121, v19 offset:5056
	ds_load_u8 v172, v19 offset:4928
	ds_load_u8 v173, v19 offset:4800
	ds_load_u8 v174, v19 offset:4672
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v22, v123, v122, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[100:107], v[124:127], v[108:111], v[92:99] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v122, v137, v132, 0xc0c0004
	ds_load_u8 v123, v19 offset:7808
	ds_load_u8 v137, v19 offset:7680
	ds_load_u8 v140, v19 offset:8064
	ds_load_u8 v141, v19 offset:7936
	ds_load_u8 v175, v19 offset:4544
	ds_load_u8 v176, v19 offset:4416
	ds_load_u8 v177, v19 offset:4288
	ds_load_u8 v178, v19 offset:4160
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v132, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v136, v139, v138, 0xc0c0004
	v_lshl_or_b32 v135, v134, 16, v133
	v_lshl_or_b32 v134, v21, 16, v18
	v_lshl_or_b32 v133, v122, 16, v22
	ds_load_u8 v21, v19 offset:7296
	ds_load_u8 v22, v19 offset:7168
	ds_load_u8 v122, v19 offset:7552
	ds_load_u8 v144, v19 offset:7424
	ds_load_u8 v179, v19 offset:8128
	ds_load_u8 v180, v19 offset:8000
	ds_load_u8 v181, v19 offset:7872
	ds_load_u8 v182, v19 offset:7744
	v_lshl_or_b32 v132, v136, 16, v132
	v_wmma_i32_16x16x16_iu8 v[100:107], v[128:131], v[14:17], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[100:107], v[132:135], v[5:8], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v18, v137, v123, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v123, v141, v140, 0xc0c0004
	ds_load_u8 v145, v19 offset:6784
	ds_load_u8 v146, v19 offset:6656
	ds_load_u8 v147, v19 offset:7040
	ds_load_u8 v183, v19 offset:6912
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[136:139], v23 offset:2048
	ds_load_b128 v[140:143], v23
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v23, v19 offset:6272
	ds_load_u8 v184, v19 offset:6144
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v188, v22, v21, 0xc0c0004
	ds_load_u8 v21, v19 offset:6528
	ds_load_u8 v22, v19 offset:6400
	ds_load_u8 v189, v19 offset:7104
	ds_load_u8 v190, v19 offset:6976
	ds_load_u8 v191, v19 offset:6848
	ds_load_u8 v192, v19 offset:6720
	v_lshl_or_b32 v18, v123, 16, v18
	ds_load_u8 v123, v19 offset:7616
	ds_load_u8 v185, v19 offset:7488
	ds_load_u8 v186, v19 offset:7360
	ds_load_u8 v187, v19 offset:7232
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v122, v144, v122, 0xc0c0004
	ds_load_u8 v194, v19 offset:6592
	ds_load_u8 v195, v19 offset:6464
	ds_load_u8 v196, v19 offset:6336
	ds_load_u8 v19, v19 offset:6208
	v_lshl_or_b32 v144, v20, 16, v25
	v_perm_b32 v20, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v193, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v183, v183, v147, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v184, v184, v23, 0xc0c0004
	v_perm_b32 v23, v113, v112, 0xc0c0004
	v_perm_b32 v112, v116, v114, 0xc0c0004
	v_perm_b32 v113, v120, v119, 0xc0c0004
	v_perm_b32 v116, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v114, v22, v21, 0xc0c0004
	v_lshl_or_b32 v147, v90, 16, v23
	v_lshl_or_b32 v146, v112, 16, v91
	v_lshl_or_b32 v145, v27, 16, v113
	v_perm_b32 v90, v149, v148, 0xc0c0004
	v_perm_b32 v91, v155, v154, 0xc0c0004
	v_perm_b32 v112, v153, v152, 0xc0c0004
	v_perm_b32 v113, v159, v158, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[21:28], v[144:147], v[108:111], v[92:99] neg_lo:[1,1,0]
	v_lshl_or_b32 v111, v90, 16, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v110, v112, 16, v91
	v_lshl_or_b32 v109, v116, 16, v113
	v_lshl_or_b32 v108, v118, 16, v117
	v_perm_b32 v20, v167, v166, 0xc0c0004
	v_perm_b32 v90, v165, v164, 0xc0c0004
	v_perm_b32 v91, v171, v170, 0xc0c0004
	v_perm_b32 v112, v169, v168, 0xc0c0004
	v_perm_b32 v113, v174, v173, 0xc0c0004
	v_perm_b32 v116, v172, v121, 0xc0c0004
	v_perm_b32 v117, v178, v177, 0xc0c0004
	v_perm_b32 v118, v176, v175, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[21:28], v[108:111], v[14:17], v[21:28] neg_lo:[1,1,0]
	v_lshl_or_b32 v151, v90, 16, v20
	v_lshl_or_b32 v150, v112, 16, v91
	v_lshl_or_b32 v149, v116, 16, v113
	v_lshl_or_b32 v148, v118, 16, v117
	v_perm_b32 v14, v182, v181, 0xc0c0004
	v_perm_b32 v20, v180, v179, 0xc0c0004
	v_lshl_or_b32 v17, v122, 16, v188
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v196, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[21:28], v[148:151], v[5:8], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v6, v185, v123, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[116:123], v[124:127], v[86:89], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[144:147], v[86:89], v[92:99] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v20, 16, v14
	v_perm_b32 v5, v187, v186, 0xc0c0004
	v_perm_b32 v14, v192, v191, 0xc0c0004
	v_perm_b32 v20, v190, v189, 0xc0c0004
	v_perm_b32 v86, v195, v194, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[116:123], v[128:131], v[10:13], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[108:111], v[10:13], v[92:99] neg_lo:[1,1,0]
	v_lshl_or_b32 v16, v183, 16, v193
	v_lshl_or_b32 v15, v114, 16, v184
	v_lshl_or_b32 v7, v6, 16, v5
	v_lshl_or_b32 v6, v20, 16, v14
	v_lshl_or_b32 v5, v86, 16, v19
	v_wmma_i32_16x16x16_iu8 v[116:123], v[132:135], v[1:4], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[148:151], v[1:4], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[15:18], v[140:143], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[21:28], v[5:8], v[140:143], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[15:18], v[136:139], v[116:123] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[92:99], v[5:8], v[136:139], v[92:99] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v17, v101
	v_cvt_f32_i32_e32 v12, v102
	v_cvt_f32_i32_e32 v18, v103
	v_cvt_f32_i32_e32 v13, v104
	v_cvt_f32_i32_e32 v19, v105
	v_cvt_f32_i32_e32 v14, v106
	v_cvt_f32_i32_e32 v20, v107
	v_cvt_f32_i32_e32 v15, v21
	v_cvt_f32_i32_e32 v21, v22
	v_cvt_f32_i32_e32 v16, v23
	v_cvt_f32_i32_e32 v22, v24
	v_cvt_f32_i32_e32 v6, v25
	v_cvt_f32_i32_e32 v5, v26
	v_cvt_f32_i32_e32 v2, v27
	v_cvt_f32_i32_e32 v1, v28
	v_cvt_f32_i32_e32 v25, v116
	v_cvt_f32_i32_e32 v88, v117
	v_cvt_f32_i32_e32 v86, v118
	v_cvt_f32_i32_e32 v91, v119
	v_cvt_f32_i32_e32 v24, v120
	v_cvt_f32_i32_e32 v28, v121
	v_cvt_f32_i32_e32 v26, v122
	v_cvt_f32_i32_e32 v89, v123
	v_cvt_f32_i32_e32 v27, v92
	v_cvt_f32_i32_e32 v90, v93
	v_cvt_f32_i32_e32 v87, v94
	v_cvt_f32_i32_e32 v92, v95
	v_cvt_f32_i32_e32 v8, v96
	v_cvt_f32_i32_e32 v7, v97
	v_cvt_f32_i32_e32 v4, v98
	v_cvt_f32_i32_e32 v3, v99
	v_cvt_f32_i32_e32 v23, v100
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s45, 31
	s_mov_b32 s27, 0x31027000
	s_lshr_b32 s0, s0, 25
	s_mov_b32 s26, 0x7ffffffe
	s_add_i32 s0, s45, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s14, s26
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s15, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s34
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v10, v80, s0, 1
	v_add_lshl_u32 v11, v81, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v93, v79, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v94, v78, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s25, s25, 0xffff
	s_clause 0x1
	buffer_load_u16 v113, v10, s[24:27], 0 offen
	buffer_load_u16 v114, v11, s[24:27], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v10, v77, s0, 1
	v_cndmask_b32_e32 v11, 0x80000000, v93, vcc_lo
	v_add_lshl_u32 v96, v74, s0, 1
	v_cndmask_b32_e32 v93, 0x80000000, v94, vcc_lo
	v_add_lshl_u32 v94, v76, s0, 1
	v_add_lshl_u32 v95, v75, s0, 1
	v_add_lshl_u32 v97, v73, s0, 1
	v_add_lshl_u32 v98, v72, s0, 1
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_add_lshl_u32 v101, v71, s0, 1
	s_and_b32 s13, s13, 0xffff
	v_dual_cndmask_b32 v94, 0x80000000, v94 :: v_dual_cndmask_b32 v95, 0x80000000, v95
	v_add_lshl_u32 v102, v70, s0, 1
	v_add_lshl_u32 v103, v69, s0, 1
	v_dual_cndmask_b32 v96, 0x80000000, v96 :: v_dual_cndmask_b32 v97, 0x80000000, v97
	v_cndmask_b32_e32 v98, 0x80000000, v98, vcc_lo
	s_clause 0x7
	buffer_load_u16 v116, v11, s[12:15], 0 offen
	buffer_load_u16 v117, v93, s[12:15], 0 offen
	buffer_load_u16 v110, v10, s[12:15], 0 offen
	buffer_load_u16 v112, v94, s[12:15], 0 offen
	buffer_load_u16 v105, v95, s[12:15], 0 offen
	buffer_load_u16 v106, v96, s[12:15], 0 offen
	buffer_load_u16 v99, v97, s[12:15], 0 offen
	buffer_load_u16 v100, v98, s[12:15], 0 offen
	v_add_lshl_u32 v94, v68, s0, 1
	v_add_lshl_u32 v95, v66, s0, 1
	v_dual_cndmask_b32 v10, 0x80000000, v101 :: v_dual_cndmask_b32 v11, 0x80000000, v102
	v_add_lshl_u32 v96, v67, s0, 1
	v_add_lshl_u32 v97, v37, s0, 1
	v_add_lshl_u32 v98, v38, s0, 1
	v_dual_cndmask_b32 v93, 0x80000000, v103 :: v_dual_cndmask_b32 v94, 0x80000000, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v101, 0x80000000, v95 :: v_dual_cndmask_b32 v102, 0x80000000, v96
	v_dual_cndmask_b32 v103, 0x80000000, v97 :: v_dual_cndmask_b32 v104, 0x80000000, v98
	s_clause 0x7
	buffer_load_u16 v97, v10, s[12:15], 0 offen
	buffer_load_u16 v98, v11, s[12:15], 0 offen
	buffer_load_u16 v95, v93, s[12:15], 0 offen
	buffer_load_u16 v96, v94, s[12:15], 0 offen
	buffer_load_u16 v93, v101, s[12:15], 0 offen
	buffer_load_u16 v94, v102, s[12:15], 0 offen
	buffer_load_u16 v11, v103, s[12:15], 0 offen
	buffer_load_u16 v10, v104, s[12:15], 0 offen
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v104, 0
	v_mov_b32_e32 v103, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v9, s44, v115
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v147, s11 :: v_dual_add_nc_u32 v130, s35, v83
	v_mov_b32_e32 v146, s10
	ds_load_u8 v108, v9 offset:1664
	ds_load_u8 v109, v9 offset:1536
	ds_load_u8 v111, v9 offset:1920
	ds_load_u8 v115, v9 offset:1792
	v_dual_mov_b32 v144, s8 :: v_dual_add_nc_u32 v101, s35, v85
	v_dual_mov_b32 v142, s6 :: v_dual_add_nc_u32 v107, s35, v84
	v_dual_mov_b32 v145, s9 :: v_dual_add_nc_u32 v122, s35, v82
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[82:85], v101 offset:2048
	ds_load_b128 v[101:104], v101
	ds_load_b128 v[118:121], v107 offset:2048
	ds_load_b128 v[148:151], v107
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v107, v9 offset:1152
	ds_load_u8 v123, v9 offset:1024
	ds_load_u8 v124, v9 offset:1408
	ds_load_u8 v125, v9 offset:1280
	ds_load_u8 v126, v9 offset:640
	ds_load_u8 v127, v9 offset:512
	ds_load_u8 v128, v9 offset:896
	ds_load_u8 v129, v9 offset:768
	ds_load_u8 v131, v9 offset:1984
	ds_load_u8 v132, v9 offset:1856
	ds_load_u8 v133, v9 offset:1728
	ds_load_u8 v134, v9 offset:1600
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[156:159], v122 offset:2048
	ds_load_b128 v[152:155], v122
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v172, v9 offset:5760
	ds_load_u8 v173, v9 offset:5632
	ds_load_u8 v174, v9 offset:6016
	ds_load_u8 v175, v9 offset:5888
	ds_load_u8 v181, v9 offset:960
	ds_load_u8 v182, v9 offset:832
	ds_load_u8 v184, v9 offset:704
	ds_load_u8 v185, v9 offset:576
	ds_load_u8 v192, v9 offset:3520
	ds_load_u8 v193, v9 offset:3392
	ds_load_u8 v194, v9 offset:3264
	ds_load_u8 v195, v9 offset:3136
	ds_load_u8 v196, v9 offset:3008
	ds_load_u8 v197, v9 offset:2880
	ds_load_u8 v198, v9 offset:2752
	ds_load_u8 v199, v9 offset:2624
	ds_load_u8 v211, v9 offset:5056
	ds_load_u8 v212, v9 offset:4928
	ds_load_u8 v213, v9 offset:4800
	ds_load_u8 v214, v9 offset:4672
	v_dual_mov_b32 v143, s7 :: v_dual_mov_b32 v140, s4
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v107, v123, v107, 0xc0c0004
	v_perm_b32 v109, v115, v111, 0xc0c0004
	ds_load_u8 v111, v9 offset:128
	ds_load_u8 v115, v9
	ds_load_u8 v135, v9 offset:384
	ds_load_u8 v136, v9 offset:256
	ds_load_u8 v137, v9 offset:1472
	ds_load_u8 v138, v9 offset:1344
	ds_load_u8 v139, v9 offset:1216
	ds_load_u8 v180, v9 offset:1088
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v123, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v124, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v125, v129, v128, 0xc0c0004
	v_lshl_or_b32 v163, v109, 16, v108
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	v_lshl_or_b32 v162, v123, 16, v107
	ds_load_u8 v107, v9 offset:448
	ds_load_u8 v108, v9 offset:320
	ds_load_u8 v109, v9 offset:192
	ds_load_u8 v186, v9 offset:64
	v_lshl_or_b32 v161, v125, 16, v124
	ds_load_u8 v122, v9 offset:3712
	ds_load_u8 v123, v9 offset:3584
	ds_load_u8 v124, v9 offset:3968
	ds_load_u8 v125, v9 offset:3840
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v173, v175, v174, 0xc0c0004
	ds_load_u8 v174, v9 offset:4224
	ds_load_u8 v175, v9 offset:4096
	ds_load_u8 v177, v9 offset:4480
	ds_load_u8 v178, v9 offset:4352
	ds_load_u8 v207, v9 offset:5568
	ds_load_u8 v208, v9 offset:5440
	ds_load_u8 v209, v9 offset:5312
	ds_load_u8 v210, v9 offset:5184
	v_mov_b32_e32 v141, s5
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v111, v115, v111, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v115, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v132, v180, v139, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v160, v115, 16, v111
	ds_load_u8 v111, v9 offset:3200
	ds_load_u8 v115, v9 offset:3072
	ds_load_u8 v126, v9 offset:3456
	ds_load_u8 v127, v9 offset:3328
	ds_load_u8 v128, v9 offset:2688
	ds_load_u8 v129, v9 offset:2560
	ds_load_u8 v135, v9 offset:2944
	ds_load_u8 v136, v9 offset:2816
	ds_load_u8 v164, v9 offset:2176
	ds_load_u8 v165, v9 offset:2048
	ds_load_u8 v166, v9 offset:2432
	ds_load_u8 v167, v9 offset:2304
	ds_load_u8 v188, v9 offset:4032
	ds_load_u8 v189, v9 offset:3904
	ds_load_u8 v190, v9 offset:3776
	ds_load_u8 v191, v9 offset:3648
	v_perm_b32 v139, v193, v192, 0xc0c0004
	v_perm_b32 v180, v199, v198, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	v_perm_b32 v168, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v111, v115, v111, 0xc0c0004
	v_perm_b32 v169, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v115, v127, v126, 0xc0c0004
	v_perm_b32 v175, v178, v177, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v170, v129, v128, 0xc0c0004
	v_perm_b32 v109, v186, v109, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v9 offset:2496
	ds_load_u8 v200, v9 offset:2368
	ds_load_u8 v201, v9 offset:2240
	ds_load_u8 v202, v9 offset:2112
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[122:129], v[160:163], v[152:155], v[140:147] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v171, v167, v166, 0xc0c0004
	v_lshl_or_b32 v167, v169, 16, v168
	v_lshl_or_b32 v166, v115, 16, v111
	v_lshl_or_b32 v165, v135, 16, v170
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v164, v171, 16, v164
	ds_load_u8 v111, v9 offset:5248
	ds_load_u8 v115, v9 offset:5120
	ds_load_u8 v135, v9 offset:5504
	ds_load_u8 v168, v9 offset:5376
	ds_load_u8 v169, v9 offset:4736
	ds_load_u8 v170, v9 offset:4608
	ds_load_u8 v171, v9 offset:4992
	ds_load_u8 v176, v9 offset:4864
	ds_load_u8 v203, v9 offset:6080
	ds_load_u8 v204, v9 offset:5952
	ds_load_u8 v205, v9 offset:5824
	ds_load_u8 v206, v9 offset:5696
	v_wmma_i32_16x16x16_iu8 v[122:129], v[164:167], v[148:151], v[122:129] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v111, v115, v111, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v115, v168, v135, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v135, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v168, v176, v171, 0xc0c0004
	ds_load_u8 v176, v9 offset:7808
	ds_load_u8 v179, v9 offset:7680
	ds_load_u8 v183, v9 offset:8064
	ds_load_u8 v187, v9 offset:7936
	ds_load_u8 v215, v9 offset:4544
	ds_load_u8 v216, v9 offset:4416
	ds_load_u8 v217, v9 offset:4288
	ds_load_u8 v218, v9 offset:4160
	v_lshl_or_b32 v170, v115, 16, v111
	v_lshl_or_b32 v171, v173, 16, v172
	v_lshl_or_b32 v169, v168, 16, v135
	ds_load_u8 v111, v9 offset:7296
	ds_load_u8 v115, v9 offset:7168
	ds_load_u8 v135, v9 offset:7552
	ds_load_u8 v219, v9 offset:7424
	ds_load_u8 v220, v9 offset:8128
	ds_load_u8 v221, v9 offset:8000
	ds_load_u8 v222, v9 offset:7872
	ds_load_u8 v223, v9 offset:7744
	v_lshl_or_b32 v168, v175, 16, v174
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[168:171], v[101:104], v[122:129] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v224, v179, v176, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v183, v187, v183, 0xc0c0004
	ds_load_u8 v187, v9 offset:6784
	ds_load_u8 v225, v9 offset:6656
	ds_load_u8 v226, v9 offset:7040
	ds_load_u8 v227, v9 offset:6912
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[172:175], v130 offset:2048
	ds_load_b128 v[176:179], v130
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v130, v9 offset:6272
	ds_load_u8 v228, v9 offset:6144
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v111, v115, v111, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v115, v219, v135, 0xc0c0004
	ds_load_u8 v135, v9 offset:6528
	ds_load_u8 v219, v9 offset:6400
	ds_load_u8 v232, v9 offset:7104
	ds_load_u8 v233, v9 offset:6976
	ds_load_u8 v234, v9 offset:6848
	ds_load_u8 v235, v9 offset:6720
	v_lshl_or_b32 v183, v183, 16, v224
	ds_load_u8 v224, v9 offset:7616
	ds_load_u8 v229, v9 offset:7488
	ds_load_u8 v230, v9 offset:7360
	ds_load_u8 v231, v9 offset:7232
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v225, v225, v187, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v226, v227, v226, 0xc0c0004
	ds_load_u8 v227, v9 offset:6592
	ds_load_u8 v236, v9 offset:6464
	ds_load_u8 v237, v9 offset:6336
	ds_load_u8 v9, v9 offset:6208
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v228, v228, v130, 0xc0c0004
	v_perm_b32 v130, v134, v133, 0xc0c0004
	v_perm_b32 v133, v138, v137, 0xc0c0004
	v_perm_b32 v134, v185, v184, 0xc0c0004
	v_perm_b32 v137, v182, v181, 0xc0c0004
	v_lshl_or_b32 v184, v107, 16, v109
	v_lshl_or_b32 v187, v131, 16, v130
	v_lshl_or_b32 v186, v133, 16, v132
	v_perm_b32 v107, v191, v190, 0xc0c0004
	v_lshl_or_b32 v185, v137, 16, v134
	v_perm_b32 v109, v189, v188, 0xc0c0004
	v_perm_b32 v138, v195, v194, 0xc0c0004
	v_perm_b32 v181, v197, v196, 0xc0c0004
	v_perm_b32 v182, v202, v201, 0xc0c0004
	v_perm_b32 v188, v200, v136, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v108, v219, v135, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[130:137], v[184:187], v[152:155], v[140:147] neg_lo:[1,1,0]
	v_lshl_or_b32 v191, v109, 16, v107
	v_lshl_or_b32 v190, v139, 16, v138
	v_lshl_or_b32 v189, v181, 16, v180
	v_lshl_or_b32 v188, v188, 16, v182
	v_perm_b32 v107, v206, v205, 0xc0c0004
	v_perm_b32 v109, v204, v203, 0xc0c0004
	v_perm_b32 v138, v210, v209, 0xc0c0004
	v_perm_b32 v139, v208, v207, 0xc0c0004
	v_perm_b32 v152, v214, v213, 0xc0c0004
	v_perm_b32 v153, v212, v211, 0xc0c0004
	v_perm_b32 v154, v218, v217, 0xc0c0004
	v_perm_b32 v155, v216, v215, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[130:137], v[188:191], v[148:151], v[130:137] neg_lo:[1,1,0]
	v_lshl_or_b32 v195, v109, 16, v107
	v_lshl_or_b32 v194, v139, 16, v138
	v_lshl_or_b32 v193, v153, 16, v152
	v_lshl_or_b32 v192, v155, 16, v154
	v_perm_b32 v107, v223, v222, 0xc0c0004
	v_perm_b32 v109, v221, v220, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[148:155], v[160:163], v[156:159], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[184:187], v[156:159], v[140:147] neg_lo:[1,1,0]
	v_lshl_or_b32 v180, v108, 16, v228
	v_wmma_i32_16x16x16_iu8 v[130:137], v[192:195], v[101:104], v[130:137] neg_lo:[1,1,0]
	v_lshl_or_b32 v104, v109, 16, v107
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v101, v231, v230, 0xc0c0004
	v_perm_b32 v102, v229, v224, 0xc0c0004
	v_perm_b32 v107, v235, v234, 0xc0c0004
	v_perm_b32 v108, v233, v232, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v237, 0xc0c0004
	v_perm_b32 v109, v236, v227, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[148:155], v[164:167], v[118:121], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[188:191], v[118:121], v[140:147] neg_lo:[1,1,0]
	v_lshl_or_b32 v182, v115, 16, v111
	v_lshl_or_b32 v181, v226, 16, v225
	v_lshl_or_b32 v103, v102, 16, v101
	v_lshl_or_b32 v102, v108, 16, v107
	v_lshl_or_b32 v101, v109, 16, v9
	v_wmma_i32_16x16x16_iu8 v[148:155], v[168:171], v[82:85], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[192:195], v[82:85], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[180:183], v[176:179], v[122:129] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[101:104], v[176:179], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[148:155], v[180:183], v[172:175], v[148:155] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[140:147], v[101:104], v[172:175], v[140:147] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v118, v124
	v_cvt_f32_i32_e32 v124, v125
	v_cvt_f32_i32_e32 v119, v126
	v_cvt_f32_i32_e32 v125, v127
	v_cvt_f32_i32_e32 v120, v128
	v_cvt_f32_i32_e32 v126, v129
	v_cvt_f32_i32_e32 v121, v130
	v_cvt_f32_i32_e32 v127, v131
	v_cvt_f32_i32_e32 v122, v132
	v_cvt_f32_i32_e32 v128, v133
	v_cvt_f32_i32_e32 v107, v134
	v_cvt_f32_i32_e32 v108, v135
	v_cvt_f32_i32_e32 v102, v136
	v_cvt_f32_i32_e32 v101, v137
	v_cvt_f32_i32_e32 v130, v148
	v_cvt_f32_i32_e32 v136, v149
	v_cvt_f32_i32_e32 v134, v150
	v_cvt_f32_i32_e32 v139, v151
	v_cvt_f32_i32_e32 v129, v152
	v_cvt_f32_i32_e32 v133, v153
	v_cvt_f32_i32_e32 v131, v154
	v_cvt_f32_i32_e32 v137, v155
	v_cvt_f32_i32_e32 v132, v140
	v_cvt_f32_i32_e32 v138, v141
	v_cvt_f32_i32_e32 v135, v142
	v_cvt_f32_i32_e32 v140, v143
	v_cvt_f32_i32_e32 v109, v144
	v_cvt_f32_i32_e32 v111, v145
	v_cvt_f32_i32_e32 v103, v146
	v_cvt_f32_i32_e32 v104, v147
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s36, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s14, s26
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s15, s27
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s36, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(15)
	v_mov_b16_e32 v85.h, v116.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v94.h, v110.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s34
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v80, v80, s0, 1
	v_add_lshl_u32 v81, v81, s0, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s31
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v79, v79, s0, 1
	v_add_lshl_u32 v78, v78, s0, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v77, v77, s0, 1
	v_add_lshl_u32 v76, v76, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v80, 0x80000000, v80 :: v_dual_cndmask_b32 v81, 0x80000000, v81
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v75, v75, s0, 1
	v_add_lshl_u32 v74, v74, s0, 1
	v_add_lshl_u32 v73, v73, s0, 1
	v_add_lshl_u32 v72, v72, s0, 1
	v_add_lshl_u32 v71, v71, s0, 1
	v_add_lshl_u32 v70, v70, s0, 1
	v_dual_cndmask_b32 v82, 0x80000000, v79 :: v_dual_cndmask_b32 v83, 0x80000000, v78
	v_add_lshl_u32 v69, v69, s0, 1
	v_add_lshl_u32 v68, v68, s0, 1
	v_dual_cndmask_b32 v77, 0x80000000, v77 :: v_dual_cndmask_b32 v76, 0x80000000, v76
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v78, v80, s[24:27], 0 offen
	buffer_load_u16 v79, v81, s[24:27], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v75, 0x80000000, v75 :: v_dual_cndmask_b32 v74, 0x80000000, v74
	v_dual_cndmask_b32 v73, 0x80000000, v73 :: v_dual_cndmask_b32 v72, 0x80000000, v72
	v_dual_cndmask_b32 v71, 0x80000000, v71 :: v_dual_cndmask_b32 v70, 0x80000000, v70
	v_dual_cndmask_b32 v69, 0x80000000, v69 :: v_dual_cndmask_b32 v68, 0x80000000, v68
	s_clause 0xb
	buffer_load_u16 v80, v83, s[12:15], 0 offen
	buffer_load_u16 v81, v82, s[12:15], 0 offen
	buffer_load_u16 v76, v76, s[12:15], 0 offen
	buffer_load_u16 v77, v77, s[12:15], 0 offen
	buffer_load_u16 v74, v74, s[12:15], 0 offen
	buffer_load_u16 v75, v75, s[12:15], 0 offen
	buffer_load_u16 v72, v72, s[12:15], 0 offen
	buffer_load_u16 v73, v73, s[12:15], 0 offen
	buffer_load_u16 v70, v70, s[12:15], 0 offen
	buffer_load_u16 v71, v71, s[12:15], 0 offen
	buffer_load_u16 v82, v68, s[12:15], 0 offen
	buffer_load_u16 v83, v69, s[12:15], 0 offen
	v_add_lshl_u32 v68, v66, s0, 1
	v_add_lshl_u32 v69, v67, s0, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v66.h, v114.l
	v_mov_b16_e32 v67.h, v113.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v68, 0x80000000, v68 :: v_dual_cndmask_b32 v69, 0x80000000, v69
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v67.l, v66.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v85.l, v66.l
	v_add_lshl_u32 v37, v37, s0, 1
	s_clause 0x1
	buffer_load_u16 v68, v68, s[12:15], 0 offen
	buffer_load_u16 v69, v69, s[12:15], 0 offen
	v_add_lshl_u32 v38, v38, s0, 1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v84, 56, v64
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v64, s31, v63
	v_mul_lo_u32 v63, s31, v65
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v65.h, v117.l
	v_mov_b16_e32 v110.h, v94.l
	v_mov_b16_e32 v65.l, v66.l
	v_mov_b16_e32 v94.l, v66.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v148, v66, v85
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v85, v85, v67 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v150, v66, v94
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v95.h, v106.l
	buffer_load_u16 v152, v37, s[12:15], 0 offen
	v_mov_b16_e32 v96.h, v105.l
	buffer_load_u16 v38, v38, s[12:15], 0 offen
	v_mov_b16_e32 v105.h, v96.l
	v_mov_b16_e32 v106.h, v95.l
	v_mov_b16_e32 v95.l, v66.l
	v_mov_b16_e32 v105.l, v66.l
	v_mov_b16_e32 v97.h, v100.l
	v_mov_b16_e32 v100.h, v97.l
	v_mov_b16_e32 v100.l, v66.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v154, v66, v95
	v_dual_mul_f32 v95, v95, v67 :: v_dual_mul_f32 v160, v66, v105
	v_mul_f32_e32 v105, v105, v67
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v98.h, v99.l
	v_mov_b16_e32 v99.h, v98.l
	v_mov_b16_e32 v98.l, v66.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v157, v66, v100
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v22, v105, v22, v45
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v93.h, v112.l
	v_mov_b16_e32 v112.h, v93.l
	v_mov_b16_e32 v93.l, v66.l
	v_mov_b16_e32 v97.l, v66.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v45, v22, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v155, v66, v98
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v96.l, v66.l
	v_mov_b16_e32 v106.l, v66.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v151, v66, v93
	v_dual_mul_f32 v93, v93, v67 :: v_dual_mul_f32 v156, v66, v97
	v_mul_f32_e32 v97, v97, v67
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v159, v66, v106
	v_mul_f32_e32 v106, v106, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v23, v85, v23, v39
	v_fma_f32 v85, v150, v86, v56
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v94, v94, v67
	v_dual_mul_f32 v153, v66, v96 :: v_dual_mul_f32 v100, v100, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v18, v93, v18, v61
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v39, v23, s2
	v_cndmask_b32_e64 v39, v56, v85, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v113.h, v66.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v98, v98, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v15, v100, v15, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v61, v18, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v96, v96, v67
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v99.l, v66.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v24, v153, v24, v52
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v47, v15, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v145.h, v66.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v96, v13, v55
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v158, v66, v99
	v_mul_f32_e32 v99, v99, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v52, v24, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v149, v66, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v55, v13, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v65, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v25, v148, v25, v60
	v_fma_f32 v19, v95, v19, v57
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v141.h, v66.l
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s1, s33, s31
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v17, v65, v17, v62
	v_fma_f32 v65, v151, v91, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v60, v25, s2
	v_cndmask_b32_e64 v19, v57, v19, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s1, s1, s30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v62, v17, s2
	v_cndmask_b32_e64 v54, v54, v65, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v162, s1, v84
	v_add3_u32 v37, s1, v84, 64
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v84, v149, v88, v58
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v116.h, v66.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v86, v156, v89, v46
	v_fma_f32 v89, v160, v92, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v142.h, v66.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v58, v84, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v143.h, v66.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v46, v86, s2
	v_cndmask_b32_e64 v40, v40, v89, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v114.h, v66.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v112.l, v66.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v117.h, v66.l
	v_mov_b16_e32 v115.h, v66.l
	v_mov_b16_e64 v144.h, v66.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v110.l, v66.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v147.h, v66.l
	v_mov_b16_e64 v146.h, v66.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(18)
	v_mov_b16_e32 v11.h, v10.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	v_and_b32_e32 v0, 16, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v45, 16, v80
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v28, v154, v28, v50
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v47, 16, v81
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v14, v98, v14, v51
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v50, v28, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v50, 16, v74
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v27, v157, v27, v44
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v56, 16, v71
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v51, v14, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v52, 16, v72
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v21, v99, v21, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v44, v27, s2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v44, 16, v79
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v26, v155, v26, v48
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v51, 16, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v49, v21, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v49, 16, v77
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v88, v158, v90, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v48, v26, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v48, 16, v76
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v20, v97, v20, v53
	v_fma_f32 v87, v159, v87, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v42, v88, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v20, v53, v20, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v53, 16, v73
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v106, v16, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v87, s2
	v_cndmask_b32_e64 v16, v43, v16, s2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v43, 16, v78
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v55, 16, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v94, v12, v59
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v62, v49, v43 :: v_dual_lshlrev_b32 v57, 16, v82
	v_mul_f32_e32 v61, v45, v43
	v_mul_f32_e32 v74, v56, v43
	v_mul_f32_e32 v56, v44, v56
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v59, v12, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v60, v47, v43 :: v_dual_mul_f32 v49, v44, v49
	v_mul_f32_e32 v72, v53, v43
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v56, v56, v132, v27
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v59, 16, v83
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v60, v9, v23
	v_fma_f32 v60, v61, v123, v17
	v_fma_f32 v61, v62, v118, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v27, v56, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v49, v49, v134, v39
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v73, v52, v43
	v_mul_f32_e32 v52, v44, v52
	v_dual_mul_f32 v53, v44, v53 :: v_dual_mul_f32 v76, v59, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v145.l, v27.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v71, v50, v43 :: v_dual_mul_f32 v50, v44, v50
	v_dual_mul_f32 v45, v44, v45 :: v_dual_mul_f32 v70, v51, v43
	v_mul_f32_e32 v51, v44, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v39, v49, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v50, v50, v133, v28
	v_fma_f32 v45, v45, v136, v58
	v_fma_f32 v52, v52, v137, v46
	v_fma_f32 v51, v51, v129, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v116.l, v39.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v47, v44, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v50, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v53, v53, v131, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v24, v51, s3
	v_cndmask_b32_e64 v9, v23, v9, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v75, v55, v43
	v_mul_f32_e32 v77, v57, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v17, v60, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v141.l, v24.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v48, v43
	v_mul_f32_e32 v48, v44, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v26, v53, s3
	v_cndmask_b32_e64 v46, v46, v52, s3
	v_cndmask_b32_e64 v12, v12, v61, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v62, v65, v124, v18
	v_fma_f32 v65, v70, v119, v13
	v_fma_f32 v70, v71, v125, v19
	v_fma_f32 v71, v72, v120, v14
	v_fma_f32 v72, v73, v126, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v62, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v48, v48, v139, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v13, v65, s3
	v_cndmask_b32_e64 v19, v19, v70, s3
	v_cndmask_b32_e64 v14, v14, v71, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v50, v18, 16, 1
	v_cmp_o_f32_e64 s6, v18, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v20, v72, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v55, v44, v55
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_add3_u32 v18, v18, v50, 0x7fff
	v_and_b32_e32 v50, 1, v116
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v47, v47, v130, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v51, v13, 16, 1
	v_bfe_u32 v52, v19, 16, 1
	v_bfe_u32 v53, v14, 16, 1
	v_mov_b16_e64 v142.l, v46.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v25, v47, s3
	v_cndmask_b32_e64 v25, v58, v45, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v47, v9, 16, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v54, v48, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v48, v17, 16, 1
	v_bfe_u32 v54, v20, 16, 1
	v_mov_b16_e32 v113.l, v25.h
	v_mov_b16_e64 v143.l, v26.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v57, v44, v57
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v9, v9, v47, 0x7fff
	v_bfe_u32 v49, v12, 16, 1
	v_and_b32_e32 v47, 1, v113
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v73, v74, v121, v15
	v_fma_f32 v74, v75, v127, v21
	v_fma_f32 v75, v76, v122, v16
	v_fma_f32 v76, v77, v128, v22
	v_fma_f32 v55, v55, v138, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v15, v73, s3
	v_cndmask_b32_e64 v21, v21, v74, s3
	v_cndmask_b32_e64 v16, v16, v75, s3
	v_cndmask_b32_e64 v22, v22, v76, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v17, v17
	v_mov_b16_e32 v114.l, v23.h
	v_cmp_o_f32_e64 s9, v13, v13
	v_cmp_o_f32_e64 s10, v19, v19
	v_cmp_o_f32_e64 s13, v14, v14
	v_cmp_o_f32_e64 s14, v20, v20
	v_add3_u32 v17, v17, v48, 0x7fff
	v_add3_u32 v13, v13, v51, 0x7fff
	v_add3_u32 v19, v19, v52, 0x7fff
	v_and_b32_e32 v52, 1, v141
	v_add3_u32 v14, v14, v53, 0x7fff
	v_add3_u32 v20, v20, v54, 0x7fff
	v_and_b32_e32 v53, 1, v142
	v_and_b32_e32 v54, 1, v143
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v57, v57, v140, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v12, v12
	v_add3_u32 v12, v12, v49, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v161, v112, v67 :: v_dual_and_b32 v48, 1, v114
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v42, v55, s3
	v_cndmask_b32_e64 v40, v40, v57, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v117.l, v28.h
	v_cmp_o_f32_e64 s12, v24, v24
	v_cmp_o_f32_e64 s15, v46, v46
	v_cmp_o_f32_e64 s16, v26, v26
	v_bfe_u32 v55, v15, 16, 1
	v_bfe_u32 v56, v21, 16, 1
	v_bfe_u32 v57, v16, 16, 1
	v_bfe_u32 v58, v22, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.h, 0x7fff, v17.h, s0
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s9
	v_cndmask_b16 v13.h, 0x7fff, v19.h, s10
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v59, v44, v59
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v19, v24, v52, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s13
	v_cndmask_b16 v14.h, 0x7fff, v20.h, s14
	v_add3_u32 v20, v26, v54, 0x7fff
	v_add3_u32 v26, v46, v53, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s5
	v_cndmask_b16 v12.h, 0x7fff, v18.h, s6
	v_add3_u32 v18, v39, v50, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v59, v59, v135, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v25, v25
	v_cmp_o_f32_e64 s4, v23, v23
	v_mov_b16_e32 v115.l, v45.h
	v_cmp_o_f32_e64 s17, v15, v15
	v_cmp_o_f32_e64 s18, v21, v21
	v_mov_b16_e64 v144.l, v42.h
	v_cmp_o_f32_e64 s21, v16, v16
	v_cmp_o_f32_e64 s22, v22, v22
	v_add3_u32 v15, v15, v55, 0x7fff
	v_add3_u32 v21, v21, v56, 0x7fff
	v_add3_u32 v16, v16, v57, 0x7fff
	v_add3_u32 v22, v22, v58, 0x7fff
	v_add3_u32 v17, v23, v48, 0x7fff
	v_add3_u32 v23, v25, v47, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s12
	v_cndmask_b16 v19.h, 0x7fff, v26.h, s15
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v26, 16, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v51, 1, v117
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v59, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s11, v28, v28
	v_and_b32_e32 v49, 1, v115
	v_and_b32_e32 v56, 1, v145
	v_add3_u32 v24, v28, v51, 0x7fff
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s17
	v_cndmask_b16 v15.h, 0x7fff, v21.h, s18
	v_and_b32_e32 v55, 1, v144
	v_cndmask_b16 v16.l, 0x7fff, v16.h, s21
	v_cndmask_b16 v16.h, 0x7fff, v22.h, s22
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v23, v110, v67
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s7, v45, v45
	v_cmp_o_f32_e64 s19, v42, v42
	v_cmp_o_f32_e64 s20, v27, v27
	v_mov_b16_e64 v147.l, v41.h
	v_add3_u32 v25, v45, v49, 0x7fff
	v_add3_u32 v21, v27, v56, 0x7fff
	v_add3_u32 v27, v42, v55, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v17.h, s4
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s8
	v_cndmask_b16 v18.h, 0x7fff, v24.h, s11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v161, v6, v36
	v_fma_f32 v5, v23, v5, v35
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v23, 16, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v58, 1, v147
	v_cndmask_b16 v17.h, 0x7fff, v25.h, s7
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s16
	v_cndmask_b16 v20.h, 0x7fff, v27.h, s19
	v_cndmask_b16 v20.l, 0x7fff, v21.h, s20
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v25, v66, v112
	v_mul_f32_e32 v27, v66, v110
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v36, v6, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v28, v26, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v35, v5, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v35, v23, v43
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v25, v8, v34
	v_fma_f32 v7, v27, v7, v33
	v_fma_f32 v25, v28, v107, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v146.l, v40.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v27, v35, v108, v5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v23, v44, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v33, v7, s2
	v_cndmask_b32_e64 v6, v6, v25, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v57, 1, v146
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v5, v27, s3
	v_cndmask_b32_e64 v8, v34, v8, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v25, v44, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v26, v6, 16, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v23, v23, v111, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v27, v5, 16, 1
	v_add3_u32 v24, v40, v57, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v25, v25, v109, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v26, v6, v26, 0x7fff
	v_cmp_o_f32_e64 s0, v6, v6
	v_add3_u32 v6, v5, v27, 0x7fff
	v_cmp_o_f32_e64 s1, v5, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v7, v23, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v21, v41, v58, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v24.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v8, v25, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.l, v5.h
	v_mov_b16_e32 v8.h, v66.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v23.l, v66.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.l, 0x7fff, v21.h, vcc_lo
	v_mov_b16_e32 v21.l, v7.h
	v_mov_b16_e32 v21.h, v66.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v23.h, v11.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v8, 1, v8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v11.l, v66.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_and_b32_e32 v10, 1, v21
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v21, v66, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v8, v5, v8, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v66, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v6.l, 0x7fff, v26.h, s0
	v_add3_u32 v10, v7, v10, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v21, v4, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v21, v23, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v5, v3, v29
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v11, v67
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v11, 16, v152
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v8.h, 0x7fff, v8.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v21, v2, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v29, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v1, v5, v1, v30
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v38
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v21, v11, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v31, v2, s2
	v_cndmask_b32_e64 v4, v32, v4, s2
	v_cndmask_b32_e64 v1, v30, v1, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v23, v44, v5
	v_mul_f32_e32 v5, v5, v43
	v_mul_f32_e32 v11, v44, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v21, v21, v102, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v23, v104, v3
	v_fma_f32 v5, v5, v101, v1
	v_fma_f32 v11, v11, v103, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v21, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v8.l, 0x7fff, v10.h, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v7, s3
	v_cndmask_b32_e64 v1, v1, v5, s3
	v_cndmask_b32_e64 v4, v4, v11, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v5, v2, 16, 1
	v_mov_b16_e32 v10.h, v66.l
	v_mov_b16_e32 v10.l, v3.h
	v_bfe_u32 v11, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v5, v2, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v1, v1
	v_and_b32_e32 v2, 1, v10
	v_add3_u32 v10, v1, v11, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s1
	v_cmp_o_f32_e64 s1, v3, v3
	v_mov_b32_e32 v11, 0x7632
	v_add3_u32 v2, v3, v2, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_cndmask_b16 v3.h, 0x7fff, v10.h, s0
	v_mov_b32_e32 v10, 0x5410
	v_mov_b16_e32 v7.l, v4.h
	v_mov_b16_e32 v7.h, v66.l
	v_cndmask_b32_e32 v11, 0x3276, v11, vcc_lo
	v_cmp_o_f32_e64 s2, v4, v4
	v_cndmask_b32_e32 v10, 0x1054, v10, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_and_b32_e32 v7, 1, v7
	v_lshl_or_b32 v11, v11, 8, v11
	v_cndmask_b32_e32 v2, v9, v13, vcc_lo
	v_lshl_or_b32 v10, v10, 8, v10
	v_cndmask_b32_e32 v5, v12, v14, vcc_lo
	v_add3_u32 v1, v4, v7, 0x7fff
	v_and_b32_e32 v11, 0x760076, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v7, v6, v15 :: v_dual_and_b32 v10, 0x540054, v10
	v_cndmask_b32_e32 v6, v15, v6, vcc_lo
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	v_cndmask_b32_e32 v1, v13, v9, vcc_lo
	v_cndmask_b32_e32 v9, v3, v16, vcc_lo
	v_cndmask_b32_e32 v3, v16, v3, vcc_lo
	v_cndmask_b32_e32 v13, v22, v18, vcc_lo
	v_dual_cndmask_b32 v15, v17, v19 :: v_dual_cndmask_b32 v16, v8, v20
	v_cndmask_b32_e32 v8, v20, v8, vcc_lo
	v_lshl_or_b32 v10, v10, 4, v10
	v_lshl_or_b32 v11, v11, 4, v11
	v_cndmask_b32_e32 v4, v14, v12, vcc_lo
	v_dual_cndmask_b32 v14, v19, v17 :: v_dual_cndmask_b32 v17, v0, v24
	v_cndmask_b32_e32 v0, v24, v0, vcc_lo
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v12, v18, v22, vcc_lo
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v19, 0x5040504, v10
	v_and_b32_e32 v20, 0x7060706, v11
	v_permlanex16_b32 v11, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v19
	v_perm_b32 v1, v2, v1, v20
	v_perm_b32 v2, v5, v4, v19
	v_perm_b32 v3, v5, v4, v20
	v_perm_b32 v4, v6, v7, v19
	v_perm_b32 v5, v6, v7, v20
	v_perm_b32 v6, v18, v9, v19
	v_perm_b32 v7, v18, v9, v20
	v_perm_b32 v8, v13, v12, v19
	v_perm_b32 v9, v13, v12, v20
	v_perm_b32 v12, v15, v16, v19
	v_perm_b32 v13, v15, v16, v20
	v_add_lshl_u32 v16, v162, v64, 1
	v_perm_b32 v10, v11, v14, v19
	v_perm_b32 v11, v11, v14, v20
	v_perm_b32 v14, v21, v17, v19
	v_perm_b32 v15, v21, v17, v20
	v_add_lshl_u32 v17, v37, v64, 1
	v_add_lshl_u32 v18, v162, v63, 1
	v_add_lshl_u32 v19, v37, v63, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[28:31], 0 offen
	buffer_store_b128 v[4:7], v17, s[28:31], 0 offen
	buffer_store_b128 v[8:11], v18, s[28:31], 0 offen
	buffer_store_b128 v[12:15], v19, s[28:31], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 238
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15576
; TotalNumSgprs: 48
; NumVgprs: 238
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc128_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     238
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
