	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s26, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v2, 2, v0
	s_mov_b32 s47, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s22, 63
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
	s_lshl_b32 s12, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s12
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
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
	s_sub_i32 s13, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s16, s13, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s13, s13, s12
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s7, s16
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s13
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s15, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s14, s15
	s_abs_i32 s13, s2
	s_cvt_f32_u32 s17, s14
	s_sub_i32 s18, 0, s14
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 48, v6
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s6, s17, 0x4f7ffffe
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[3:4], null, s26, v2, v[1:2]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s31, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s17, s6
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b64 s[24:25], s[10:11]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s30, s6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s18, s18, s17
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v7, s26, 6, v3
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s12, s17, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s17, s17, s12
	s_xor_b32 s12, s2, s15
	s_mul_hi_u32 s17, s13, s17
	s_ashr_i32 s12, s12, 31
	s_mul_i32 s18, s17, s14
	s_sub_i32 s13, s13, s18
	s_add_i32 s18, s17, 1
	s_sub_i32 s19, s13, s14
	s_cmp_ge_u32 s13, s14
	s_cselect_b32 s17, s18, s17
	s_cselect_b32 s13, s19, s13
	s_add_i32 s18, s17, 1
	s_cmp_ge_u32 s13, s14
	s_cselect_b32 s13, s18, s17
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s46, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s13, s13, s12
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s3, s26, 0x7f
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s18, s13, s12
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s17, s3, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s19, s18, s15
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s46, v1
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s19
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s17, s17, 25
.Ltmp17:
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s22, s18, 7
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s16
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s14, s26, 63
.Ltmp19:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s15, s3, s17
.Ltmp20:
	.loc	1 356 39 is_stmt 1              ; generate_amdgcn.py:356:39
	s_add_i32 s17, s22, s23
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v4
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 6
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s3, s22, s26
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_mul_i32 s16, s17, s26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s14, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[4:5], null, s33, s26, v[3:4]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s3, s3, s46
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s16, s16, s46
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 350 30 is_stmt 0              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v5, s3, v3
	v_add_nc_u32_e32 v8, s3, v7
	.loc	1 356 39 is_stmt 1              ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v3, s16, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s14, 0x7f
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v7, s16, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s36, s46, 64
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v9, s46, v4
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v10, 64, v5
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_add_nc_u32 v12, 64, v3
	.loc	1 356 31 is_stmt 1              ; generate_amdgcn.py:356:31
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v11, 64, v8
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 342 17 is_stmt 1              ; generate_amdgcn.py:342:17
	v_or_b32_e32 v14, s36, v1
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v13, 64, v7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v4, s36, v4
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v14
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[26:29], v5, s[28:31], 0 offen
	buffer_load_b128 v[30:33], v8, s[28:31], 0 offen
	buffer_load_b128 v[34:37], v3, s[28:31], 0 offen
	buffer_load_b128 v[38:41], v7, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[22:25], v9, s[4:7], 0 offen
	v_lshlrev_b32_e32 v9, 1, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s14, 0xbf
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_dual_cndmask_b32 v3, 0x80000000, v4 :: v_dual_cndmask_b32 v4, 0x80000000, v10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v5, 0x80000000, v11, vcc_lo
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_dual_cndmask_b32 v7, 0x80000000, v12 :: v_dual_cndmask_b32 v8, 0x80000000, v13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[42:45], v3, s[4:7], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[46:49], v4, s[28:31], 0 offen
	buffer_load_b128 v[50:53], v5, s[28:31], 0 offen
	buffer_load_b128 v[54:57], v7, s[28:31], 0 offen
	buffer_load_b128 v[58:61], v8, s[28:31], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v4, 0x60, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v3, 15, v0
	v_lshrrev_b32_e32 v7, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v8, 4, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v9, 48, v9
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v10, 1, v4
	v_lshlrev_b32_e32 v5, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v150, v7, 16, v3
	v_lshlrev_b32_e32 v3, 6, v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v124, v6, v9
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v7, v8, 1, v10
	v_lshlrev_b32_e32 v4, 5, v4
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v63, 32, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v62, 0, v124
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v10, 2, v7
	v_or_b32_e32 v11, 4, v7
	v_or_b32_e32 v12, 6, v7
	v_or_b32_e32 v13, 8, v7
	v_or_b32_e32 v14, 10, v7
	v_or_b32_e32 v15, 12, v7
	v_or_b32_e32 v16, 14, v7
	v_or_b32_e32 v17, 64, v7
	v_or_b32_e32 v18, 0x42, v7
	v_or_b32_e32 v19, 0x44, v7
	v_or_b32_e32 v20, 0x46, v7
	v_or_b32_e32 v21, 0x48, v7
	v_or_b32_e32 v6, 0x4a, v7
	v_or_b32_e32 v8, 0x4c, v7
	v_or_b32_e32 v9, 0x4e, v7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(5)
	ds_store_b128 v62, v[22:25] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_store_b128 v62, v[26:29]
	ds_store_b128 v62, v[30:33] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_store_b128 v62, v[34:37] offset:16384
	ds_store_b128 v62, v[38:41] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v62, v[42:45] offset:36864
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v62, v[46:49] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v62, v[50:53] offset:12288
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v62, v[54:57] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v62, v[58:61] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v22, 48, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_or_b32 v135, 0x430, v5, v3
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_or3_b32 v215, v4, v22, v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v137, 16, v135
	v_xor_b32_e32 v138, 32, v135
	v_xor_b32_e32 v140, 48, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v219, 16, v215
	v_xor_b32_e32 v221, 32, v215
	v_xor_b32_e32 v224, 48, v215
	v_or_b32_e32 v220, 0x1000, v215
	v_or_b32_e32 v222, 0x1000, v219
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v223, 0x1000, v221
	v_or_b32_e32 v226, 0x1000, v224
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr135
                                        ; implicit-def: $vgpr137
                                        ; implicit-def: $vgpr138
                                        ; implicit-def: $vgpr140
                                        ; implicit-def: $vgpr215
                                        ; implicit-def: $vgpr220
                                        ; implicit-def: $vgpr219
                                        ; implicit-def: $vgpr222
                                        ; implicit-def: $vgpr221
                                        ; implicit-def: $vgpr223
                                        ; implicit-def: $vgpr224
                                        ; implicit-def: $vgpr226
.LBB0_3:                                ; %Flow612
	s_load_b64 s[20:21], s[0:1], 0x20
	v_or_b32_e32 v22, s33, v150
	v_or_b32_e32 v23, s33, v63
	s_ashr_i32 s1, s15, 7
	v_or_b32_e32 v169, s22, v7
	v_or_b32_e32 v166, s22, v10
	v_mul_lo_u32 v171, v22, s1
	v_mul_lo_u32 v170, v23, s1
	v_or_b32_e32 v167, s22, v11
	v_or_b32_e32 v168, s22, v12
	v_or_b32_e32 v151, s22, v13
	v_or_b32_e32 v152, s22, v14
	v_or_b32_e32 v153, s22, v15
	v_or_b32_e32 v154, s22, v16
	v_or_b32_e32 v116, s22, v17
	v_or_b32_e32 v117, s22, v18
	v_or_b32_e32 v118, s22, v19
	v_or_b32_e32 v119, s22, v20
	v_or_b32_e32 v120, s22, v21
	v_or_b32_e32 v121, s22, v6
	v_or_b32_e32 v122, s22, v8
	v_or_b32_e32 v123, s22, v9
	v_add_nc_u32_e32 v165, s23, v7
	v_add_nc_u32_e32 v160, s23, v10
	v_add_nc_u32_e32 v161, s23, v11
	v_add_nc_u32_e32 v162, s23, v12
	v_add_nc_u32_e32 v156, s23, v13
	v_add_nc_u32_e32 v163, s23, v14
	v_add_nc_u32_e32 v157, s23, v15
	v_add_nc_u32_e32 v158, s23, v16
	v_add_nc_u32_e32 v125, s23, v17
	v_add_nc_u32_e32 v126, s23, v18
	v_add_nc_u32_e32 v127, s23, v19
	v_add_nc_u32_e32 v128, s23, v20
	v_add_nc_u32_e32 v129, s23, v21
	v_add_nc_u32_e32 v130, s23, v6
	v_add_nc_u32_e32 v131, s23, v8
	v_add_nc_u32_e32 v132, s23, v9
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_lshl_b32 s34, s23, 1
	scratch_store_b32 off, v63, off offset:120 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v185, 0 :: v_dual_and_b32 v6, 48, v5
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s10, s13, 7
	v_and_or_b32 v135, 0x430, v5, v3
	s_lshl_b32 s11, s12, 7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or3_b32 v215, v4, v6, v3
	v_add3_u32 v3, s23, s10, v2
	v_or_b32_e32 v4, s10, v2
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v2, s33, v2
	v_xor_b32_e32 v219, 16, v215
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v3, s11, v3
	v_subrev_nc_u32_e32 v4, s11, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v2, s26, v2
	v_xor_b32_e32 v221, 32, v215
	v_dual_mov_b32 v174, 0 :: v_dual_add_nc_u32 v5, 64, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v6, 64, v4
	v_mul_lo_u32 v3, s26, v3
	v_mul_lo_u32 v4, s26, v4
	v_xor_b32_e32 v224, 48, v215
	v_mul_lo_u32 v5, s26, v5
	v_mul_lo_u32 v6, s26, v6
	v_xor_b32_e32 v137, 16, v135
	v_xor_b32_e32 v138, 32, v135
	v_xor_b32_e32 v140, 48, v135
	v_or_b32_e32 v220, 0x1000, v215
	v_or_b32_e32 v222, 0x1000, v219
	v_or_b32_e32 v223, 0x1000, v221
	v_or_b32_e32 v226, 0x1000, v224
	v_add3_u32 v133, v5, v1, 0x80
	v_add3_u32 v134, v3, v1, 0x80
	v_add3_u32 v136, v6, v1, 0x80
	v_add3_u32 v139, v4, v1, 0x80
	v_add3_u32 v141, v2, v1, 0x80
	v_or_b32_e32 v142, 0x80, v1
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v71, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v72, 0
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s14, 6
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b32 s12, 0
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
.Ltmp22:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s10, s0, -2
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s45, 0, 0x9000
	s_add_i32 s44, 0, 0x2000
	s_add_i32 s48, 0, 0x4000
	s_add_i32 s35, 0, 0x6000
	s_mov_b32 s11, 1
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s47, s12
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s27, s46
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v5, s47, v215
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v196, s19 :: v_dual_add_nc_u32 v1, s27, v142
	v_dual_mov_b32 v190, s13 :: v_dual_add_nc_u32 v9, s48, v215
	v_dual_mov_b32 v195, s18 :: v_dual_add_nc_u32 v148, s47, v219
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v194, s17 :: v_dual_add_nc_u32 v1, s27, v141
	v_mov_b32_e32 v193, s16
	v_mov_b32_e32 v191, s14
	v_mov_b32_e32 v189, s12
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v192, s15 :: v_dual_add_nc_u32 v147, s0, v137
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[65:68], v1, s[4:7], 0 offen
	v_add_nc_u32_e32 v1, s0, v135
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v1
	ds_load_b128 v[143:146], v1 offset:2048
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[1:4], v5
	ds_load_b128 v[5:8], v5 offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[21:24], v9
	ds_load_b128 v[197:200], v9 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[1:4], v[17:20], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[1:4], v[143:146], v[189:196] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[5:8], v[17:20], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[5:8], v[143:146], v[189:196] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[21:24], v[17:20], v[189:196] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[197:200], v[17:20], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[21:24], v[143:146], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[197:200], v[143:146], v[189:196] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[143:146], v147
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[189:192], v148
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[193:196], v147 offset:2048
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v147, s48, v219
	ds_load_b128 v[197:200], v147 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[189:192], v[143:146], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[189:192], v[193:196], v[57:64] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[189:192], v148 offset:4096
	v_add_nc_u32_e32 v148, s47, v221
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[197:200], v[143:146], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[197:200], v[193:196], v[17:24] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[189:192], v[143:146], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[189:192], v[193:196], v[25:32] neg_lo:[1,1,0]
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[189:192], v147
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v147, s0, v138
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[189:192], v[143:146], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[189:192], v[193:196], v[49:56] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[143:146], v147
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[189:192], v148
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[193:196], v147 offset:2048
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v147, s48, v221
	ds_load_b128 v[197:200], v147 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[189:192], v[143:146], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[189:192], v[193:196], v[57:64] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[189:192], v148 offset:4096
	v_add_nc_u32_e32 v148, s47, v224
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[197:200], v[143:146], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[197:200], v[193:196], v[17:24] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[189:192], v[143:146], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[189:192], v[193:196], v[25:32] neg_lo:[1,1,0]
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[189:192], v147
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v147, s0, v140
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s46, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s0, s0, 25
	s_add_i32 s0, s46, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s46, s0, 7
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s47, s46, s34
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s46, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v197, v123, s47, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s0, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s11, s11, 1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v197, 0x80000000, v197, s0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[189:192], v[143:146], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[189:192], v[193:196], v[49:56] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[143:146], v147
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[189:192], v148
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[193:196], v147 offset:2048
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v147, s48, v224
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s48, s47, s22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s11, 2
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v198, v165, s48, 1
	v_add_lshl_u32 v199, v160, s48, 1
	v_add_lshl_u32 v200, v161, s48, 1
	v_add_lshl_u32 v201, v162, s48, 1
	v_add_lshl_u32 v202, v156, s48, 1
	v_add_lshl_u32 v203, v163, s48, 1
	v_add_lshl_u32 v204, v157, s48, 1
	v_add_lshl_u32 v205, v158, s48, 1
	v_add_lshl_u32 v209, v125, s48, 1
	v_add_lshl_u32 v210, v126, s48, 1
	v_add_lshl_u32 v211, v127, s48, 1
	v_add_lshl_u32 v212, v128, s48, 1
	v_add_lshl_u32 v213, v129, s48, 1
	v_add_lshl_u32 v214, v130, s48, 1
	v_add_lshl_u32 v216, v131, s48, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[189:192], v[143:146], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[189:192], v[193:196], v[57:64] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[189:192], v148 offset:4096
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v217, v132, s48, 1
	v_cndmask_b32_e64 v198, 0x80000000, v198, s0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v199, 0x80000000, v199, s0
	v_cndmask_b32_e64 v200, 0x80000000, v200, s0
	v_cndmask_b32_e64 v201, 0x80000000, v201, s0
	v_cndmask_b32_e64 v202, 0x80000000, v202, s0
	v_cndmask_b32_e64 v203, 0x80000000, v203, s0
	v_cndmask_b32_e64 v204, 0x80000000, v204, s0
	v_cndmask_b32_e64 v205, 0x80000000, v205, s0
	v_cndmask_b32_e64 v209, 0x80000000, v209, s0
	v_cndmask_b32_e64 v210, 0x80000000, v210, s0
	v_cndmask_b32_e64 v211, 0x80000000, v211, s0
	v_cndmask_b32_e64 v212, 0x80000000, v212, s0
	v_cndmask_b32_e64 v213, 0x80000000, v213, s0
	v_cndmask_b32_e64 v214, 0x80000000, v214, s0
	v_cndmask_b32_e64 v216, 0x80000000, v216, s0
	v_cndmask_b32_e64 v217, 0x80000000, v217, s0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[189:192], v[143:146], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[189:192], v[193:196], v[25:32] neg_lo:[1,1,0]
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[189:192], v147
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s11, s11, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v148, v13
	v_cvt_f32_i32_e32 v149, v16
	v_cvt_f32_i32_e32 v155, v15
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v15, v116, s47, 1
	v_add_lshl_u32 v16, v117, s47, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[189:192], v[143:146], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[189:192], v[193:196], v[49:56] neg_lo:[1,1,0]
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[189:192], v147 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v147, v14
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v14, v154, s47, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[189:192], v[143:146], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[189:192], v[193:196], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v143, v50
	v_cvt_f32_i32_e32 v50, v52
	v_cvt_f32_i32_e32 v52, v53
	v_cvt_f32_i32_e32 v159, v2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v2, s27, v136
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v189, v5
	v_cvt_f32_i32_e32 v53, v55
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v55, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v172, v4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v5, 0x80000000, v2, vcc_lo
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v2, s27, v134
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v4, v169, s47, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v173, v3
	v_cvt_f32_i32_e32 v187, v6
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v3, v170, s46, 1
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e32 v9, 0x80000000, v2, vcc_lo
	v_add_nc_u32_e32 v2, s27, v133
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v6, v166, s47, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v191, v7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v7, v167, s47, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v190, v8
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e32 v13, 0x80000000, v2, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v2, v171, s46, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v8, v168, s47, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v144, v49
	v_cvt_f32_i32_e32 v145, v51
	v_cvt_f32_i32_e32 v49, v54
	v_cvt_f32_i32_e32 v51, v56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v54, v10
	v_cvt_f32_i32_e32 v56, v12
	v_cvt_f32_i32_e32 v146, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v164, v1
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v1, s27, v139
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v10, v151, s47, 1
	v_add_lshl_u32 v11, v152, s47, 1
	v_add_lshl_u32 v12, v153, s47, 1
	v_add_lshl_u32 v192, v118, s47, 1
	v_add_lshl_u32 v193, v119, s47, 1
	v_add_lshl_u32 v194, v120, s47, 1
	v_add_lshl_u32 v195, v121, s47, 1
	v_add_lshl_u32 v196, v122, s47, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	v_cndmask_b32_e64 v192, 0x80000000, v192, s0
	v_cndmask_b32_e64 v193, 0x80000000, v193, s0
	v_cndmask_b32_e64 v194, 0x80000000, v194, s0
	v_cndmask_b32_e64 v195, 0x80000000, v195, s0
	v_cndmask_b32_e64 v196, 0x80000000, v196, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v218, v2, s[36:39], 0 offen
	buffer_load_u16 v225, v3, s[36:39], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x1f
	buffer_load_u16 v227, v4, s[40:43], 0 offen
	buffer_load_u16 v228, v6, s[40:43], 0 offen
	buffer_load_u16 v229, v7, s[40:43], 0 offen
	buffer_load_u16 v230, v8, s[40:43], 0 offen
	buffer_load_u16 v231, v10, s[40:43], 0 offen
	buffer_load_u16 v232, v11, s[40:43], 0 offen
	buffer_load_u16 v233, v12, s[40:43], 0 offen
	buffer_load_u16 v234, v14, s[40:43], 0 offen
	buffer_load_u16 v235, v15, s[40:43], 0 offen
	buffer_load_u16 v236, v16, s[40:43], 0 offen
	buffer_load_u16 v192, v192, s[40:43], 0 offen
	buffer_load_u16 v193, v193, s[40:43], 0 offen
	buffer_load_u16 v194, v194, s[40:43], 0 offen
	buffer_load_u16 v195, v195, s[40:43], 0 offen
	buffer_load_u16 v196, v196, s[40:43], 0 offen
	buffer_load_u16 v197, v197, s[40:43], 0 offen
	buffer_load_u16 v198, v198, s[40:43], 0 offen
	buffer_load_u16 v199, v199, s[40:43], 0 offen
	buffer_load_u16 v200, v200, s[40:43], 0 offen
	buffer_load_u16 v201, v201, s[40:43], 0 offen
	buffer_load_u16 v202, v202, s[40:43], 0 offen
	buffer_load_u16 v203, v203, s[40:43], 0 offen
	buffer_load_u16 v204, v204, s[40:43], 0 offen
	buffer_load_u16 v205, v205, s[40:43], 0 offen
	buffer_load_u16 v209, v209, s[40:43], 0 offen
	buffer_load_u16 v210, v210, s[40:43], 0 offen
	buffer_load_u16 v211, v211, s[40:43], 0 offen
	buffer_load_u16 v212, v212, s[40:43], 0 offen
	buffer_load_u16 v213, v213, s[40:43], 0 offen
	buffer_load_u16 v214, v214, s[40:43], 0 offen
	buffer_load_u16 v216, v216, s[40:43], 0 offen
	buffer_load_u16 v217, v217, s[40:43], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[28:31], 0 offen
	buffer_load_b128 v[5:8], v5, s[28:31], 0 offen
	buffer_load_b128 v[9:12], v9, s[28:31], 0 offen
	buffer_load_b128 v[13:16], v13, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s46, s11, 12
	s_mov_b32 s47, s44
	s_add_i32 s49, s46, 0
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v237, s49, v124
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s44, s49, s46
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(38)
	ds_store_b128 v237, v[65:68] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v65, s44, v124
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s10, s10, -1
	s_mov_b32 s0, s45
	s_mov_b32 s48, s35
	s_add_i32 s46, s27, 64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s45, s49, 0x8000
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_add_i32 s35, s44, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s10, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v65, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v65, v[5:8] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v65, v[9:12] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v65, v[13:16] offset:20480
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v1, 16, v218
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v2, 16, v227
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v1, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v184, v3, v41 :: v_dual_lshlrev_b32 v3, 16, v228
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v1, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v185, v4, v42 :: v_dual_lshlrev_b32 v4, 16, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v1, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v176, v5, v43 :: v_dual_lshlrev_b32 v5, 16, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v1, v5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v177, v6, v44 :: v_dual_lshlrev_b32 v6, 16, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v1, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v109, v7, v45
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v7, 16, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v1, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v110, v8, v46
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v8, 16, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v9, v1, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v101, v9, v47
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v9, 16, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v1, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v102, v10, v48
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v10, 16, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v11, v1, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v93, v11, v55
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v11, 16, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v1, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v94, v12, v54
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v12, 16, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v13, v1, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v85, v13, v146
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v13, 16, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v14, v1, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v86, v14, v56
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v14, 16, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v15, v1, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v77, v15, v148
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v15, 16, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v16, v1, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v78, v16, v147
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v16, 16, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v41, v1, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v69, v41, v155
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v41, 16, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v42, v1, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v70, v42, v149
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v42, 16, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v188, v2, v57
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v206, v2, v58
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v180, v2, v59
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v181, v2, v60
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v111, v2, v61
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v112, v2, v62
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v103, v2, v63
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v104, v2, v64
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v95, v2, v25
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v96, v2, v26
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v87, v2, v27
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v88, v2, v28
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v79, v2, v29
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v80, v2, v30
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v71, v2, v31
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v72, v2, v32
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v2, 16, v198
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v3, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v174, v3, v33 :: v_dual_lshlrev_b32 v3, 16, v199
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v186, v4, v34
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v4, 16, v200
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v178, v5, v35 :: v_dual_lshlrev_b32 v5, 16, v201
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v6, v1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v179, v6, v36 :: v_dual_lshlrev_b32 v6, 16, v202
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v7, v1, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v113, v7, v37
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v7, 16, v203
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v8, v1, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v114, v8, v38
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v8, 16, v204
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v9, v1, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v105, v9, v39
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v9, 16, v205
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v10, v1, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v106, v10, v40
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v10, 16, v209
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v11, v1, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v97, v11, v164
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v11, 16, v210
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v12, v1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v98, v12, v159
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v12, 16, v211
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v13, v1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v89, v13, v173
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v13, 16, v212
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v14, v1, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v90, v14, v172
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v14, 16, v213
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v15, v1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v81, v15, v189
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v15, 16, v214
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v1, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v82, v16, v187
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v16, 16, v216
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v25, v1, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v73, v25, v191
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v25, 16, v217
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v1, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v74, v1, v190
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v42, v2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v207, v1, v144
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v42, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v208, v1, v143 :: v_dual_mul_f32 v1, v42, v4
	v_fmac_f32_e32 v182, v1, v145
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v42, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v183, v1, v50
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v42, v6
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v115, v1, v52
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v42, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v175, v1, v49
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v42, v8
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v107, v1, v53
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v42, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v108, v1, v51 :: v_dual_mul_f32 v1, v42, v10
	v_fmac_f32_e32 v99, v1, v17
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v42, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v100, v1, v18 :: v_dual_mul_f32 v1, v42, v12
	v_fmac_f32_e32 v91, v1, v19
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v42, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v92, v1, v20 :: v_dual_mul_f32 v1, v42, v14
	v_fmac_f32_e32 v83, v1, v21
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v42, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v84, v1, v22 :: v_dual_mul_f32 v1, v42, v16
	v_fmac_f32_e32 v75, v1, v23
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v42, v25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v76, v1, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_add_i32 s36, s27, 0x80
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s45, 0, 0x9000
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v184, 0
	v_mov_b32_e32 v186, 0
	v_mov_b32_e32 v174, 0
	s_add_i32 s44, 0, 0x2000
	s_add_i32 s48, 0, 0x4000
	s_add_i32 s35, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v5, s0, v137
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v6, s0, v138
	v_dual_mov_b32 v214, 0 :: v_dual_add_nc_u32 v1, s0, v135
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v7, s0, v140
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[21:24], v5
	ds_load_b128 v[9:12], v5 offset:2048
	ds_load_b128 v[25:28], v6
	ds_load_b128 v[17:20], v6 offset:2048
	ds_load_b128 v[13:16], v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[5:8], v7 offset:2048
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[29:32], v1
	ds_load_b128 v[1:4], v1 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v33, 0, 1, s2
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v46, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v33
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v218, 0
	v_mov_b32_e32 v173, 0
	v_mov_b32_e32 v155, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v37, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	scratch_store_b32 off, v37, off         ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_10
; %bb.9:
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
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v35, s47, v220
	v_add_nc_u32_e32 v36, s47, v215
	v_add_nc_u32_e32 v39, s47, v222
	ds_load_b128 v[63:66], v35
	ds_load_b128 v[141:144], v36
	v_add_nc_u32_e32 v35, s47, v219
	v_add_nc_u32_e32 v37, s47, v223
	ds_load_b128 v[201:204], v39
	ds_load_b128 v[209:212], v35
	v_add_nc_u32_e32 v38, s47, v221
	v_add_nc_u32_e32 v34, s47, v224
	ds_load_b128 v[145:148], v37
	ds_load_b128 v[189:192], v38
	v_add_nc_u32_e32 v33, s47, v226
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v43, s19 :: v_dual_mov_b32 v42, s18
	v_dual_mov_b32 v41, s17 :: v_dual_mov_b32 v40, s16
	v_dual_mov_b32 v39, s15 :: v_dual_mov_b32 v38, s14
	v_dual_mov_b32 v37, s13 :: v_dual_mov_b32 v36, s12
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[227:230], v34
	ds_load_b128 v[231:234], v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[141:144], v[29:32], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[55:62], v[63:66], v[29:32], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[193:200], v[141:144], v[1:4], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[63:66], v[1:4], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[209:212], v[21:24], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[55:62], v[201:204], v[21:24], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[193:200], v[209:212], v[9:12], v[193:200] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[201:204], v[9:12], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[189:192], v[25:28], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[55:62], v[145:148], v[25:28], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[193:200], v[189:192], v[17:20], v[193:200] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[145:148], v[17:20], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[227:230], v[13:16], v[47:54] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[231:234], v[13:16], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[193:200], v[227:230], v[5:8], v[193:200] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[231:234], v[5:8], v[36:43] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v205, v49
	v_cvt_f32_i32_e32 v213, v50
	v_cvt_f32_i32_e32 v63, v51
	v_cvt_f32_i32_e32 v64, v52
	v_cvt_f32_i32_e32 v52, v53
	v_cvt_f32_i32_e32 v53, v54
	v_cvt_f32_i32_e32 v46, v55
	v_cvt_f32_i32_e32 v49, v56
	v_cvt_f32_i32_e32 v44, v57
	v_cvt_f32_i32_e32 v45, v58
	v_cvt_f32_i32_e32 v33, v59
	v_cvt_f32_i32_e32 v34, v60
	v_cvt_f32_i32_e32 v216, v61
	v_cvt_f32_i32_e32 v217, v62
	v_cvt_f32_i32_e32 v225, v193
	v_cvt_f32_i32_e32 v187, v194
	v_cvt_f32_i32_e32 v155, v195
	v_cvt_f32_i32_e32 v54, v196
	v_cvt_f32_i32_e32 v57, v197
	v_cvt_f32_i32_e32 v173, v198
	v_cvt_f32_i32_e32 v55, v199
	v_cvt_f32_i32_e32 v56, v200
	v_cvt_f32_i32_e32 v50, v36
	v_cvt_f32_i32_e32 v51, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v35, v40
	v_cvt_f32_i32_e32 v36, v41
	v_cvt_f32_i32_e32 v218, v42
	v_cvt_f32_i32_e32 v37, v43
	v_cvt_f32_i32_e32 v198, v47
	v_cvt_f32_i32_e32 v197, v48
	scratch_store_b32 off, v37, off         ; 4-byte Folded Spill
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x12                           ; 76-byte Folded Spill
	scratch_store_b32 off, v57, off offset:232
	scratch_store_b32 off, v64, off offset:220
	scratch_store_b32 off, v63, off offset:216
	scratch_store_b32 off, v56, off offset:192
	scratch_store_b32 off, v55, off offset:188
	scratch_store_b32 off, v53, off offset:168
	scratch_store_b32 off, v52, off offset:164
	scratch_store_b32 off, v51, off offset:132
	scratch_store_b32 off, v50, off offset:128
	scratch_store_b32 off, v49, off offset:112
	scratch_store_b32 off, v46, off offset:108
	scratch_store_b32 off, v39, off offset:96
	scratch_store_b32 off, v38, off offset:92
	scratch_store_b32 off, v45, off offset:80
	scratch_store_b32 off, v44, off offset:76
	scratch_store_b32 off, v36, off offset:28
	scratch_store_b32 off, v35, off offset:24
	scratch_store_b32 off, v34, off offset:16
	scratch_store_b32 off, v33, off offset:12
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v36, 0
	v_mov_b32_e32 v35, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 356 31 is_stmt 1              ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v35, s48, v220
	v_add_nc_u32_e32 v36, s48, v215
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v66, s19 :: v_dual_add_nc_u32 v33, s48, v226
	v_dual_mov_b32 v60, s13 :: v_dual_add_nc_u32 v39, s48, v222
	v_dual_mov_b32 v64, s17 :: v_dual_mov_b32 v63, s16
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[47:50], v35
	ds_load_b128 v[141:144], v36
	v_add_nc_u32_e32 v35, s48, v219
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v62, s15 :: v_dual_add_nc_u32 v37, s48, v223
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[199:202], v39
	ds_load_b128 v[209:212], v35
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v61, s14 :: v_dual_add_nc_u32 v38, s48, v221
	v_dual_mov_b32 v65, s18 :: v_dual_add_nc_u32 v34, s48, v224
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[145:148], v37
	ds_load_b128 v[193:196], v38
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_mov_b32_e32 v59, s12
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[227:230], v34
	ds_load_b128 v[231:234], v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[240:247], v[47:50], v[29:32], v[59:66] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[141:144], v[29:32], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[248:255], v[141:144], v[1:4], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[47:50], v[1:4], v[59:66] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[209:212], v[21:24], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[240:247], v[199:202], v[21:24], v[240:247] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[248:255], v[209:212], v[9:12], v[248:255] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[199:202], v[9:12], v[59:66] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[193:196], v[25:28], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[240:247], v[145:148], v[25:28], v[240:247] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[248:255], v[193:196], v[17:20], v[248:255] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[145:148], v[17:20], v[59:66] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[227:230], v[13:16], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[240:247], v[231:234], v[13:16], v[240:247] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[248:255], v[227:230], v[5:8], v[248:255] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[59:66], v[231:234], v[5:8], v[59:66] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v172, v39
	v_cvt_f32_i32_e32 v67, v40
	v_cvt_f32_i32_e32 v189, v41
	v_cvt_f32_i32_e32 v149, v42
	v_cvt_f32_i32_e32 v68, v43
	v_cvt_f32_i32_e32 v124, v44
	v_cvt_f32_i32_e32 v53, v240
	v_cvt_f32_i32_e32 v56, v241
	v_cvt_f32_i32_e32 v47, v242
	v_cvt_f32_i32_e32 v49, v243
	v_cvt_f32_i32_e32 v43, v244
	v_cvt_f32_i32_e32 v44, v245
	v_cvt_f32_i32_e32 v33, v246
	v_cvt_f32_i32_e32 v34, v247
	v_cvt_f32_i32_e32 v55, v248
	v_cvt_f32_i32_e32 v52, v249
	v_cvt_f32_i32_e32 v42, v250
	v_cvt_f32_i32_e32 v41, v251
	v_cvt_f32_i32_e32 v40, v252
	v_cvt_f32_i32_e32 v39, v253
	v_cvt_f32_i32_e32 v133, v254
	v_cvt_f32_i32_e32 v148, v255
	v_cvt_f32_i32_e32 v57, v59
	v_cvt_f32_i32_e32 v58, v60
	v_cvt_f32_i32_e32 v50, v61
	v_cvt_f32_i32_e32 v51, v62
	v_cvt_f32_i32_e32 v45, v63
	v_cvt_f32_i32_e32 v46, v64
	v_cvt_f32_i32_e32 v35, v65
	v_cvt_f32_i32_e32 v36, v66
	v_cvt_f32_i32_e32 v214, v37
	v_cvt_f32_i32_e32 v48, v38
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s46, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 25
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s46, s0
	s_clause 0x12                           ; 76-byte Folded Spill
	scratch_store_b32 off, v133, off offset:224
	scratch_store_b32 off, v124, off offset:204
	scratch_store_b32 off, v68, off offset:200
	scratch_store_b32 off, v58, off offset:180
	scratch_store_b32 off, v57, off offset:172
	scratch_store_b32 off, v56, off offset:156
	scratch_store_b32 off, v53, off offset:152
	scratch_store_b32 off, v51, off offset:124
	scratch_store_b32 off, v50, off offset:116
	scratch_store_b32 off, v49, off offset:104
	scratch_store_b32 off, v47, off offset:100
	scratch_store_b32 off, v46, off offset:60
	scratch_store_b32 off, v45, off offset:52
	scratch_store_b32 off, v44, off offset:48
	scratch_store_b32 off, v43, off offset:44
	scratch_store_b32 off, v36, off offset:32
	scratch_store_b32 off, v35, off offset:20
	scratch_store_b32 off, v34, off offset:8
	scratch_store_b32 off, v33, off offset:4
	s_ashr_i32 s0, s0, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v171, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s4, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_mov_b32 v124, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v33, 0, 1, s3
	v_mov_b32_e32 v43, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v53, v1, s[8:11], 0 offen
	v_add_lshl_u32 v1, v170, s0, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s34
	v_mov_b32_e32 v239, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v44, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_mov_b32_e32 v237, 0
	v_mov_b32_e32 v141, 0
	v_mov_b32_e32 v209, 0
	v_mov_b32_e32 v191, 0
	buffer_load_u16 v194, v1, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v1, v169, s0, 1
	v_mov_b32_e32 v47, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v238, 0
	v_mov_b32_e32 v143, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v145, 0
	v_mov_b32_e32 v229, 0
	v_mov_b32_e32 v243, 0
	buffer_load_u16 v204, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, v166, s0, 1
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v38, 0
	s_mov_b32 s12, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v210, 0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v200, 0
	v_mov_b32_e32 v144, 0
	v_mov_b32_e32 v50, 0
	buffer_load_u16 v60, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, v167, s0, 1
	v_mov_b32_e32 v146, 0
	v_mov_b32_e32 v230, 0
	v_mov_b32_e32 v244, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v202, 0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	buffer_load_u16 v159, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, v168, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v164, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, v151, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:248 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v152, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v195, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, v153, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:236 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v154, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:228 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v116, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:196 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v117, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:184 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v118, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:140 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v119, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:136 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v120, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:72 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v121, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:68 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v122, s0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, v123, s0, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s0, s0, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	.loc	1 370 31 is_stmt 0              ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v1, s0, v165, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v139, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v160, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v136, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v161, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v134, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v162, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v199, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v156, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v133, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v163, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v196, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, s0, v157, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:240 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v158, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:244 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v125, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:208 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v126, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:212 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v127, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:160 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v128, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:176 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v129, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:84 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v130, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:88 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v131, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:56 ; 4-byte Folded Spill
	v_add_lshl_u32 v1, s0, v132, 1
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v33
	v_mov_b32_e32 v33, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:64 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s45, v135
	ds_load_b128 v[17:20], v1
	ds_load_b128 v[13:16], v1 offset:2048
	v_add_nc_u32_e32 v1, s45, v137
	ds_load_b128 v[21:24], v1
	ds_load_b128 v[9:12], v1 offset:2048
	v_add_nc_u32_e32 v1, s45, v138
	ds_load_b128 v[25:28], v1
	ds_load_b128 v[5:8], v1 offset:2048
	v_add_nc_u32_e32 v1, s45, v140
	ds_load_b128 v[29:32], v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v1 offset:2048
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v34, s44, v220
	v_add_nc_u32_e32 v35, s44, v215
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v234, s19 :: v_dual_add_nc_u32 v33, s44, v226
	v_dual_mov_b32 v231, s16 :: v_dual_add_nc_u32 v36, s44, v223
	v_dual_mov_b32 v233, s18 :: v_dual_mov_b32 v232, s17
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[61:64], v34
	ds_load_b128 v[200:203], v35
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v230, s15 :: v_dual_add_nc_u32 v37, s44, v221
	v_dual_mov_b32 v229, s14 :: v_dual_add_nc_u32 v38, s44, v222
	v_dual_mov_b32 v227, s12 :: v_dual_add_nc_u32 v34, s44, v219
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[251:254], v36
	ds_load_b128 v[209:212], v37
	ds_load_b128 v[190:193], v38
	ds_load_b128 v[43:46], v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v228, s13 :: v_dual_add_nc_u32 v35, s44, v224
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[56:59], v35
	ds_load_b128 v[33:36], v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[140:147], v[61:64], v[17:20], v[227:234] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[235:242], v[200:203], v[17:20], v[227:234] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[243:250], v[200:203], v[13:16], v[227:234] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[227:234], v[61:64], v[13:16], v[227:234] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[140:147], v[190:193], v[21:24], v[140:147] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[235:242], v[43:46], v[21:24], v[235:242] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[243:250], v[43:46], v[9:12], v[243:250] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[227:234], v[190:193], v[9:12], v[227:234] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[251:254], v[25:28], v[140:147] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[235:242], v[209:212], v[25:28], v[235:242] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[243:250], v[209:212], v[5:8], v[243:250] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[227:234], v[251:254], v[5:8], v[227:234] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[140:147], v[33:36], v[29:32], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[235:242], v[56:59], v[29:32], v[235:242] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[243:250], v[56:59], v[1:4], v[243:250] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[227:234], v[33:36], v[1:4], v[227:234] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v37, v237
	v_cvt_f32_i32_e32 v38, v238
	v_cvt_f32_i32_e32 v239, v239
	v_cvt_f32_i32_e32 v238, v240
	v_cvt_f32_i32_e32 v237, v241
	v_cvt_f32_i32_e32 v137, v242
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v34, v142
	v_cvt_f32_i32_e32 v33, v143
	v_cvt_f32_i32_e32 v209, v144
	v_cvt_f32_i32_e32 v210, v145
	v_cvt_f32_i32_e32 v191, v146
	v_cvt_f32_i32_e32 v200, v147
	v_cvt_f32_i32_e32 v47, v243
	v_cvt_f32_i32_e32 v49, v244
	v_cvt_f32_i32_e32 v50, v245
	v_cvt_f32_i32_e32 v51, v246
	v_cvt_f32_i32_e32 v143, v247
	v_cvt_f32_i32_e32 v144, v248
	v_cvt_f32_i32_e32 v135, v249
	v_cvt_f32_i32_e32 v138, v250
	v_cvt_f32_i32_e32 v145, v227
	v_cvt_f32_i32_e32 v146, v228
	v_cvt_f32_i32_e32 v243, v229
	v_cvt_f32_i32_e32 v244, v230
	v_cvt_f32_i32_e32 v229, v231
	v_cvt_f32_i32_e32 v230, v232
	v_cvt_f32_i32_e32 v202, v233
	v_cvt_f32_i32_e32 v201, v234
	v_cvt_f32_i32_e32 v43, v235
	v_cvt_f32_i32_e32 v44, v236
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v193, 0
	v_mov_b32_e32 v252, 0
	v_mov_b32_e32 v240, 0
	v_mov_b32_e32 v212, 0
	v_mov_b32_e32 v142, 0
	v_mov_b32_e32 v228, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v34, off offset:148
	scratch_store_b32 off, v33, off offset:144
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v33, s35, v226
	v_dual_mov_b32 v68, v200 :: v_dual_add_nc_u32 v45, s35, v224
	v_mov_b32_e32 v224, v210
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s13, s12
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[33:36], v33
	ds_load_b128 v[56:59], v45
	v_dual_mov_b32 v124, v201 :: v_dual_add_nc_u32 v45, s35, v223
	v_dual_mov_b32 v223, v209 :: v_dual_mov_b32 v142, v230
	v_mov_b32_e32 v66, v191
	ds_load_b128 v[61:64], v45
	v_add_nc_u32_e32 v45, s35, v221
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[209:212], v45
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v45, s35, v222
	v_dual_mov_b32 v235, v229 :: v_dual_mov_b32 v236, v244
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v233, s19 :: v_dual_mov_b32 v46, v217
	v_mov_b32_e32 v232, s18
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[248:251], v45
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v230, s16 :: v_dual_add_nc_u32 v45, s35, v219
	v_dual_mov_b32 v147, v202 :: v_dual_mov_b32 v226, s12
	v_mov_b32_e32 v228, s14
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[252:255], v45
	v_dual_mov_b32 v234, v243 :: v_dual_add_nc_u32 v45, s35, v220
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_mov_b32_e32 v231, s17
	v_mov_b32_e32 v229, s15
	v_mov_b32_e32 v227, s13
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[200:203], v45
	v_add_nc_u32_e32 v45, s35, v215
	v_mov_b32_e32 v65, v218
	ds_load_b128 v[190:193], v45
	v_mov_b32_e32 v45, v216
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[215:222], v[200:203], v[17:20], v[226:233] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[215:222], v[248:251], v[21:24], v[215:222] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[240:247], v[190:193], v[17:20], v[226:233] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[215:222], v[61:64], v[25:28], v[215:222] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[240:247], v[252:255], v[21:24], v[240:247] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[190:193], v[13:16], v[226:233] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[215:222], v[33:36], v[29:32], v[215:222] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[240:247], v[209:212], v[25:28], v[240:247] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[252:255], v[9:12], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v192, v218
	v_wmma_i32_16x16x16_iu8 v[240:247], v[56:59], v[29:32], v[240:247] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[209:212], v[5:8], v[17:24] neg_lo:[1,1,0]
	v_mov_b32_e32 v210, v224
	v_wmma_i32_16x16x16_iu8 v[226:233], v[200:203], v[13:16], v[226:233] neg_lo:[1,1,0]
	v_mov_b32_e32 v209, v223
	v_mov_b32_e32 v202, v147
	v_wmma_i32_16x16x16_iu8 v[17:24], v[56:59], v[1:4], v[17:24] neg_lo:[1,1,0]
	v_mov_b32_e32 v201, v124
	v_wmma_i32_16x16x16_iu8 v[226:233], v[248:251], v[9:12], v[226:233] neg_lo:[1,1,0]
	v_mov_b32_e32 v200, v68
	v_cvt_f32_i32_e32 v124, v240
	v_cvt_f32_i32_e32 v253, v244
	v_mov_b32_e32 v244, v236
	v_wmma_i32_16x16x16_iu8 v[226:233], v[61:64], v[5:8], v[226:233] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v61, v241
	v_cvt_f32_i32_e32 v62, v242
	v_cvt_f32_i32_e32 v63, v243
	v_mov_b32_e32 v243, v234
	v_wmma_i32_16x16x16_iu8 v[226:233], v[33:36], v[1:4], v[226:233] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v254, v245
	v_cvt_f32_i32_e32 v246, v246
	v_cvt_f32_i32_e32 v250, v247
	v_cvt_f32_i32_e32 v234, v215
	v_cvt_f32_i32_e32 v236, v216
	v_cvt_f32_i32_e32 v203, v217
	v_dual_mov_b32 v217, v46 :: v_dual_mov_b32 v218, v65
	v_dual_mov_b32 v191, v66 :: v_dual_mov_b32 v216, v45
	v_cvt_f32_i32_e32 v56, v219
	v_cvt_f32_i32_e32 v57, v220
	v_cvt_f32_i32_e32 v211, v221
	v_cvt_f32_i32_e32 v242, v222
	v_cvt_f32_i32_e32 v68, v17
	v_cvt_f32_i32_e32 v65, v18
	v_cvt_f32_i32_e32 v66, v19
	v_cvt_f32_i32_e32 v190, v20
	v_cvt_f32_i32_e32 v255, v21
	v_cvt_f32_i32_e32 v64, v22
	v_cvt_f32_i32_e32 v251, v23
	v_cvt_f32_i32_e32 v252, v24
	v_cvt_f32_i32_e32 v240, v226
	v_cvt_f32_i32_e32 v241, v227
	v_cvt_f32_i32_e32 v212, v228
	v_cvt_f32_i32_e32 v193, v229
	v_mov_b32_e32 v229, v235
	v_cvt_f32_i32_e32 v147, v230
	v_mov_b32_e32 v230, v142
	v_cvt_f32_i32_e32 v227, v231
	v_cvt_f32_i32_e32 v142, v232
	v_cvt_f32_i32_e32 v228, v233
.LBB0_16:
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e32 v1.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v1.h, v194.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v4.h, v139.l
	v_mov_b16_e64 v6.h, v136.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v10.h, v60.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v4.l, v1.l
	v_mov_b16_e32 v6.l, v1.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v10.l, v1.l
	v_mov_b16_e64 v11.h, v204.l
	v_mov_b16_e32 v11.l, v1.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v2, v1, v4
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v20.h, v133.l
	v_mov_b16_e32 v20.l, v1.l
	v_mov_b16_e64 v21.h, v196.l
	v_mov_b16_e32 v21.l, v1.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v2, v2, v55, v207
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s36, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v207, v2, s2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v2.h, v53.l
	v_mov_b16_e32 v2.l, v1.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v3, v1, v6
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s36, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v164.h, v1.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s12, s0, 7
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v2, v4
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v3, v52, v208
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v1, v10
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s12, s1
	s_cselect_b32 s0, -1, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v208, v5, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v4, v214, v174
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v2, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s0, s3, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v174, v5, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v23, v4, v48, v186
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v2, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v3, v187, v206
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v1, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v186, v23, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v4, v198, v184
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v2, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v206, v9, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v3, v225, v188
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v184, v6, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v4, v197, v185
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v4.h, v134.l
	v_mov_b16_e32 v4.l, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v188, v3, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	scratch_load_b32 v3, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v185, v12, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v10, v1, v4
	v_mul_f32_e32 v4, v2, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v13, v10, v42, v182
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v10.h, v199.l
	v_mov_b16_e32 v10.l, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v182, v13, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v11, v1, v10
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v15, v11, v41, v183
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v11.h, v159.l
	v_mov_b16_e32 v11.l, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v183, v15, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v14, v1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v14, v155, v180
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v14.h, v164.l
	v_mov_b16_e32 v14.l, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v180, v16, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v17, v1, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v18, v17, v54, v181
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v17, v4, v172, v178
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v2, v10
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v10, v170, s12, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v181, v18, s2
	v_cndmask_b32_e64 v17, v178, v17, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v22, v4, v67, v179
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v2, v11
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v179, v22, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v19, v4, v205, v176
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v2, v14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v176, v19, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v25, v4, v213, v177
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v1, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v177, v25, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v14, v4, v40, v115
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v1, v21
	v_mul_f32_e32 v21, v2, v21
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v26, v4, v39, v175
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v4, v171, s12, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s12, s12, s34
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v21, v21, v149, v114
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v11, v169, s12, 1
	v_add_lshl_u32 v24, v168, s12, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	s_clause 0x1
	buffer_load_u16 v27, v4, s[8:11], 0 offen
	buffer_load_u16 v28, v10, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v10, v166, s12, 1
	v_cndmask_b32_e64 v4, 0x80000000, v11, s0
	v_add_lshl_u32 v11, v167, s12, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s10, s12, s22
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v31, s10, v163, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	s_clause 0x3
	buffer_load_u16 v29, v4, s[24:27], 0 offen
	buffer_load_u16 v30, v10, s[24:27], 0 offen
	buffer_load_u16 v32, v11, s[24:27], 0 offen
	buffer_load_u16 v34, v24, s[24:27], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v4, s10, v165, 1
	v_add_lshl_u32 v10, s10, v160, 1
	v_add_lshl_u32 v11, s10, v161, 1
	v_add_lshl_u32 v24, s10, v162, 1
	v_cndmask_b32_e64 v31, 0x80000000, v31, s0
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	s_clause 0x4
	buffer_load_u16 v35, v4, s[24:27], 0 offen
	buffer_load_u16 v40, v10, s[24:27], 0 offen
	buffer_load_u16 v42, v11, s[24:27], 0 offen
	buffer_load_u16 v45, v24, s[24:27], 0 offen
	buffer_load_u16 v46, v31, s[24:27], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v10, 1, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v23, v151, s12, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v36, s10, v156, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v24, v152, s12, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v39, s10, v157, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v31, v153, s12, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v41, s10, v158, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v33, v154, s12, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v53, 0x80000000, v36, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v175, v26, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v54, 0x80000000, v39, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v31, 0x80000000, v31, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v55, 0x80000000, v41, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v33, 0x80000000, v33, s0
	s_clause 0x6
	buffer_load_u16 v39, v23, s[24:27], 0 offen
	buffer_load_u16 v36, v24, s[24:27], 0 offen
	buffer_load_u16 v24, v31, s[24:27], 0 offen
	buffer_load_u16 v23, v33, s[24:27], 0 offen
	buffer_load_u16 v41, v53, s[24:27], 0 offen
	buffer_load_u16 v31, v54, s[24:27], 0 offen
	buffer_load_u16 v33, v55, s[24:27], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.h, v1.l
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v4, s23, v150
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v158.h, v1.l
	v_mov_b16_e64 v166.h, v1.l
	v_mov_b16_e64 v160.h, v1.l
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v20, v2, v20
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s11, s33, s23
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v157.h, v1.l
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s11, s11, s22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v162.h, v1.l
	v_mov_b16_e64 v156.h, v1.l
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v114, v21, s2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v5, 16, v27
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v27, 16, v30
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v30, 16, v35
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v35, 16, v45
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v6, 16, v28
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v67, v6, v35 :: v_dual_and_b32 v10, 56, v10
	v_dual_mul_f32 v35, v5, v35 :: v_dual_lshlrev_b32 v26, 16, v29
	v_mul_f32_e32 v55, v6, v30
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v29, 16, v34
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v34, 16, v42
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v28, 16, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v42, v6, v27
	v_mul_f32_e32 v45, v6, v26
	v_mul_f32_e32 v26, v5, v26
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v133, v6, v34
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v53, v6, v28
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v42, v42, v49, v9
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v49, v55, v68, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v26, v26, v43, v59
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v27, v5, v27
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v43, v53, v50, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v9, v42, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v45, v45, v47, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v59, v26, s3
	v_cndmask_b32_e64 v59, v8, v49, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v32, 16, v40
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v40, 16, v46
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v46, v6, v29
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v27, v27, v44, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v48, v45, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v54, v6, v32 :: v_dual_mul_f32 v29, v5, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v44, v46, v51, v13
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v35, v35, v63, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v12, v27, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v51, v54, v65, v7
	v_fma_f32 v54, v67, v190, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v29, v29, v38, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v13, v44, s3
	v_cndmask_b32_e64 v44, v18, v35, s3
	v_cndmask_b32_e64 v51, v7, v51, s3
	v_cndmask_b32_e64 v48, v15, v54, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v30, v5, v30 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v59
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v53, v133, v66, v60
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v22, v29, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v8, 0xbfb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v30, v30, v124, v58
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v60, v53, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v58, v30, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v7, 0, 0x42800000, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v20, v20, v189, v113
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v9, 0xbfb8aa3b, v49
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v59
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v113, v20, s2
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v9
	v_exp_f32_e32 v7, v7
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v24, 16, v24
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v9, 0, 0x42800000, s5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v28, v5, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v28, v28, v37, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v16, v43, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v9, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v19, v28, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v19
	v_ldexp_f32 v9, v9, v27
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v5, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, s8
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s8
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v32, v32, v61, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v52, v32, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v19, v19
	v_dual_mul_f32 v15, 0xbfb8aa3b, v52 :: v_dual_mul_f32 v34, v5, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v15
	v_ldexp_f32 v19, v19, v30
	v_mul_f32_e32 v16, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v34, v34, v62, v17
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v15, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v63, 1.0, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v16
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s4
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v17, v34, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v52
	v_mul_f32_e32 v17, 0xbfb8aa3b, v48
	v_cndmask_b32_e64 v16, 0, 0x42800000, s7
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v15, v15
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v45
	v_cndmask_b32_e64 v17, 0, 0x42800000, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s6
	v_ldexp_f32 v15, v15, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v48
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v29
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v60, 1.0, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v17, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v26, null, v60, v60, v45
	v_div_scale_f32 v27, s4, v45, v60, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v134, v6, v40 :: v_dual_add_f32 v61, 1.0, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v68, v26
	v_div_scale_f32 v28, null, v63, v63, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v55, v134, v64, v25
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v40, v5, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v124, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v25, v55, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s1
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v151, -v26, v68, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v55, 1.0, v9
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v40, v40, v254, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v7, v7, v25
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v68, v151, v68
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v58, 1.0, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, s6, v48, v61, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v53, 1.0, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v153, v27, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_scale_f32 v16, null, v58, v58, v52
	v_div_scale_f32 v17, s8, v52, v58, v52
	v_div_scale_f32 v9, null, v53, v53, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v65, v16
	v_div_scale_f32 v19, s7, v49, v55, v49
	v_rcp_f32_e32 v30, v9
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v21, v40, s3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v136, -v16, v65, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v134, -v9, v30, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v65, v136, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v30, v134, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v18, 0, 0x42800000, s9
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v15, s9, v59, v53, v59
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v43
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v18, v18, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, s1, v44, v63, v44
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v62, 1.0, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v18, null, v55, v55, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v64, null, v62, v62, v43
	v_rcp_f32_e32 v66, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v133, v64
	v_fma_f32 v139, -v18, v66, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v134, -v64, v133, 1.0
	v_fmac_f32_e32 v66, v139, v66
	v_mul_f32_e32 v139, v15, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v133, v134, v133
	v_mul_f32_e32 v134, v17, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v8, v8, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v22, null, v61, v61, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v22
	v_fma_f32 v150, -v22, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v67, v150, v67
	v_fma_f32 v150, -v9, v139, v15
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v54, 1.0, v8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v152, v25, v67 :: v_dual_fmac_f32 v139, v150, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v7, null, v54, v54, v51
	v_div_scale_f32 v8, vcc_lo, v51, v54, v51
	v_mul_f32_e32 v150, v19, v66
	v_rcp_f32_e32 v29, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v7, v29, 1.0
	v_fmac_f32_e32 v29, v34, v29
	v_fma_f32 v34, -v28, v124, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v136, v8, v29
	v_fmac_f32_e32 v124, v34, v124
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v7, v136, v8
	v_fmac_f32_e32 v136, v34, v29
	.loc	1 370 31 is_stmt 1              ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v34, s10, v129, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v7, -v7, v136, v8
	v_fma_f32 v8, -v9, v139, v15
	v_fma_f32 v9, -v18, v150, v19
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v15, v117, s12, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v117, s10, v131, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v136, v7, v29, v136
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v7, -v16, v134, v17
	v_div_fmas_f32 v139, v8, v30, v139
	v_fma_f32 v8, -v22, v152, v25
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v150, v9, v66
	v_fmac_f32_e32 v134, v7, v65
	v_div_fixup_f32 v53, v139, v53, v59
	v_fmac_f32_e32 v152, v8, v67
	v_fma_f32 v7, -v26, v153, v27
	v_fma_f32 v161, -v18, v150, v19
	v_fma_f32 v159, -v16, v134, v17
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v47, v47, v53 :: v_dual_mul_f32 v154, v32, v124
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v163, -v22, v152, v25
	v_div_fixup_f32 v51, v136, v54, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v65, v159, v65, v134
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v9, -v28, v154, v32
	v_div_fmas_f32 v54, v161, v66, v150
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v52, v65, v58, v52
	v_div_fmas_f32 v59, v163, v67, v152
	s_mov_b32 vcc_lo, s4
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v50, v50, v51
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v158.l, v47.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v46, v46, v52
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v154, v9, v124
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v9, v116, s12, 1
	v_add_lshl_u32 v16, v118, s12, 1
	v_add_lshl_u32 v17, v119, s12, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v46.h
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v18, v120, s12, 1
	v_add_lshl_u32 v19, v121, s12, 1
	v_add_lshl_u32 v22, v122, s12, 1
	v_add_lshl_u32 v25, v123, s12, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v11, 1, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v153, v7, v68
	v_div_scale_f32 v151, s5, v43, v62, v43
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v29, s10, v127, 1
	v_add_lshl_u32 v30, s10, v128, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v165, -v26, v153, v27
	v_mul_f32_e32 v155, v151, v133
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v26, s10, v125, 1
	v_add_lshl_u32 v27, s10, v126, 1
	v_add_lshl_u32 v116, s10, v130, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v51, v165, v68, v153
	v_fma_f32 v8, -v64, v155, v151
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v118, s10, v132, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v119, -v28, v154, v32
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v7, s11, v10, 64
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v45, v51, v60, v45
	v_fmac_f32_e32 v155, v8, v133
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v8, s11, v10
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	v_cndmask_b32_e64 v10, 0x80000000, v15, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v37, v37, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v45, 1, v158
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v15, 0x80000000, v16, s0
	v_cndmask_b32_e64 v16, 0x80000000, v17, s0
	v_cndmask_b32_e64 v17, 0x80000000, v18, s0
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	v_cndmask_b32_e64 v28, 0x80000000, v25, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v32, 0x80000000, v26, s0
	v_cndmask_b32_e64 v27, 0x80000000, v27, s0
	v_cndmask_b32_e64 v120, 0x80000000, v29, s0
	v_cndmask_b32_e64 v121, 0x80000000, v30, s0
	v_cndmask_b32_e64 v122, 0x80000000, v34, s0
	v_cndmask_b32_e64 v116, 0x80000000, v116, s0
	v_cndmask_b32_e64 v117, 0x80000000, v117, s0
	v_cndmask_b32_e64 v118, 0x80000000, v118, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v64, -v64, v155, v151
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v47, v47
	v_add3_u32 v45, v47, v45, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v46, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v53, v119, v124, v154
	s_mov_b32 vcc_lo, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v46, v46, v11, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v52, v64, v133, v155
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v11.l, 0x7fff, v45.h, s0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v45, v6, v41
	v_mul_f32_e32 v41, v5, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v48, v59, v61, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v157.l, v50.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v44, v53, v63, v44
	v_div_fixup_f32 v43, v52, v62, v43
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v40, v41, v253, v20
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v38, v38, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v13, v13, v44 :: v_dual_mul_f32 v12, v12, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v20, v40, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v48, 1, v157
	v_mov_b16_e64 v164.l, v38.h
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e64 v160.l, v13.h
	v_mov_b16_e64 v162.l, v12.h
	v_cmp_o_f32_e64 s5, v13, v13
	v_add3_u32 v43, v50, v48, 0x7fff
	v_and_b32_e32 v47, 1, v164
	v_cmp_o_f32_e64 s6, v12, v12
	v_and_b32_e32 v48, 1, v162
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v50, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v11.h, 0x7fff, v43.h, vcc_lo
	v_and_b32_e32 v43, 1, v160
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v49, v54, v55, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v166.l, v37.h
	v_cmp_o_f32_e64 s0, v37, v37
	v_add3_u32 v13, v13, v43, 0x7fff
	v_add3_u32 v43, v12, v48, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v42, v42, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v12.h, 0x7fff, v46.h, s1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v62, v6, v39 :: v_dual_and_b32 v49, 1, v166
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.l, 0x7fff, v43.h, s6
	v_add3_u32 v43, v38, v47, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v115, v14, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v156.l, v42.h
	v_cmp_o_f32_e64 s4, v42, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v14.h, 0x7fff, v43.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v43, v45, v255, v38
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v45, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v44, 1, v156
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v45.h, v195.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v39, v5, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v38, v43, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s5
	v_add3_u32 v42, v42, v44, 0x7fff
	v_add3_u32 v44, v37, v49, 0x7fff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v37.l, v1.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v46, 0xbfb8aa3b, v38 :: v_dual_mul_f32 v49, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v12.l, 0x7fff, v42.h, s4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v42, 0xbfb8aa3b, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v14.l, 0x7fff, v44.h, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v44, off, off offset:244
	scratch_load_b32 v65, off, off offset:216
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v42
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v30, v9, s[24:27], 0 offen
	buffer_load_u16 v29, v10, s[24:27], 0 offen
	buffer_load_u16 v26, v15, s[24:27], 0 offen
	buffer_load_u16 v25, v16, s[24:27], 0 offen
	buffer_load_u16 v18, v17, s[24:27], 0 offen
	buffer_load_u16 v17, v19, s[24:27], 0 offen
	buffer_load_u16 v10, v22, s[24:27], 0 offen
	buffer_load_u16 v9, v28, s[24:27], 0 offen
	buffer_load_u16 v32, v32, s[24:27], 0 offen
	buffer_load_u16 v34, v27, s[24:27], 0 offen
	buffer_load_u16 v27, v120, s[24:27], 0 offen
	buffer_load_u16 v28, v121, s[24:27], 0 offen
	buffer_load_u16 v19, v122, s[24:27], 0 offen
	buffer_load_u16 v22, v116, s[24:27], 0 offen
	buffer_load_u16 v15, v117, s[24:27], 0 offen
	buffer_load_u16 v16, v118, s[24:27], 0 offen
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v42, 0, 0x42800000, s1
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v47, 0, 0x42800000, s1
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v47, v47
	v_ldexp_f32 v47, v47, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v54, null, v47, v47, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v59, v54
	v_fma_f32 v63, -v54, v59, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v59, v63, v59 :: v_dual_lshlrev_b32 v36, 16, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v63, s4, v21, v47, v21
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v61, v6, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v42, v42
	v_ldexp_f32 v42, v42, v43
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v38
	v_exp_f32_e32 v40, v43
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v37.h, v45.l
	v_mov_b16_e32 v45.l, v1.l
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v48, v1, v37
	v_mul_f32_e32 v46, v1, v45
	v_mul_f32_e32 v37, v2, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v42, v42, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v48, v48, v50, v111
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v43, v41
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v45, v2, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v111, v48, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v40, v40, v50
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v52, vcc_lo, v35, v42, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v20
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v50, -v41, v43, 1.0
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v46, v46, v173, v112
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v34, 16, v34
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v49, v49
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v43, v50, v43
	v_div_scale_f32 v50, null, v40, v40, v38
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v112, v46, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v53, v50
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v49, v49, v51
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v51, v52, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v41, v51, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v58, -v50, v53, 1.0
	v_div_scale_f32 v60, null, v49, v49, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v55, v43
	v_fmac_f32_e32 v53, v58, v53
	v_div_scale_f32 v55, s1, v38, v40, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v58, v60
	v_fma_f32 v41, -v41, v51, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v52, v55, v53
	v_div_fmas_f32 v41, v41, v43, v51
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v43, -v50, v52, v55
	v_fma_f32 v51, -v60, v58, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v35, v41, v42, v35
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v41.h, v1.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v52, v43, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v43, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v58, v51, v58
	v_div_scale_f32 v51, s5, v20, v49, v20
	v_fma_f32 v50, -v50, v52, v55
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v42.l, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v64, v51, v58
	v_div_fmas_f32 v50, v50, v53, v52
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v38, v50, v40, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.h, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v43, v45, v43, v110
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v45, v63, v59
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v110, v43, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v54, v45, v63
	v_dual_fmac_f32 v45, v55, v59 :: v_dual_mul_f32 v36, v5, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v54, v45, v63
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v36, v36, v238, v43
	scratch_load_b32 v63, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v45, v52, v59, v45
	s_mov_b32 vcc_lo, s5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v43, v36, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v52, v61, v144, v46
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v43.l, v1.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v21, v45, v47, v21
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v45, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v37, v37, v65, v109
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v65, -v60, v64, v51
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v43.h, v44.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v21, v36, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v46, v52, s3
	v_cndmask_b32_e64 v37, v109, v37, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v64, v65, v58
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v44, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v39, v39, v239, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v60, v64, v51
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v60, v6, v24
	v_dual_mul_f32 v59, v6, v23 :: v_dual_mul_f32 v24, v5, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v37, v39, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v51, v51, v58, v64
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v39, v62, v143, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v23, v5, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v20, v51, v49, v20
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v37, v37, v20
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v48, v39, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v21.h
	v_mov_b16_e32 v39.h, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v48, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.l, v37.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v38, v20, v38
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v20, v1, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v40, 1, v40
	v_mov_b16_e32 v41.l, v38.h
	v_cmp_o_f32_e64 s0, v38, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v39, v21, v39, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v21, v36, v35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v35, v20, v148, v108
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v36, v37, v40, 0x7fff
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v40, v6, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v20.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_and_b32_e32 v37, 1, v41
	v_mov_b16_e32 v39.l, v21.h
	v_mov_b16_e32 v39.h, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v108, v35, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v20.l, 0x7fff, v36.h, vcc_lo
	v_add3_u32 v36, v38, v37, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v37, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v39, 1, v39
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v38.l, v1.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v33, v5, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v39, v21, v39, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v36.h, s0
	v_cndmask_b16 v21.h, 0x7fff, v39.h, vcc_lo
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v42.h, v44.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v41, v1, v42
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v37, v41, v37, v107
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v41, v6, v31
	v_mul_f32_e32 v31, v5, v31
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v40, v40, v252, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v107, v37, s2
	v_cndmask_b32_e64 v35, v35, v40, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v39, v41, v251, v37
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v41, v2, v43
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v43, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v37, v39, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v39, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v40, 0, 0x42800000, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v38.h, v43.l
	v_mov_b16_e32 v43.l, v1.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v46, v1, v38
	v_mul_f32_e32 v38, v2, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v46, v46, v48, v103
	scratch_load_b32 v48, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v39, v41, v39, v106
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v41, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v103, v46, s2
	v_cndmask_b32_e64 v39, v106, v39, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v33, v33, v250, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v39, v33, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v35
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v43.h, v41.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v41, v2, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v41, v41, v45, v105
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v33
	v_exp_f32_e32 v40, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v105, v41, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v45
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v31, v31, v246, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0x42800000, s1
	v_ldexp_f32 v40, v40, v42
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v44, v1, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v41, v31, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v45, 0xbfb8aa3b, v33 :: v_dual_add_f32 v40, 1.0, v40
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v44, v44, v48, v104
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v31
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v39, null, v40, v40, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v41, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	v_exp_f32_e32 v45, v45
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v42, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s1
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v104, v44, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_ldexp_f32 v41, v41, v48
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v45, v45, v49
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v39, v42, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v47, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v50, vcc_lo, v35, v40, v35
	v_fmac_f32_e32 v42, v48, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_scale_f32 v48, null, v41, v41, v37
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v51, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v47, v47, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v52, null, v45, v45, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v55, v52
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v54, -v48, v51, 1.0
	v_div_scale_f32 v58, null, v47, v47, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v54, v51
	v_mul_f32_e32 v49, v50, v42
	v_rcp_f32_e32 v54, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v61, -v52, v55, 1.0
	v_fma_f32 v53, -v39, v49, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v55, v61, v55
	v_div_scale_f32 v61, s4, v33, v45, v33
	v_fmac_f32_e32 v49, v53, v42
	v_div_scale_f32 v53, s1, v37, v41, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v49, v50
	v_div_fmas_f32 v39, v39, v42, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v49, -v58, v54, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v35, v39, v40, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v54, v49, v54
	v_div_scale_f32 v49, s5, v31, v47, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.h, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v40.l, v1.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v62, v49, v54
	v_mul_f32_e32 v50, v53, v51
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v43, v2, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v48, v50, v53
	v_fmac_f32_e32 v50, v42, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v42, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v48, v50, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v48, v48, v51, v50
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v36, v48, v41, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.h, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v41.l, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v42, v43, v42, v102
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v43, v61, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v102, v42, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v53, -v52, v43, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v23, v23, v137, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v43, v53, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v42, v23, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v50, -v52, v43, v61
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v42, off, off offset:212
	scratch_load_b32 v61, off, off offset:108
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v43, v50, v55, v43
	s_mov_b32 vcc_lo, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v50, v59, v138, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v43, v45, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v43, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v38, v38, v63, v101
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v63, -v58, v62, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v101, v38, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v62, v63, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v24, v24, v237, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v49, -v58, v62, v49
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v58, v6, v30
	v_mul_f32_e32 v30, v5, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v38, v24, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v49, v49, v54, v62
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v38, v60, v135, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v31, v49, v47, v31
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v23, v23, v33
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v44, v50, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v24, v24, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, v23.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v46, v38, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.h, v1.l
	v_mov_b16_e32 v38.l, v24.h
	v_and_b32_e32 v37, 1, v37
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v33, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v46, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v37, v23, v37, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v23, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, v33.h
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v41.h, v42.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v31, v31, v36
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v42, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v36, v1, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v31.h
	v_cmp_o_f32_e64 s0, v31, v31
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v35, v36, v23, v100
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v36, v24, v38, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_and_b32_e32 v24, 1, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v100, v35, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v38, v6, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.h, v1.l
	v_cndmask_b16 v23.l, 0x7fff, v36.h, vcc_lo
	v_add3_u32 v36, v31, v24, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v24, off, off offset:172 ; 4-byte Folded Reload
	v_fma_f32 v38, v38, v241, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v31.l, v1.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v5, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v35, v38, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v38
	v_cndmask_b32_e64 v38, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v38, 0xbfb8aa3b, v35 :: v_dual_and_b32 v37, 1, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v33, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v38, v38
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v40.h, v42.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v39, v1, v40
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v24, v39, v24, v99
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v39, v6, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v99, v24, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.h, 0x7fff, v37.h, vcc_lo
	v_cndmask_b16 v24.l, 0x7fff, v36.h, s0
	v_mov_b16_e32 v36.h, v1.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v37, v39, v240, v33
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v39, v2, v41
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v41, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v37, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v37, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v42, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v31.h, v41.l
	v_mov_b16_e32 v41.l, v1.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v44, v1, v31
	v_mul_f32_e32 v31, v2, v31
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v44, v44, v46, v95
	scratch_load_b32 v46, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v37, v39, v37, v98
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v39, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v31, v31, v61, v93
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v95, v44, s2
	v_cndmask_b32_e64 v37, v98, v37, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v31, v93, v31, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v34, v34, v236, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v30, v30, v140, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v37, v34, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v5, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v31, v30, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v41.h, v39.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v39, v2, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v42, v1, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v39, v39, v43, v97
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v34
	v_ldexp_f32 v38, v38, v40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v42, v42, v46, v96
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v97, v39, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v43
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v41, v2, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v96, v42, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v32, v32, v234, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, s1
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v33
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v39, v32, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v34
	v_exp_f32_e32 v39, v40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v37, null, v38, v38, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v40, v37
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v39, v39, v46
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v43, v43, v47
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v46, -v37, v40, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, vcc_lo, v35, v38, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v45, v45
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v40, v46, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_scale_f32 v46, null, v39, v39, v33
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v49, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v50, null, v43, v43, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v45, v45, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v47, v48, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v53, v50
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v45, 1.0, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v37, v47, v48
	v_fma_f32 v52, -v46, v49, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v54, null, v45, v45, v32
	v_fmac_f32_e32 v49, v52, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v51, v40
	v_div_scale_f32 v51, s1, v33, v39, v33
	v_rcp_f32_e32 v52, v54
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v50, v53, 1.0
	v_fma_f32 v37, -v37, v47, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v48, v51, v49
	v_fmac_f32_e32 v53, v59, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v40, v47
	v_fma_f32 v40, -v46, v48, v51
	v_div_scale_f32 v59, s4, v34, v43, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v54, v52, 1.0
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v48, v40, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v40, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v52, v47, v52
	v_div_scale_f32 v47, s5, v32, v45, v32
	v_fma_f32 v46, -v46, v48, v51
	v_div_fixup_f32 v35, v37, v38, v35
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v38.l, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v60, v47, v52
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.h, v1.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v46, v46, v49, v48
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v61, -v54, v60, v47
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v55, v6, v29
	v_mul_f32_e32 v29, v5, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v60, v61, v52
	v_fma_f32 v47, -v54, v60, v47
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v40, v41, v40, v94
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v41, v59, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v94, v40, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v50, v41, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v29, v29, v141, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v41, v51, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v40, v29, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v50, v41, v59
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v40, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v41, v48, v53, v41
	s_mov_b32 vcc_lo, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v48, v55, v146, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v47, v47, v52, v60
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v52, 16, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v34, v41, v43, v34
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v43.l, v1.l
	v_lshlrev_b32_e32 v49, 16, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v31, v47, v45, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v32, v58, v145, v44
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v29, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v42, v48, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v42.l, v1.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v30, v30, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v44, v32, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v32, v46, v39, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v29.h
	v_mov_b16_e32 v33.h, v1.l
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_mov_b16_e32 v36.l, v30.h
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v39.l, v1.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v31, v31, v32
	v_dual_mul_f32 v34, v34, v35 :: v_dual_and_b32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v36, 1, v36
	v_mov_b16_e32 v37.l, v31.h
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v33, v29, v33, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v29, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v35, v30, v36, 0x7fff
	v_mov_b16_e32 v33.l, v34.h
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v39.h, v40.l
	scratch_load_b32 v40, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v1, v39
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v29, v32, v29, v92
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v32, 16, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v28.h, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_mov_b16_e32 v33.h, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v92, v29, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v36, v6, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v37
	v_cndmask_b16 v28.l, 0x7fff, v35.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v35, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v33, 1, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v36, v36, v193, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v5, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v31, v30, 0x7fff
	v_add3_u32 v33, v34, v33, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v36, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v31, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v36, 0xbfb8aa3b, v29
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v36
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v38.h, v40.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v40, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v37, v1, v38
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v35, v37, v35, v91
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v37, 16, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v27.h, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v27.l, 0x7fff, v30.h, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v91, v35, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v36, v6, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, s1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v31, v36, v212, v34
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v36, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v34, v31, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v34, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v35, v35
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v42.h, v36.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v33, v2, v39
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v39, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v33, v33, v34, v90
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v34, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v35, v35, v36
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v37, v5, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v90, v33, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v43.h, v34.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v2, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v34, v34, v39, v89
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v38, v32, v192, v33
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v35
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v39, v1, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v89, v34, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v38, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v38, v1, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v44, null, v32, v32, v29
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v35, v37, v203, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v38, v38, v40, v87
	scratch_load_b32 v40, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v45, v44
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v31
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v37
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v34, v35, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v42, v2, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v36, v36
	v_cndmask_b32_e64 v37, 0, 0x42800000, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v46, -v44, v45, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v45, v46, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v34
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v39, v39, v40, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v88, v39, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v39, v36, v40
	v_exp_f32_e32 v40, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v87, v38, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v38, v40, v38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, vcc_lo, v29, v32, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v50, v47, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v51, null, v38, v38, v33
	v_fma_f32 v25, -v44, v50, v47
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v39, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v53, v51
	v_fmac_f32_e32 v50, v25, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v46, null, v37, v37, v31
	v_div_scale_f32 v55, s4, v31, v37, v31
	v_fma_f32 v25, -v44, v50, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v48, v46
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v26, v39, v40
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v40, v6, v52
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v51, v53, 1.0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v5, v52
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v40, v40, v244, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v53, v47, v53
	v_div_scale_f32 v47, s5, v33, v38, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v46, v48, 1.0
	v_div_scale_f32 v54, null, v26, v26, v34
	v_dual_fmac_f32 v48, v39, v48 :: v_dual_mul_f32 v39, v6, v49
	v_div_fmas_f32 v25, v25, v45, v50
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v54
	v_dual_mul_f32 v44, v55, v48 :: v_dual_mul_f32 v49, v5, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v25, v25, v32, v29
	v_fma_f32 v45, -v46, v44, v55
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v43, v2, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v50, -v54, v41, 1.0
	v_fmac_f32_e32 v44, v45, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v45, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v41, v50, v41
	v_fma_f32 v46, -v46, v44, v55
	v_div_scale_f32 v50, s1, v34, v26, v34
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v44, v46, v48, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v46, off, off offset:148
	scratch_load_b32 v48, off, off offset:144
	scratch_load_b32 v59, off, off offset:76
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v31, v44, v37, v31
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v37.l, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v43, v43, v45, v86
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v45, v47, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v86, v43, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v51, v45, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v55, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v48, v52, v48, v43
	s_waitcnt vmcnt(0)
	v_fma_f32 v42, v42, v59, v85
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v51, v45, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v43, v48, s3
	v_cndmask_b32_e64 v42, v85, v42, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v45, v47, v53, v45
	s_mov_b32 vcc_lo, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v46, v49, v46, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v45, v38, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v42, v46, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v30, v43, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v35, v40, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.h, v1.l
	v_mov_b16_e32 v35.l, v30.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v58, v50, v41 :: v_dual_and_b32 v35, 1, v35
	v_fma_f32 v59, -v54, v58, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, v59, v41
	v_fma_f32 v49, -v54, v58, v50
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v50, v6, v17
	v_mul_f32_e32 v17, v5, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v41, v49, v41, v58
	v_div_fixup_f32 v26, v41, v26, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v34, v39, v243, v36
	scratch_load_b32 v41, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v26, v38, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v36, v34, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.h, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v38, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.l, v26.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v34, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v31, 1, v36
	v_add3_u32 v34, v30, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_mov_b16_e32 v35.l, v29.h
	v_mov_b16_e32 v35.h, v1.l
	v_add3_u32 v30, v26, v31, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v31, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v33, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.h, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v36.l, v1.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v29, v29
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v37.h, v38.l
	scratch_load_b32 v38, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v1, v37
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v31, v32, v31, v84
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v32, 16, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.h, 0x7fff, v34.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_and_b32_e32 v26, 1, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v84, v31, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v6, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v25.h
	v_cndmask_b16 v22.l, 0x7fff, v30.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v26, v29, v26, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v34, v34, v227, v31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v26.l, v1.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v34, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v34, 0xbfb8aa3b, v31 :: v_dual_and_b32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v25, v33, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v33, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v25, 16, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v19.l, 0x7fff, v26.h, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v19.h, 0x7fff, v30.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v6, v25
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v36.h, v38.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v38, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v35, v1, v36
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v33, v35, v33, v83
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v35, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v83, v33, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, s1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v30, v34, v147, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v33, 0xbfb8aa3b, v31 :: v_dual_mul_f32 v34, v2, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v30, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v30, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v33, v33
	v_mul_f32_e32 v37, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v26.h, v35.l
	v_mov_b16_e32 v35.l, v1.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v39, v1, v26
	v_mul_f32_e32 v26, v2, v26
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v39, v39, v41, v79
	scratch_load_b32 v41, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v30, v34, v30, v82
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v34, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v79, v39, s2
	v_cndmask_b32_e64 v30, v82, v30, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v35.h, v34.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v2, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v34, v34, v38, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v33, v36
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v5, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v37, v1, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v81, v34, s2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v32, v32, v57, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v29
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v37, v37, v41, v80
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v35, v2, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v32, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v25, v5, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v33, v33, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v80, v37, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v30
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v25, v25, v56, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v34, v25, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v36
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v36, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v38, 0, 0x42800000, s0
	v_mul_f32_e32 v40, 0xbfb8aa3b, v25
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v30
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v34, v34, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v32, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v38, v38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v36, v41, v36
	v_div_scale_f32 v41, null, v34, v34, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v38, v38, v42
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v44, v41
	v_div_scale_f32 v43, vcc_lo, v31, v33, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v41, v44, 1.0
	v_fmac_f32_e32 v44, v47, v44
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v40, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v51, v6, v18
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v40, v40, v42
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v42, v43, v36
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v40, 1.0, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v46, -v32, v42, v43
	v_div_scale_f32 v49, null, v40, v40, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v46, v36
	v_div_scale_f32 v46, s0, v29, v34, v29
	v_rcp_f32_e32 v47, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v32, v42, v43
	v_mul_f32_e32 v43, v46, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v36, v42
	v_fma_f32 v36, -v41, v43, v46
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v42, -v49, v47, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v31, v32, v33, v31
	v_fmac_f32_e32 v43, v36, v44
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v36, off, off offset:16
	scratch_load_b32 v33, off, off offset:56
	scratch_load_b32 v54, off, off offset:12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v47, v42, v47
	v_div_scale_f32 v45, null, v38, v38, v30
	v_div_scale_f32 v42, s4, v25, v40, v25
	v_fma_f32 v41, -v41, v43, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v45
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v18, v5, v18 :: v_dual_mul_f32 v53, v42, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v33.h, v1.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v52, -v45, v48, 1.0
	v_fmac_f32_e32 v48, v52, v48
	v_div_scale_f32 v52, s1, v30, v38, v30
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v35, v35, v36, v78
	s_waitcnt vmcnt(0)
	v_fma_f32 v26, v26, v54, v77
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v54, -v49, v53, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v78, v35, s2
	v_cndmask_b32_e64 v26, v77, v26, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v53, v54, v47
	v_div_fmas_f32 v41, v41, v44, v43
	s_mov_b32 vcc_lo, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v17, v17, v210, v35
	v_fma_f32 v18, v18, v209, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v49, v53, v42
	v_div_fixup_f32 v29, v41, v34, v29
	v_mul_f32_e32 v36, v52, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v35, v17, s3
	v_cndmask_b32_e64 v18, v26, v18, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v34.l, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v46, -v45, v36, v52
	v_fmac_f32_e32 v36, v46, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v45, v36, v52
	v_div_fmas_f32 v36, v43, v48, v36
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v35, v42, v47, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v30, v36, v38, v30
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v38, v51, v229, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v25, v35, v40, v25
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v35, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v17, v17, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v39, v38, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:4
	scratch_load_b32 v40, off, off
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v18, v18, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.l, v17.h
	v_mov_b16_e32 v25.h, v1.l
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v30, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v25, 1, v25
	v_add3_u32 v25, v17, v25, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v17, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v35.h, v1.l
	v_cndmask_b16 v25.h, 0x7fff, v25.h, vcc_lo
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v34.h, v35.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.l, v18.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v1, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v35
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v2, v34
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v17, v32, v17, v76
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v32.l, v1.l
	v_mov_b16_e32 v32.h, v33.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v76, v17, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v35, v1, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v36, v50, v230, v37
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v2, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v37, v36, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v37, off, off offset:40 ; 4-byte Folded Reload
	v_mov_b16_e32 v36.l, v1.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v32, v32, v39, v73
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v26, v26, v31
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v31, v6, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v73, v32, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v26.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v31, v31, v228, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v26, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v17, v31, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v31, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v36.h, v37.l
	scratch_load_b32 v37, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v3, s23, v3
	s_mov_b32 s23, 0x31027000
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v31, v35, v31, v75
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v35, v6, v15
	v_mul_f32_e32 v15, v5, v15
	v_mul_f32_e32 v16, v5, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v75, v31, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v15, v15, v211, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v35, v35, v142, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v32, v15, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v31, v31, v35, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v35, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v31
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v34, v34, v35, v74
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v35, v1, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v18, v30, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_mov_b16_e32 v18.l, v29.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v74, v34, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.h, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v35, v35, v40, v72
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v25.l, 0x7fff, v30.h, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v36, v2, v36
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v16, v242, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v72, v35, s2
	v_cndmask_b32_e64 v16, v34, v16, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v33, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v39, 0xbfb8aa3b, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v26, v30, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v26.h, v37.l
	v_mov_b16_e32 v26.l, v1.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v39
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v39, 0, 0x42800000, s1
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s1
	v_dual_fmac_f32 v33, 0xbfb8aa3b, v17 :: v_dual_mul_f32 v2, v2, v26
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v33, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v2, v216, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v39, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v69, v2, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v33, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v39, v39, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v29, v18, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v39, 1.0, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v33, v33, v17
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v32, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, null, v39, v39, v16
	v_rcp_f32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v49, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v32, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v34, v37, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v45, v49, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v40, 0xbfb8aa3b, v15 :: v_dual_fmac_f32 v37, v41, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v32, v32, v31
	v_fmac_f32_e32 v49, v51, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v51, s4, v16, v39, v16
	v_rcp_f32_e32 v44, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, vcc_lo, v17, v33, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v41, v44, 1.0
	v_fmac_f32_e32 v44, v48, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v40, v40
	v_ldexp_f32 v40, v40, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v42, v43, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v34, v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v50, null, v40, v40, v15
	v_fmac_f32_e32 v42, v47, v37
	v_div_scale_f32 v47, s1, v31, v32, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v50
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v38, v1, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v34, v42, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v43, v47, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v26, v36, v217, v70
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v36, v51, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v38, v38, v218, v71
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v34, v34, v37, v42
	v_fma_f32 v37, -v41, v43, v47
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v42, -v50, v48, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v70, v26, s2
	v_cndmask_b32_e64 v38, v71, v38, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v43, v37, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v1.h, 0x7fff, v30.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v48, v42, v48
	v_div_scale_f32 v42, s5, v15, v40, v15
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v41, v43, v47
	v_fma_f32 v47, -v45, v36, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v37, v42, v48 :: v_dual_fmac_f32 v36, v47, v49
	v_fma_f32 v52, -v50, v37, v42
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v46, v6, v10
	v_mul_f32_e32 v6, v6, v9
	v_mul_f32_e32 v9, v5, v9
	v_mul_f32_e32 v5, v5, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v37, v52, v48
	v_div_fmas_f32 v10, v41, v44, v43
	v_fma_f32 v41, -v45, v36, v51
	s_mov_b32 vcc_lo, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v5, v191, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v50, v37, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v9, v200, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v36, v41, v49, v36
	s_mov_b32 vcc_lo, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v6, v201, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v37, v42, v48, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v5, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v46, v46, v202, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v26, v9, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v16, v36, v39, v16
	v_div_fixup_f32 v5, v37, v40, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v35, v6, s3
	v_cndmask_b32_e64 v15, v38, v46, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v10, v10, v32, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v9, v9, v16 :: v_dual_mul_f32 v2, v2, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v34, v33, v17
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.h, v1.l
	v_mov_b16_e32 v16.h, v1.l
	v_mov_b16_e32 v16.l, v9.h
	v_mov_b16_e32 v17.l, v2.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v5, v6, v5 :: v_dual_mul_f32 v10, v15, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v6, 1, v16
	v_and_b32_e32 v15, 1, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v17.l, v5.h
	v_mov_b16_e32 v16.l, v10.h
	v_cndmask_b16 v1.l, 0x7fff, v18.h, vcc_lo
	v_add3_u32 v6, v9, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v15, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s0, v2, v2
	v_cmp_o_f32_e64 s1, v5, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add3_u32 v9, v5, v17, 0x7fff
	v_dual_mov_b32 v17, 0x7632 :: v_dual_and_b32 v0, 16, v0
	v_cndmask_b16 v5.h, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v5.l, 0x7fff, v15.h, s0
	s_mov_b32 s0, 0x76543210
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v16, 1, v16
	v_cndmask_b16 v0.h, 0x7fff, v9.h, s1
	v_cndmask_b32_e32 v17, 0x3276, v17, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v2, v10, v16, 0x7fff
	v_dual_cndmask_b32 v6, v12, v20 :: v_dual_cndmask_b32 v9, v13, v23
	v_cndmask_b32_e32 v15, v25, v28, vcc_lo
	v_lshl_or_b32 v17, v17, 8, v17
	v_dual_cndmask_b32 v16, v5, v22 :: v_dual_cndmask_b32 v5, v22, v5
	v_cmp_o_f32_e64 s2, v10, v10
	v_cndmask_b32_e32 v10, v28, v25, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v22, v1, v27 :: v_dual_and_b32 v17, 0x760076, v17
	v_cndmask_b32_e32 v1, v27, v1, vcc_lo
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s2
	v_cndmask_b32_e32 v2, v20, v12, vcc_lo
	v_dual_cndmask_b32 v12, v23, v13 :: v_dual_mov_b32 v13, 0x5410
	v_cndmask_b32_e32 v20, v24, v14, vcc_lo
	v_cndmask_b32_e32 v14, v14, v24, vcc_lo
	v_cndmask_b32_e32 v24, v0, v19, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v0, v19, v0 :: v_dual_cndmask_b32 v13, 0x1054, v13
	v_permlanex16_b32 v19, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v13, v13, 8, v13
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v13, 0x540054, v13
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v9, v13, 4, v13
	v_dual_cndmask_b32 v18, v21, v11 :: v_dual_cndmask_b32 v11, v11, v21
	v_lshl_or_b32 v13, v17, 4, v17
	v_permlanex16_b32 v17, v10, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v23, 0x5040504, v9
	v_permlanex16_b32 v21, v11, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v25, 0x7060706, v13
	v_perm_b32 v9, v6, v2, v23
	v_perm_b32 v11, v19, v12, v23
	v_perm_b32 v13, v17, v15, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v10, v6, v2, v25
	v_perm_b32 v12, v19, v12, v25
	v_perm_b32 v14, v17, v15, v25
	v_perm_b32 v15, v5, v16, v23
	v_perm_b32 v17, v21, v18, v23
	v_perm_b32 v18, v21, v18, v25
	v_perm_b32 v19, v26, v20, v23
	v_perm_b32 v21, v1, v22, v23
	v_perm_b32 v23, v0, v24, v23
	v_perm_b32 v24, v0, v24, v25
	v_add_lshl_u32 v0, v8, v4, 1
	v_perm_b32 v16, v5, v16, v25
	v_perm_b32 v22, v1, v22, v25
	v_add_lshl_u32 v1, v7, v4, 1
	v_perm_b32 v20, v26, v20, v25
	v_add_lshl_u32 v2, v8, v3, 1
	v_add_lshl_u32 v3, v7, v3, 1
	s_clause 0x3
	buffer_store_b128 v[9:12], v0, s[20:23], 0 offen
	buffer_store_b128 v[13:16], v1, s[20:23], 0 offen
	buffer_store_b128 v[17:20], v2, s[20:23], 0 offen
	buffer_store_b128 v[21:24], v3, s[20:23], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp23:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 256
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
		.amdhsa_next_free_sgpr 50
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 256
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21876
; TotalNumSgprs: 52
; NumVgprs: 256
; ScratchSize: 256
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 52
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 256
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 64
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
