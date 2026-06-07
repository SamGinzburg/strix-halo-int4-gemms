	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s7, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s8, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v37, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v38, 3, v0
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v9, 3, v0
	v_or_b32_e32 v40, 0x3f0, v0
	v_or_b32_e32 v41, 0x7f0, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v2, 32, v38
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v36, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s34, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s11, s11, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s9, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v7, s34, v3
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s10, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s6
	s_mul_hi_u32 s10, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s6, s5
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s6, 1
	s_sub_i32 s12, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s11, s6
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s11, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s10
	s_sub_i32 s5, s5, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s16, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s9, s16
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s17, s6, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s18, s17
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s6, s18
	s_sub_i32 s19, 0, s18
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v37
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[5:6], null, s35, v38, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s6, s6
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s27, s11
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s19, s19, s6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v6, s35, 5, v5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s6, s19
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_add_i32 s6, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s6
	s_xor_b32 s6, s2, s17
	s_mul_i32 s19, s4, s18
	s_ashr_i32 s6, s6, 31
	s_sub_i32 s5, s5, s19
	s_add_i32 s19, s4, 1
	s_sub_i32 s20, s5, s18
	s_cmp_ge_u32 s5, s18
	s_cselect_b32 s4, s19, s4
	s_cselect_b32 s5, s20, s5
	s_add_i32 s19, s4, 1
	s_cmp_ge_u32 s5, s18
	s_cselect_b32 s4, s19, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s20, s7, 0x7f
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s18, s4, s6
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s42, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s4, s18, s6
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s17, s4, s17
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v8, s42, v3
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s20, s20, s3
.Ltmp19:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s2, s17
.Ltmp20:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s19, s7, 0xff
.Ltmp21:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s16
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v10, s42, v38
	v_or_b32_e32 v11, s42, v2
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s4, 7
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v8
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s40, s3, 5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s19, 0xff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s21, s35, s42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s7, v10
	v_cmp_gt_i32_e64 s4, s7, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v4, 24, v9
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s16, s33, s21
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v8, s16, v5
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 346 30 is_stmt 1              ; generate_amdgcn.py:346:30
	v_add3_u32 v7, v7, v4, s40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s2, s2, s3
	s_and_b32 s4, s4, s3
	s_cmpk_gt_i32 s19, 0x1ff
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s5, s34, s42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s17, s42, 0x100
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v11, s5, v7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v12, s17, v3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v10, s16, v6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v13, s17, v38
	v_or_b32_e32 v2, s17, v2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s44, s34, 8
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s45, s35, 8
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v10, 0x80000000, v10, s4
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	s_add_i32 s16, s16, s45
	.loc	1 346 30 is_stmt 1              ; generate_amdgcn.py:346:30
	v_add3_u32 v7, s5, s44, v7
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s7, v13
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v5, s16, v5
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s7, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v6, s16, v6
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v2, 0x80000000, v7, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[15:18], v8, s[24:27], 0 offen
	buffer_load_b128 v[19:22], v10, s[24:27], 0 offen
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s5, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[31:32], v11, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[33:34], v2, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[23:26], v5, s[24:27], 0 offen
	buffer_load_b128 v[27:30], v6, s[24:27], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 1, v0
	v_lshrrev_b32_e32 v5, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v10, 16, v36
	s_mov_b32 s16, 0
	s_mov_b64 s[4:5], s[14:15]
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v39, 0x70, v2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v2, 0, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s19, 0x2ff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v5, v5, 1, v39
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v35, v2, v9
	s_waitcnt vmcnt(4)
	ds_store_b128 v35, v[19:22] offset:4096
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(3)
	ds_store_b64 v2, v[31:32] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v35, v[15:18]
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v11, 2, v5
	v_or_b32_e32 v12, 4, v5
	v_or_b32_e32 v13, 6, v5
	v_or_b32_e32 v14, 8, v5
	v_or_b32_e32 v6, 10, v5
	v_or_b32_e32 v7, 12, v5
	v_or_b32_e32 v8, 14, v5
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v2, v[33:34] offset:18432
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v35, v[23:26] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v35, v[27:30] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v2, 0x3f0, v0
	v_or_b32_e32 v48, 0x7f0, v0
	s_mov_b32 s14, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr48
.LBB0_3:                                ; %Flow121
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v15, s40, v36
	v_or_b32_e32 v10, s40, v10
	s_ashr_i32 s41, s20, 7
	v_or_b32_e32 v33, s33, v5
	v_or_b32_e32 v32, s33, v11
	v_mul_lo_u32 v34, v15, s41
	v_mul_lo_u32 v35, v10, s41
	v_or_b32_e32 v31, s33, v12
	v_or_b32_e32 v29, s33, v13
	v_or_b32_e32 v27, s33, v14
	v_or_b32_e32 v30, s33, v6
	v_or_b32_e32 v28, s33, v7
	v_or_b32_e32 v26, s33, v8
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s14, s19, 8
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s15, s18, 7
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v2, s42, v38
	v_mov_b32_e32 v10, 0
	v_add3_u32 v6, s42, v3, 0x200
	s_lshl_b32 s17, s6, 7
	v_or_b32_e32 v45, 0x200, v3
	v_add_nc_u32_e32 v5, 0x220, v2
	v_add_nc_u32_e32 v2, 0x200, v2
	v_mul_lo_u32 v6, s34, v6
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v15, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v5, s35, v5
	v_mul_lo_u32 v2, s35, v2
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_add3_u32 v42, v6, s40, v4
	v_mov_b32_e32 v11, 0
	v_add3_u32 v5, v5, s15, v1
	v_add3_u32 v1, v2, s15, v1
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v20, 0
	v_mov_b32_e32 v21, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v43, s17, v5
	v_subrev_nc_u32_e32 v44, s17, v1
	s_mov_b32 s17, s16
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_mov_b32_e32 v7, s22
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_mov_b32_e32 v8, s23
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v18, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_and_b32 s37, s5, 0xffff
	s_mov_b32 s36, s4
	s_add_i32 s6, 0, 0x4000
	s_add_i32 s14, s14, -2
	s_add_i32 s34, 0, 0x4800
	s_add_i32 s43, 0, 0x2000
	s_mov_b32 s15, 1
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s17, s42
	s_mov_b32 s19, s6
	.loc	1 342 17 is_stmt 1              ; generate_amdgcn.py:342:17
	v_add_nc_u32_e32 v49, s17, v45
	v_add_nc_u32_e32 v50, s17, v38
	s_mov_b32 s18, s16
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v46, s19, v36
	v_add_nc_u32_e32 v47, s19, v40
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v49
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_add_nc_u32_e32 v52, 0x200, v50
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v48, s19, v41
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s19, s42, 31
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v51, s18, v39, v36
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s18, s19, 25
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_add_nc_u32_e32 v50, 0x220, v50
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v49, 0x80000000, v42, vcc_lo
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v52
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s18, s42, s18
	s_mov_b32 s16, s43
	s_ashr_i32 s18, s18, 7
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[114:115], v49, s[8:11], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v54, v35, s18, 1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v49, 0x80000000, v44, vcc_lo
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v50
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s18, s41
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v53, v34, s18, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s18, s18, s35
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v62, v33, s18, 1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v50, 0x80000000, v43, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v63, v32, s18, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v64, v31, s18, 1
	v_add_lshl_u32 v65, v29, s18, 1
	v_add_lshl_u32 v66, v27, s18, 1
	v_add_lshl_u32 v67, v30, s18, 1
	v_add_lshl_u32 v68, v28, s18, 1
	v_add_lshl_u32 v69, v26, s18, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v62, 0x80000000, v62
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_cndmask_b32 v63, 0x80000000, v63
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v65, 0x80000000, v65 :: v_dual_cndmask_b32 v66, 0x80000000, v66
	v_dual_cndmask_b32 v67, 0x80000000, v67 :: v_dual_cndmask_b32 v68, 0x80000000, v68
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v167, v53, s[28:31], 0 offen
	buffer_load_u16 v168, v54, s[28:31], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x7
	buffer_load_u16 v169, v62, s[36:39], 0 offen
	buffer_load_u16 v170, v63, s[36:39], 0 offen
	buffer_load_u16 v171, v64, s[36:39], 0 offen
	buffer_load_u16 v172, v65, s[36:39], 0 offen
	buffer_load_u16 v173, v66, s[36:39], 0 offen
	buffer_load_u16 v174, v67, s[36:39], 0 offen
	buffer_load_u16 v175, v68, s[36:39], 0 offen
	buffer_load_u16 v176, v69, s[36:39], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[62:65], v49, s[24:27], 0 offen
	buffer_load_b128 v[66:69], v50, s[24:27], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v46 offset:96
	ds_load_u8 v55, v46 offset:64
	ds_load_u8 v56, v46
	ds_load_u8 v57, v46 offset:16
	ds_load_u8 v58, v46 offset:32
	ds_load_u8 v59, v46 offset:112
	ds_load_u8 v60, v46 offset:80
	ds_load_u8 v61, v46 offset:48
	ds_load_u8 v70, v51 offset:1664
	ds_load_u8 v71, v51 offset:1920
	ds_load_u8 v72, v51 offset:1792
	ds_load_u8 v73, v51 offset:1536
	ds_load_u8 v74, v51 offset:1152
	ds_load_u8 v75, v51 offset:1408
	ds_load_u8 v76, v51 offset:1280
	ds_load_u8 v77, v51 offset:1024
	ds_load_u8 v78, v51 offset:640
	ds_load_u8 v79, v51 offset:896
	ds_load_u8 v80, v51 offset:768
	ds_load_u8 v81, v51 offset:512
	ds_load_u8 v82, v51 offset:128
	ds_load_u8 v83, v51 offset:384
	ds_load_u8 v84, v51 offset:256
	ds_load_u8 v85, v51
	ds_load_u8 v86, v46 offset:928
	ds_load_u8 v87, v46 offset:896
	ds_load_u8 v88, v46 offset:992
	ds_load_u8 v89, v46 offset:960
	ds_load_u8 v90, v51 offset:3712
	ds_load_u8 v91, v51 offset:3968
	ds_load_u8 v92, v51 offset:3840
	ds_load_u8 v93, v51 offset:3584
	ds_load_u8 v94, v51 offset:3200
	ds_load_u8 v95, v51 offset:3456
	ds_load_u8 v96, v51 offset:3328
	ds_load_u8 v97, v51 offset:3072
	ds_load_u8 v98, v51 offset:2688
	ds_load_u8 v99, v51 offset:2944
	ds_load_u8 v100, v51 offset:2816
	ds_load_u8 v101, v51 offset:2560
	ds_load_u8 v102, v51 offset:2176
	ds_load_u8 v103, v51 offset:2432
	ds_load_u8 v104, v51 offset:2304
	ds_load_u8 v105, v51 offset:2048
	ds_load_u8 v106, v51 offset:5760
	ds_load_u8 v107, v51 offset:6016
	ds_load_u8 v108, v51 offset:5888
	ds_load_u8 v109, v51 offset:5632
	ds_load_u8 v110, v51 offset:5248
	ds_load_u8 v111, v51 offset:5504
	ds_load_u8 v112, v51 offset:5376
	ds_load_u8 v113, v51 offset:5120
	ds_load_u8 v116, v51 offset:4736
	ds_load_u8 v117, v51 offset:4992
	ds_load_u8 v118, v51 offset:4864
	ds_load_u8 v119, v51 offset:4608
	ds_load_u8 v120, v51 offset:4224
	ds_load_u8 v121, v51 offset:4480
	ds_load_u8 v122, v51 offset:4352
	ds_load_u8 v123, v51 offset:4096
	ds_load_u8 v124, v46 offset:1664
	ds_load_u8 v125, v46 offset:1568
	ds_load_u8 v126, v46 offset:1632
	ds_load_u8 v127, v46 offset:1600
	ds_load_u8 v128, v51 offset:7808
	ds_load_u8 v129, v51 offset:8064
	ds_load_u8 v130, v51 offset:7936
	ds_load_u8 v131, v51 offset:7680
	ds_load_u8 v132, v51 offset:7296
	ds_load_u8 v133, v51 offset:7552
	ds_load_u8 v134, v51 offset:7424
	ds_load_u8 v135, v51 offset:7168
	ds_load_u8 v136, v51 offset:6784
	ds_load_u8 v137, v51 offset:7040
	ds_load_u8 v138, v51 offset:6912
	ds_load_u8 v139, v51 offset:6656
	ds_load_u8 v140, v51 offset:6272
	ds_load_u8 v141, v51 offset:6528
	ds_load_u8 v142, v51 offset:6400
	ds_load_u8 v51, v51 offset:6144
	ds_load_u8 v143, v46 offset:416
	ds_load_u8 v144, v46 offset:384
	ds_load_u8 v145, v46 offset:480
	ds_load_u8 v146, v46 offset:448
	ds_load_u8 v147, v46 offset:496
	ds_load_u8 v148, v46 offset:464
	ds_load_u8 v149, v46 offset:432
	ds_load_u8 v150, v46 offset:400
	ds_load_u8 v151, v46 offset:288
	ds_load_u8 v152, v46 offset:256
	ds_load_u8 v153, v46 offset:352
	ds_load_u8 v154, v46 offset:320
	ds_load_u8 v155, v46 offset:368
	ds_load_u8 v156, v46 offset:336
	ds_load_u8 v157, v46 offset:304
	ds_load_u8 v158, v46 offset:272
	ds_load_u8 v159, v46 offset:160
	ds_load_u8 v160, v46 offset:128
	ds_load_u8 v161, v46 offset:224
	ds_load_u8 v162, v46 offset:192
	ds_load_u8 v163, v46 offset:240
	ds_load_u8 v164, v46 offset:208
	ds_load_u8 v165, v46 offset:176
	ds_load_u8 v166, v46 offset:144
	ds_load_u8 v53, v46 offset:1024
	ds_load_u8 v54, v46 offset:976
	ds_load_u8 v177, v46 offset:944
	ds_load_u8 v178, v46 offset:912
	ds_load_u8 v179, v46 offset:800
	ds_load_u8 v180, v46 offset:768
	ds_load_u8 v181, v46 offset:864
	ds_load_u8 v182, v46 offset:832
	ds_load_u8 v183, v46 offset:880
	ds_load_u8 v184, v46 offset:848
	ds_load_u8 v185, v46 offset:816
	ds_load_u8 v186, v46 offset:784
	ds_load_u8 v49, v46 offset:672
	ds_load_u8 v50, v46 offset:640
	ds_load_u8 v187, v46 offset:736
	ds_load_u8 v188, v46 offset:704
	ds_load_u8 v189, v46 offset:752
	ds_load_u8 v190, v46 offset:720
	ds_load_u8 v191, v46 offset:688
	ds_load_u8 v192, v46 offset:656
	ds_load_u8 v193, v46 offset:544
	ds_load_u8 v194, v46 offset:512
	ds_load_u8 v195, v46 offset:608
	ds_load_u8 v196, v46 offset:576
	ds_load_u8 v197, v46 offset:624
	ds_load_u8 v198, v46 offset:592
	ds_load_u8 v199, v46 offset:560
	ds_load_u8 v200, v46 offset:528
	ds_load_u8 v201, v46 offset:1440
	ds_load_u8 v202, v46 offset:1504
	ds_load_u8 v203, v46 offset:1472
	ds_load_u8 v204, v46 offset:1536
	ds_load_u8 v205, v46 offset:1520
	ds_load_u8 v206, v46 offset:1488
	ds_load_u8 v207, v46 offset:1456
	ds_load_u8 v208, v46 offset:1424
	ds_load_u8 v209, v46 offset:1408
	ds_load_u8 v210, v46 offset:1312
	ds_load_u8 v211, v46 offset:1376
	ds_load_u8 v212, v46 offset:1344
	ds_load_u8 v213, v46 offset:1392
	ds_load_u8 v214, v46 offset:1360
	ds_load_u8 v215, v46 offset:1328
	ds_load_u8 v216, v46 offset:1296
	ds_load_u8 v217, v46 offset:1280
	ds_load_u8 v218, v46 offset:1184
	ds_load_u8 v219, v46 offset:1248
	ds_load_u8 v220, v46 offset:1216
	ds_load_u8 v221, v46 offset:1264
	ds_load_u8 v222, v46 offset:1232
	ds_load_u8 v223, v46 offset:1200
	ds_load_u8 v224, v46 offset:1168
	ds_load_u8 v225, v46 offset:1152
	ds_load_u8 v226, v46 offset:1056
	ds_load_u8 v227, v46 offset:1120
	ds_load_u8 v228, v46 offset:1088
	ds_load_u8 v229, v46 offset:1136
	ds_load_u8 v230, v46 offset:1104
	ds_load_u8 v231, v46 offset:1072
	ds_load_u8 v232, v46 offset:1040
	ds_load_u8 v233, v46 offset:1952
	ds_load_u8 v234, v46 offset:2016
	ds_load_u8 v235, v46 offset:1984
	ds_load_u8 v47, v47
	ds_load_u8 v48, v48
	ds_load_u8 v236, v46 offset:2000
	ds_load_u8 v237, v46 offset:1968
	ds_load_u8 v238, v46 offset:1936
	ds_load_u8 v239, v46 offset:1920
	ds_load_u8 v240, v46 offset:1824
	ds_load_u8 v241, v46 offset:1888
	ds_load_u8 v242, v46 offset:1856
	ds_load_u8 v243, v46 offset:1904
	ds_load_u8 v244, v46 offset:1872
	ds_load_u8 v245, v46 offset:1840
	ds_load_u8 v246, v46 offset:1808
	ds_load_u8 v247, v46 offset:1792
	ds_load_u8 v248, v46 offset:1696
	ds_load_u8 v249, v46 offset:1760
	ds_load_u8 v250, v46 offset:1728
	ds_load_u8 v251, v46 offset:1776
	ds_load_u8 v252, v46 offset:1744
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v46 offset:1712
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v46 offset:1680
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v46 offset:1648
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v46 offset:1616
	v_perm_b32 v52, v55, v52, 0xc0c0004
	v_perm_b32 v58, v56, v58, 0xc0c0004
	v_perm_b32 v70, v73, v70, 0xc0c0004
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v46 offset:1584
	ds_load_u8 v46, v46 offset:1552
	v_perm_b32 v161, v162, v161, 0xc0c0004
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_perm_b32 v72, v77, v74, 0xc0c0004
	v_perm_b32 v74, v76, v75, 0xc0c0004
	v_perm_b32 v75, v81, v78, 0xc0c0004
	v_perm_b32 v76, v80, v79, 0xc0c0004
	v_perm_b32 v77, v85, v82, 0xc0c0004
	v_perm_b32 v78, v84, v83, 0xc0c0004
	v_perm_b32 v79, v87, v86, 0xc0c0004
	v_perm_b32 v80, v89, v88, 0xc0c0004
	v_perm_b32 v81, v180, v179, 0xc0c0004
	v_perm_b32 v82, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v83, v194, v193, 0xc0c0004
	v_perm_b32 v84, v196, v195, 0xc0c0004
	v_perm_b32 v85, v93, v90, 0xc0c0004
	v_perm_b32 v86, v92, v91, 0xc0c0004
	v_perm_b32 v87, v97, v94, 0xc0c0004
	v_perm_b32 v89, v101, v98, 0xc0c0004
	v_perm_b32 v90, v100, v99, 0xc0c0004
	v_perm_b32 v91, v105, v102, 0xc0c0004
	v_perm_b32 v92, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v97, v225, v218, 0xc0c0004
	v_perm_b32 v98, v220, v219, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v53, v53, v226, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v99, v228, v227, 0xc0c0004
	v_perm_b32 v100, v109, v106, 0xc0c0004
	v_perm_b32 v101, v108, v107, 0xc0c0004
	v_perm_b32 v104, v119, v116, 0xc0c0004
	v_perm_b32 v105, v118, v117, 0xc0c0004
	v_perm_b32 v116, v204, v125, 0xc0c0004
	v_perm_b32 v117, v127, v126, 0xc0c0004
	v_perm_b32 v118, v131, v128, 0xc0c0004
	v_perm_b32 v119, v130, v129, 0xc0c0004
	v_perm_b32 v125, v150, v149, 0xc0c0004
	v_perm_b32 v126, v148, v147, 0xc0c0004
	v_perm_b32 v127, v158, v157, 0xc0c0004
	v_perm_b32 v128, v156, v155, 0xc0c0004
	v_perm_b32 v129, v166, v165, 0xc0c0004
	v_perm_b32 v130, v164, v163, 0xc0c0004
	v_perm_b32 v59, v60, v59, 0xc0c0004
	v_perm_b32 v60, v57, v61, 0xc0c0004
	v_perm_b32 v49, v50, v49, 0xc0c0004
	v_perm_b32 v50, v188, v187, 0xc0c0004
	v_perm_b32 v88, v96, v95, 0xc0c0004
	v_perm_b32 v93, v209, v201, 0xc0c0004
	v_perm_b32 v94, v203, v202, 0xc0c0004
	v_perm_b32 v102, v113, v110, 0xc0c0004
	v_perm_b32 v103, v112, v111, 0xc0c0004
	v_perm_b32 v106, v123, v120, 0xc0c0004
	v_perm_b32 v107, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v110, v247, v240, 0xc0c0004
	v_perm_b32 v111, v242, v241, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v112, v124, v248, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v113, v250, v249, 0xc0c0004
	v_perm_b32 v120, v135, v132, 0xc0c0004
	v_perm_b32 v121, v134, v133, 0xc0c0004
	v_perm_b32 v122, v139, v136, 0xc0c0004
	v_perm_b32 v51, v51, v140, 0xc0c0004
	v_perm_b32 v124, v142, v141, 0xc0c0004
	v_perm_b32 v61, v178, v177, 0xc0c0004
	v_perm_b32 v47, v54, v47, 0xc0c0004
	v_perm_b32 v131, v186, v185, 0xc0c0004
	v_perm_b32 v132, v184, v183, 0xc0c0004
	v_perm_b32 v133, v192, v191, 0xc0c0004
	v_perm_b32 v134, v190, v189, 0xc0c0004
	v_perm_b32 v135, v200, v199, 0xc0c0004
	v_perm_b32 v136, v198, v197, 0xc0c0004
	v_perm_b32 v149, v238, v237, 0xc0c0004
	v_perm_b32 v48, v236, v48, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v160, 0xc0c0004
	v_perm_b32 v152, v154, v152, 0xc0c0004
	v_lshl_or_b32 v57, v145, 16, v143
	v_lshl_or_b32 v56, v153, 16, v151
	v_lshl_or_b32 v55, v161, 16, v159
	v_lshl_or_b32 v54, v52, 16, v58
	v_lshl_or_b32 v73, v71, 16, v70
	v_lshl_or_b32 v72, v74, 16, v72
	v_lshl_or_b32 v71, v76, 16, v75
	v_lshl_or_b32 v70, v78, 16, v77
	v_lshl_or_b32 v77, v80, 16, v79
	v_lshl_or_b32 v76, v82, 16, v81
	v_lshl_or_b32 v74, v84, 16, v83
	v_lshl_or_b32 v79, v90, 16, v89
	v_lshl_or_b32 v83, v98, 16, v97
	v_lshl_or_b32 v82, v99, 16, v53
	v_lshl_or_b32 v89, v101, 16, v100
	v_lshl_or_b32 v101, v126, 16, v125
	v_lshl_or_b32 v100, v128, 16, v127
	v_lshl_or_b32 v99, v130, 16, v129
	v_lshl_or_b32 v98, v59, 16, v60
	v_perm_b32 v95, v217, v210, 0xc0c0004
	v_perm_b32 v96, v212, v211, 0xc0c0004
	v_perm_b32 v108, v239, v233, 0xc0c0004
	v_perm_b32 v109, v235, v234, 0xc0c0004
	v_perm_b32 v123, v138, v137, 0xc0c0004
	v_perm_b32 v137, v208, v207, 0xc0c0004
	v_perm_b32 v138, v206, v205, 0xc0c0004
	v_perm_b32 v139, v216, v215, 0xc0c0004
	v_perm_b32 v140, v214, v213, 0xc0c0004
	v_perm_b32 v141, v224, v223, 0xc0c0004
	v_perm_b32 v142, v222, v221, 0xc0c0004
	v_perm_b32 v147, v232, v231, 0xc0c0004
	v_perm_b32 v148, v230, v229, 0xc0c0004
	v_lshl_or_b32 v75, v50, 16, v49
	v_lshl_or_b32 v81, v86, 16, v85
	v_lshl_or_b32 v80, v88, 16, v87
	v_lshl_or_b32 v78, v92, 16, v91
	v_lshl_or_b32 v85, v94, 16, v93
	v_lshl_or_b32 v88, v103, 16, v102
	v_lshl_or_b32 v87, v105, 16, v104
	v_lshl_or_b32 v92, v111, 16, v110
	v_lshl_or_b32 v91, v113, 16, v112
	v_lshl_or_b32 v94, v124, 16, v51
	v_lshl_or_b32 v105, v47, 16, v61
	v_lshl_or_b32 v104, v132, 16, v131
	v_lshl_or_b32 v103, v134, 16, v133
	v_lshl_or_b32 v102, v136, 16, v135
	v_lshl_or_b32 v113, v48, 16, v149
	v_lshl_or_b32 v110, v152, 16, v46
	v_wmma_i32_16x16x16_iu8 v[46:53], v[70:73], v[54:57], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[70:73], v[98:101], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v150, v246, v245, 0xc0c0004
	v_perm_b32 v155, v244, v243, 0xc0c0004
	v_perm_b32 v144, v146, v144, 0xc0c0004
	v_perm_b32 v146, v252, v251, 0xc0c0004
	v_lshl_or_b32 v84, v96, 16, v95
	v_lshl_or_b32 v86, v107, 16, v106
	v_lshl_or_b32 v93, v109, 16, v108
	v_lshl_or_b32 v109, v138, 16, v137
	v_lshl_or_b32 v108, v140, 16, v139
	v_lshl_or_b32 v107, v142, 16, v141
	v_lshl_or_b32 v106, v148, 16, v147
	v_wmma_i32_16x16x16_iu8 v[46:53], v[78:81], v[74:77], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[78:81], v[102:105], v[54:61] neg_lo:[1,1,0]
	v_lshl_or_b32 v90, v117, 16, v116
	v_lshl_or_b32 v97, v119, 16, v118
	v_lshl_or_b32 v96, v121, 16, v120
	v_lshl_or_b32 v95, v123, 16, v122
	v_lshl_or_b32 v112, v155, 16, v150
	v_lshl_or_b32 v111, v146, 16, v144
	v_wmma_i32_16x16x16_iu8 v[46:53], v[86:89], v[82:85], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[86:89], v[106:109], v[54:61] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s15, s15, 1
	s_mov_b32 s6, s34
	s_cmp_lt_i32 s15, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[46:53], v[94:97], v[90:93], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[94:97], v[110:113], v[54:61] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s15, s15, 0
	s_add_i32 s14, s14, -1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s19, s15, 13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s43, s19, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s18, s15, 11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_addk_i32 s42, 0x100
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s18, s18, 0
	s_waitcnt lgkmcnt(0)
	s_add_i32 s34, s18, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s14, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_barrier
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v70, 16, v167
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v76, 16, v173
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v43, s45, v43
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v78, 16, v175
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v79, 16, v176
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v71, 16, v168
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v77, 16, v174
	v_lshlrev_b32_e32 v75, 16, v172
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v86, v70, v78 :: v_dual_add_nc_u32 v253, s43, v37
	v_mul_f32_e32 v84, v70, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v85, v70, v77
	v_dual_mul_f32 v83, v70, v75 :: v_dual_lshlrev_b32 v72, 16, v169
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v74, 16, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v16, v86, v52 :: v_dual_fmac_f32 v15, v85, v51
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v80, v70, v72 :: v_dual_lshlrev_b32 v73, 16, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v13, v83, v49 :: v_dual_mul_f32 v82, v70, v74
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v81, v70, v73
	v_mul_f32_e32 v70, v70, v79
	v_mul_f32_e32 v72, v71, v72
	v_mul_f32_e32 v73, v71, v73
	v_mul_f32_e32 v74, v71, v74
	v_mul_f32_e32 v75, v71, v75
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v17, v70, v53 :: v_dual_mul_f32 v78, v71, v78
	v_dual_fmac_f32 v19, v72, v54 :: v_dual_add_nc_u32 v44, s45, v44
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v76, v71, v76
	v_dual_mul_f32 v77, v71, v77 :: v_dual_add_nc_u32 v42, s44, v42
	v_dual_mul_f32 v71, v71, v79 :: v_dual_add_nc_u32 v162, s18, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v11, v81, v47 :: v_dual_fmac_f32 v10, v80, v46
	v_fmac_f32_e32 v21, v74, v56
	v_dual_fmac_f32 v12, v82, v48 :: v_dual_fmac_f32 v23, v76, v58
	v_dual_fmac_f32 v14, v84, v50 :: v_dual_fmac_f32 v25, v78, v60
	v_fmac_f32_e32 v20, v73, v55
	v_fmac_f32_e32 v22, v75, v57
	v_fmac_f32_e32 v24, v77, v59
	v_fmac_f32_e32 v18, v71, v61
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_store_b64 v162, v[114:115] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v253, v[62:65]
	s_waitcnt vmcnt(0)
	ds_store_b128 v253, v[66:69] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v2, v40
	v_mov_b32_e32 v48, v41
	s_addk_i32 s17, 0x200
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
	s_add_i32 s6, 0, 0x4000
	s_add_i32 s34, 0, 0x4800
	s_add_i32 s43, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v58, v39, v36
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_mov_b32_e32 v47, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s20, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v1, s6, v36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v1 offset:416
	ds_load_u8 v6, v1 offset:384
	ds_load_u8 v7, v1 offset:480
	ds_load_u8 v8, v1 offset:448
	ds_load_u8 v37, v1 offset:288
	ds_load_u8 v38, v1 offset:256
	ds_load_u8 v39, v1 offset:352
	ds_load_u8 v40, v1 offset:320
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v4, s16, v58
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v41, s6, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v87, v1 offset:16
	ds_load_u8 v88, v41
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v40, v39, 0xc0c0004
	ds_load_u8 v38, v1 offset:160
	ds_load_u8 v39, v1 offset:128
	ds_load_u8 v40, v1 offset:224
	ds_load_u8 v42, v1 offset:192
	v_lshl_or_b32 v8, v6, 16, v5
	v_lshl_or_b32 v7, v37, 16, v7
	ds_load_u8 v5, v1 offset:96
	ds_load_u8 v6, v1 offset:64
	ds_load_u8 v37, v1
	ds_load_u8 v43, v1 offset:32
	ds_load_u8 v44, v4 offset:1664
	ds_load_u8 v45, v4 offset:1920
	ds_load_u8 v46, v4 offset:1792
	ds_load_u8 v47, v4 offset:1536
	ds_load_u8 v49, v4 offset:1152
	ds_load_u8 v50, v4 offset:1408
	ds_load_u8 v51, v4 offset:1280
	ds_load_u8 v52, v4 offset:1024
	ds_load_u8 v53, v4 offset:640
	ds_load_u8 v54, v4 offset:896
	ds_load_u8 v55, v4 offset:768
	ds_load_u8 v56, v4 offset:512
	ds_load_u8 v59, v4 offset:128
	ds_load_u8 v63, v4 offset:384
	ds_load_u8 v64, v4 offset:256
	ds_load_u8 v65, v4
	ds_load_u8 v81, v1 offset:208
	ds_load_u8 v82, v1 offset:176
	ds_load_u8 v83, v1 offset:144
	ds_load_u8 v84, v1 offset:112
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v37, v37, v43, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v41, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v43, v51, v50, 0xc0c0004
	v_lshl_or_b32 v5, v5, 16, v37
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v45, v55, v54, 0xc0c0004
	v_perm_b32 v38, v39, v38, 0xc0c0004
	v_perm_b32 v39, v42, v40, 0xc0c0004
	v_perm_b32 v40, v47, v44, 0xc0c0004
	v_perm_b32 v42, v52, v49, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v44, v56, v53, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v37, v65, v59, 0xc0c0004
	v_lshl_or_b32 v6, v39, 16, v38
	v_lshl_or_b32 v62, v41, 16, v40
	v_perm_b32 v40, v64, v63, 0xc0c0004
	v_lshl_or_b32 v61, v43, 16, v42
	v_lshl_or_b32 v60, v45, 16, v44
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	v_lshl_or_b32 v59, v40, 16, v37
	v_dual_mov_b32 v47, s27 :: v_dual_mov_b32 v46, s26
	ds_load_u8 v38, v1 offset:928
	ds_load_u8 v39, v1 offset:896
	ds_load_u8 v49, v1 offset:992
	ds_load_u8 v50, v1 offset:960
	v_dual_mov_b32 v45, s25 :: v_dual_mov_b32 v42, s22
	v_dual_mov_b32 v44, s24 :: v_dual_mov_b32 v43, s23
	v_dual_mov_b32 v40, s20 :: v_dual_mov_b32 v41, s21
	ds_load_u8 v37, v1 offset:800
	ds_load_u8 v63, v1 offset:768
	ds_load_u8 v64, v1 offset:864
	ds_load_u8 v65, v1 offset:832
	ds_load_u8 v89, v1 offset:976
	ds_load_u8 v90, v1 offset:944
	ds_load_u8 v91, v1 offset:912
	ds_load_u8 v92, v1 offset:880
	ds_load_u8 v57, v1 offset:464
	ds_load_u8 v71, v1 offset:432
	ds_load_u8 v75, v1 offset:400
	ds_load_u8 v76, v1 offset:368
	ds_load_u8 v77, v1 offset:336
	ds_load_u8 v78, v1 offset:304
	ds_load_u8 v79, v1 offset:272
	ds_load_u8 v80, v1 offset:240
	ds_load_u8 v85, v1 offset:80
	ds_load_u8 v86, v1 offset:48
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v39, v50, v49, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[49:56], v[59:62], v[5:8], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v37, v63, v37, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v63, v65, v64, 0xc0c0004
	v_lshl_or_b32 v8, v39, 16, v38
	ds_load_u8 v5, v1 offset:672
	ds_load_u8 v6, v1 offset:640
	ds_load_u8 v7, v1 offset:736
	ds_load_u8 v38, v1 offset:704
	ds_load_u8 v39, v1 offset:848
	ds_load_u8 v93, v1 offset:816
	ds_load_u8 v94, v1 offset:784
	ds_load_u8 v95, v1 offset:752
	ds_load_u8 v64, v1 offset:544
	ds_load_u8 v65, v1 offset:512
	ds_load_u8 v66, v1 offset:608
	ds_load_u8 v67, v1 offset:576
	ds_load_u8 v68, v4 offset:3712
	ds_load_u8 v69, v4 offset:3968
	ds_load_u8 v70, v4 offset:3840
	ds_load_u8 v72, v4 offset:3584
	ds_load_u8 v73, v4 offset:3200
	ds_load_u8 v74, v4 offset:3456
	ds_load_u8 v96, v4 offset:3328
	ds_load_u8 v97, v4 offset:3072
	ds_load_u8 v98, v1 offset:720
	ds_load_u8 v99, v1 offset:688
	ds_load_u8 v100, v1 offset:656
	ds_load_u8 v101, v1 offset:624
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v75, v75, v71, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v79, v79, v78, 0xc0c0004
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v81, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	v_perm_b32 v83, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v65, v67, v66, 0xc0c0004
	v_lshl_or_b32 v77, v76, 16, v79
	v_lshl_or_b32 v76, v80, 16, v82
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v67, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v66, v72, v68, 0xc0c0004
	v_perm_b32 v5, v6, v5, 0xc0c0004
	v_perm_b32 v6, v38, v7, 0xc0c0004
	ds_load_u8 v38, v4 offset:2688
	ds_load_u8 v102, v4 offset:2944
	ds_load_u8 v103, v4 offset:2816
	ds_load_u8 v104, v4 offset:2560
	ds_load_u8 v105, v4 offset:2176
	ds_load_u8 v106, v4 offset:2432
	ds_load_u8 v107, v4 offset:2304
	ds_load_u8 v108, v4 offset:2048
	ds_load_u8 v109, v1 offset:592
	ds_load_u8 v110, v1 offset:560
	ds_load_u8 v111, v1 offset:528
	ds_load_u8 v112, v1 offset:496
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v68, v97, v73, 0xc0c0004
	v_perm_b32 v69, v96, v74, 0xc0c0004
	v_lshl_or_b32 v7, v63, 16, v37
	v_lshl_or_b32 v6, v6, 16, v5
	v_lshl_or_b32 v5, v65, 16, v64
	v_lshl_or_b32 v66, v67, 16, v66
	v_lshl_or_b32 v65, v69, 16, v68
	ds_load_u8 v67, v1 offset:1440
	ds_load_u8 v68, v1 offset:1408
	ds_load_u8 v69, v1 offset:1504
	ds_load_u8 v70, v1 offset:1472
	ds_load_u8 v73, v1 offset:1312
	ds_load_u8 v74, v1 offset:1280
	ds_load_u8 v96, v1 offset:1376
	ds_load_u8 v97, v1 offset:1344
	v_perm_b32 v79, v94, v93, 0xc0c0004
	v_perm_b32 v39, v39, v92, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v37, v104, v38, 0xc0c0004
	v_perm_b32 v38, v103, v102, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v103, s6, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v72, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v63, v108, v105, 0xc0c0004
	ds_load_u8 v104, v1 offset:1520
	ds_load_u8 v105, v1 offset:1488
	ds_load_u8 v106, v1 offset:1456
	ds_load_u8 v107, v1 offset:1424
	v_lshl_or_b32 v64, v38, 16, v37
	ds_load_u8 v108, v1 offset:1392
	ds_load_u8 v113, v1 offset:1360
	ds_load_u8 v114, v1 offset:1328
	ds_load_u8 v115, v1 offset:1296
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v57, v57, v112, 0xc0c0004
	v_lshl_or_b32 v63, v72, 16, v63
	ds_load_u8 v37, v1 offset:1184
	ds_load_u8 v38, v1 offset:1152
	ds_load_u8 v72, v1 offset:1248
	ds_load_u8 v102, v1 offset:1216
	v_perm_b32 v80, v100, v99, 0xc0c0004
	v_perm_b32 v82, v111, v110, 0xc0c0004
	v_lshl_or_b32 v78, v57, 16, v75
	v_wmma_i32_16x16x16_iu8 v[49:56], v[63:66], v[5:8], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v5, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v6, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v67, v97, v96, 0xc0c0004
	ds_load_u8 v96, v1 offset:1264
	ds_load_u8 v97, v1 offset:1232
	ds_load_u8 v116, v1 offset:1200
	ds_load_u8 v117, v1 offset:1168
	v_lshl_or_b32 v75, v81, 16, v83
	v_lshl_or_b32 v8, v6, 16, v5
	v_perm_b32 v57, v91, v90, 0xc0c0004
	v_lshl_or_b32 v7, v67, 16, v7
	v_perm_b32 v81, v98, v95, 0xc0c0004
	v_perm_b32 v83, v109, v101, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[40:47], v[59:62], v[75:78], v[40:47] neg_lo:[1,1,0]
	v_lshl_or_b32 v61, v39, 16, v79
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	v_lshl_or_b32 v60, v81, 16, v80
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v38, v102, v72, 0xc0c0004
	ds_load_u8 v68, v1 offset:1056
	ds_load_u8 v69, v1 offset:1024
	ds_load_u8 v70, v1 offset:1120
	ds_load_u8 v72, v1 offset:1088
	ds_load_u8 v73, v4 offset:5760
	ds_load_u8 v74, v4 offset:6016
	ds_load_u8 v102, v4 offset:5888
	ds_load_u8 v118, v4 offset:5632
	ds_load_u8 v119, v4 offset:5248
	ds_load_u8 v120, v4 offset:5504
	ds_load_u8 v121, v4 offset:5376
	ds_load_u8 v122, v4 offset:5120
	v_lshl_or_b32 v59, v83, 16, v82
	v_perm_b32 v39, v105, v104, 0xc0c0004
	v_perm_b32 v75, v113, v108, 0xc0c0004
	v_lshl_or_b32 v6, v38, 16, v37
	ds_load_u8 v5, v4 offset:4736
	ds_load_u8 v37, v4 offset:4864
	ds_load_u8 v38, v4 offset:4608
	ds_load_u8 v67, v4 offset:4992
	ds_load_u8 v123, v4 offset:4224
	ds_load_u8 v124, v4 offset:4480
	ds_load_u8 v125, v4 offset:4352
	ds_load_u8 v126, v4 offset:4096
	ds_load_u8 v127, v1 offset:1136
	ds_load_u8 v128, v1 offset:1104
	ds_load_u8 v129, v1 offset:1072
	ds_load_u8 v130, v1 offset:1040
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v77, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v76, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v69, v72, v70, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v72, v102, v74, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v70, v118, v73, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v38, v38, v5, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v37, v37, v67, 0xc0c0004
	v_perm_b32 v120, v121, v120, 0xc0c0004
	v_perm_b32 v73, v122, v119, 0xc0c0004
	ds_load_u8 v74, v1 offset:1952
	ds_load_u8 v102, v1 offset:1920
	ds_load_u8 v118, v1 offset:2016
	ds_load_u8 v119, v1 offset:1984
	ds_load_u8 v121, v1 offset:1824
	ds_load_u8 v122, v1 offset:1792
	ds_load_u8 v131, v1 offset:1888
	ds_load_u8 v132, v1 offset:1856
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v67, v126, v123, 0xc0c0004
	v_perm_b32 v123, v125, v124, 0xc0c0004
	v_lshl_or_b32 v5, v69, 16, v68
	v_lshl_or_b32 v69, v120, 16, v73
	v_lshl_or_b32 v68, v37, 16, v38
	ds_load_u8 v37, v103
	ds_load_u8 v38, v1 offset:2000
	ds_load_u8 v103, v1 offset:1968
	ds_load_u8 v120, v1 offset:1936
	v_lshl_or_b32 v70, v72, 16, v70
	v_lshl_or_b32 v67, v123, 16, v67
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v78, v130, v129, 0xc0c0004
	v_perm_b32 v79, v128, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[67:70], v[5:8], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v72, v102, v74, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v74, v122, v121, 0xc0c0004
	v_perm_b32 v73, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v121, v132, v131, 0xc0c0004
	ds_load_u8 v102, v1 offset:1904
	ds_load_u8 v118, v1 offset:1872
	ds_load_u8 v119, v1 offset:1840
	ds_load_u8 v123, v1 offset:1808
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v37, v89, v37, 0xc0c0004
	v_lshl_or_b32 v7, v73, 16, v72
	v_lshl_or_b32 v6, v121, 16, v74
	ds_load_u8 v5, v1 offset:1696
	ds_load_u8 v8, v1 offset:1664
	ds_load_u8 v72, v1 offset:1760
	ds_load_u8 v73, v1 offset:1728
	ds_load_u8 v74, v1 offset:1568
	ds_load_u8 v121, v1 offset:1536
	ds_load_u8 v122, v1 offset:1632
	ds_load_u8 v124, v1 offset:1600
	ds_load_u8 v125, v4 offset:7808
	ds_load_u8 v126, v4 offset:8064
	ds_load_u8 v131, v4 offset:7936
	ds_load_u8 v132, v4 offset:7680
	ds_load_u8 v133, v4 offset:7296
	ds_load_u8 v134, v4 offset:7552
	ds_load_u8 v135, v4 offset:7424
	ds_load_u8 v136, v4 offset:7168
	ds_load_u8 v137, v4 offset:6784
	ds_load_u8 v138, v4 offset:7040
	ds_load_u8 v139, v4 offset:6912
	ds_load_u8 v140, v4 offset:6656
	ds_load_u8 v141, v4 offset:6272
	ds_load_u8 v142, v4 offset:6528
	ds_load_u8 v143, v4 offset:6400
	ds_load_u8 v144, v4 offset:6144
	ds_load_u8 v145, v1 offset:1776
	ds_load_u8 v146, v1 offset:1744
	ds_load_u8 v147, v1 offset:1712
	ds_load_u8 v148, v1 offset:1680
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v4, v8, v5, 0xc0c0004
	ds_load_u8 v8, v1 offset:1648
	ds_load_u8 v149, v1 offset:1616
	ds_load_u8 v150, v1 offset:1584
	ds_load_u8 v1, v1 offset:1552
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v5, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v72, v121, v74, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v73, v124, v122, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v74, v132, v125, 0xc0c0004
	v_perm_b32 v121, v131, v126, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v122, v136, v133, 0xc0c0004
	v_perm_b32 v124, v135, v134, 0xc0c0004
	v_lshl_or_b32 v62, v37, 16, v57
	v_perm_b32 v37, v107, v106, 0xc0c0004
	v_perm_b32 v57, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v125, v140, v137, 0xc0c0004
	v_perm_b32 v126, v139, v138, 0xc0c0004
	v_lshl_or_b32 v5, v5, 16, v4
	v_lshl_or_b32 v4, v73, 16, v72
	v_lshl_or_b32 v74, v121, 16, v74
	v_lshl_or_b32 v73, v124, 16, v122
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v121, v144, v141, 0xc0c0004
	v_perm_b32 v122, v143, v142, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[40:47], v[63:66], v[59:62], v[40:47] neg_lo:[1,1,0]
	v_lshl_or_b32 v62, v39, 16, v37
	v_lshl_or_b32 v61, v75, 16, v57
	v_lshl_or_b32 v60, v77, 16, v76
	v_lshl_or_b32 v59, v79, 16, v78
	v_perm_b32 v37, v120, v103, 0xc0c0004
	v_perm_b32 v38, v38, v88, 0xc0c0004
	v_perm_b32 v39, v123, v119, 0xc0c0004
	v_perm_b32 v57, v118, v102, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v63, v148, v147, 0xc0c0004
	v_perm_b32 v64, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v150, 0xc0c0004
	v_perm_b32 v8, v149, v8, 0xc0c0004
	v_lshl_or_b32 v72, v126, 16, v125
	v_lshl_or_b32 v71, v122, 16, v121
	v_wmma_i32_16x16x16_iu8 v[40:47], v[67:70], v[59:62], v[40:47] neg_lo:[1,1,0]
	v_lshl_or_b32 v62, v38, 16, v37
	v_lshl_or_b32 v61, v57, 16, v39
	v_lshl_or_b32 v60, v64, 16, v63
	v_lshl_or_b32 v59, v8, 16, v1
	v_wmma_i32_16x16x16_iu8 v[49:56], v[71:74], v[4:7], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[40:47], v[71:74], v[59:62], v[40:47] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v4, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v51
	v_cvt_f32_i32_e32 v6, v52
	v_cvt_f32_i32_e32 v7, v53
	v_cvt_f32_i32_e32 v37, v54
	v_cvt_f32_i32_e32 v38, v55
	v_cvt_f32_i32_e32 v39, v56
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v8, v49
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s6, s42, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s6, s6, 25
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s6, s42, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s7, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s6, s6, 7
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v64, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s8, s6, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s6, s41
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v34, s6, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v50, v33, s8, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v49, v35, s6, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s6, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v51, v32, s8, 1
	v_add_lshl_u32 v52, v31, s8, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v53, v29, s8, 1
	v_add_lshl_u32 v54, v27, s8, 1
	v_add_lshl_u32 v55, v30, s8, 1
	v_add_lshl_u32 v56, v28, s8, 1
	v_add_lshl_u32 v57, v26, s8, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v49, 0x80000000, v49 :: v_dual_cndmask_b32 v52, 0x80000000, v52
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s6, s14
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_mov_b32 v60, 0
	v_dual_cndmask_b32 v57, 0x80000000, v57 :: v_dual_mov_b32 v62, 0
	s_clause 0x7
	buffer_load_u16 v50, v50, s[4:7], 0 offen
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	buffer_load_u16 v52, v52, s[4:7], 0 offen
	buffer_load_u16 v53, v53, s[4:7], 0 offen
	buffer_load_u16 v54, v54, s[4:7], 0 offen
	buffer_load_u16 v55, v55, s[4:7], 0 offen
	buffer_load_u16 v56, v56, s[4:7], 0 offen
	buffer_load_u16 v57, v57, s[4:7], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s13, s13, 0xffff
	s_clause 0x1
	buffer_load_u16 v1, v1, s[12:15], 0 offen
	buffer_load_u16 v49, v49, s[12:15], 0 offen
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v73, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s8, 0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s20, 0
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v2, s34, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v3, s34, v36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v59, v3 offset:416
	ds_load_u8 v60, v3 offset:384
	ds_load_u8 v61, v3 offset:480
	ds_load_u8 v62, v3 offset:448
	ds_load_u8 v63, v3 offset:288
	ds_load_u8 v64, v3 offset:256
	ds_load_u8 v65, v3 offset:352
	ds_load_u8 v66, v3 offset:320
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v36, s43, v58
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v48, s34, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v58, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v59, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v60, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v66, v65, 0xc0c0004
	ds_load_u8 v62, v3 offset:160
	ds_load_u8 v63, v3 offset:128
	ds_load_u8 v64, v3 offset:224
	ds_load_u8 v65, v3 offset:192
	v_lshl_or_b32 v77, v59, 16, v58
	v_lshl_or_b32 v76, v61, 16, v60
	ds_load_u8 v58, v3 offset:96
	ds_load_u8 v59, v3 offset:64
	ds_load_u8 v60, v3
	ds_load_u8 v61, v3 offset:32
	ds_load_u8 v66, v36 offset:1664
	ds_load_u8 v67, v36 offset:1920
	ds_load_u8 v68, v36 offset:1792
	ds_load_u8 v69, v36 offset:1536
	ds_load_u8 v70, v36 offset:1152
	ds_load_u8 v71, v36 offset:1408
	ds_load_u8 v72, v36 offset:1280
	ds_load_u8 v73, v36 offset:1024
	ds_load_u8 v74, v36 offset:640
	ds_load_u8 v75, v36 offset:896
	ds_load_u8 v78, v36 offset:768
	ds_load_u8 v79, v36 offset:512
	ds_load_u8 v82, v36 offset:128
	ds_load_u8 v83, v36 offset:384
	ds_load_u8 v84, v36 offset:256
	ds_load_u8 v85, v36
	ds_load_u8 v101, v3 offset:208
	ds_load_u8 v102, v3 offset:176
	ds_load_u8 v103, v3 offset:144
	ds_load_u8 v104, v3 offset:112
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v59, v60, v61, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v61, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v60, v69, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v61, 16, v60
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v67, v78, v75, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v66, v79, v74, 0xc0c0004
	v_perm_b32 v62, v63, v62, 0xc0c0004
	v_lshl_or_b32 v74, v58, 16, v59
	v_perm_b32 v63, v65, v64, 0xc0c0004
	v_perm_b32 v64, v73, v70, 0xc0c0004
	v_perm_b32 v65, v72, v71, 0xc0c0004
	v_lshl_or_b32 v79, v67, 16, v66
	v_mov_b32_e32 v73, s27
	v_lshl_or_b32 v75, v63, 16, v62
	v_mov_b32_e32 v72, s26
	ds_load_u8 v59, v3 offset:928
	ds_load_u8 v60, v3 offset:896
	ds_load_u8 v61, v3 offset:992
	ds_load_u8 v62, v3 offset:960
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v58, v85, v82, 0xc0c0004
	v_perm_b32 v63, v84, v83, 0xc0c0004
	v_lshl_or_b32 v80, v65, 16, v64
	v_dual_mov_b32 v71, s25 :: v_dual_mov_b32 v70, s24
	v_mov_b32_e32 v69, s23
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v78, v63, 16, v58
	v_dual_mov_b32 v68, s22 :: v_dual_mov_b32 v67, s21
	v_mov_b32_e32 v66, s20
	ds_load_u8 v82, v3 offset:800
	ds_load_u8 v83, v3 offset:768
	ds_load_u8 v84, v3 offset:864
	ds_load_u8 v85, v3 offset:832
	ds_load_u8 v108, v3 offset:976
	ds_load_u8 v109, v3 offset:944
	ds_load_u8 v110, v3 offset:912
	ds_load_u8 v111, v3 offset:880
	ds_load_u8 v90, v3 offset:464
	ds_load_u8 v94, v3 offset:432
	ds_load_u8 v95, v3 offset:400
	ds_load_u8 v96, v3 offset:368
	ds_load_u8 v97, v3 offset:336
	ds_load_u8 v98, v3 offset:304
	ds_load_u8 v99, v3 offset:272
	ds_load_u8 v100, v3 offset:240
	ds_load_u8 v105, v3 offset:80
	ds_load_u8 v106, v3 offset:48
	ds_load_u8 v107, v3 offset:16
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v86, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v87, v62, v61, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[58:65], v[78:81], v[74:77], v[66:73] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v77, v87, 16, v86
	ds_load_u8 v74, v3 offset:672
	ds_load_u8 v75, v3 offset:640
	ds_load_u8 v76, v3 offset:736
	ds_load_u8 v86, v3 offset:704
	ds_load_u8 v112, v3 offset:848
	ds_load_u8 v113, v3 offset:816
	ds_load_u8 v114, v3 offset:784
	ds_load_u8 v115, v3 offset:752
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v83, v85, v84, 0xc0c0004
	ds_load_u8 v84, v3 offset:544
	ds_load_u8 v85, v3 offset:512
	ds_load_u8 v87, v3 offset:608
	ds_load_u8 v88, v3 offset:576
	ds_load_u8 v89, v36 offset:3712
	ds_load_u8 v91, v36 offset:3968
	ds_load_u8 v92, v36 offset:3840
	ds_load_u8 v93, v36 offset:3584
	ds_load_u8 v116, v36 offset:3200
	ds_load_u8 v117, v36 offset:3456
	ds_load_u8 v118, v36 offset:3328
	ds_load_u8 v119, v36 offset:3072
	ds_load_u8 v120, v3 offset:720
	ds_load_u8 v121, v3 offset:688
	ds_load_u8 v122, v3 offset:656
	ds_load_u8 v123, v3 offset:624
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	v_perm_b32 v96, v97, v96, 0xc0c0004
	v_perm_b32 v99, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	v_perm_b32 v101, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v85, v88, v87, 0xc0c0004
	v_perm_b32 v102, v107, v106, 0xc0c0004
	v_lshl_or_b32 v96, v96, 16, v98
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v87, v93, v89, 0xc0c0004
	v_perm_b32 v75, v86, v76, 0xc0c0004
	ds_load_u8 v86, v36 offset:2688
	ds_load_u8 v124, v36 offset:2944
	ds_load_u8 v125, v36 offset:2816
	ds_load_u8 v126, v36 offset:2560
	ds_load_u8 v127, v36 offset:2176
	ds_load_u8 v128, v36 offset:2432
	ds_load_u8 v129, v36 offset:2304
	ds_load_u8 v130, v36 offset:2048
	ds_load_u8 v131, v3 offset:592
	ds_load_u8 v132, v3 offset:560
	ds_load_u8 v133, v3 offset:528
	ds_load_u8 v134, v3 offset:496
	v_perm_b32 v88, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v89, v119, v116, 0xc0c0004
	v_perm_b32 v91, v118, v117, 0xc0c0004
	v_lshl_or_b32 v76, v83, 16, v82
	v_lshl_or_b32 v75, v75, 16, v74
	v_lshl_or_b32 v74, v85, 16, v84
	v_lshl_or_b32 v85, v88, 16, v87
	v_lshl_or_b32 v84, v91, 16, v89
	ds_load_u8 v93, v3 offset:1312
	ds_load_u8 v116, v3 offset:1280
	ds_load_u8 v117, v3 offset:1376
	ds_load_u8 v118, v3 offset:1344
	v_perm_b32 v98, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v83, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v82, v126, v86, 0xc0c0004
	ds_load_u8 v86, v3 offset:1440
	ds_load_u8 v87, v3 offset:1408
	ds_load_u8 v88, v3 offset:1504
	ds_load_u8 v89, v3 offset:1472
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v92, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v91, v130, v127, 0xc0c0004
	v_lshl_or_b32 v83, v83, 16, v82
	ds_load_u8 v125, v3 offset:1520
	ds_load_u8 v126, v3 offset:1488
	ds_load_u8 v127, v3 offset:1456
	ds_load_u8 v128, v3 offset:1424
	ds_load_u8 v129, v3 offset:1392
	ds_load_u8 v130, v3 offset:1360
	ds_load_u8 v135, v3 offset:1328
	ds_load_u8 v136, v3 offset:1296
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v95, v90, v134, 0xc0c0004
	v_lshl_or_b32 v82, v92, 16, v91
	ds_load_u8 v91, v3 offset:1184
	ds_load_u8 v92, v3 offset:1152
	ds_load_u8 v119, v3 offset:1248
	ds_load_u8 v124, v3 offset:1216
	v_perm_b32 v103, v131, v123, 0xc0c0004
	v_lshl_or_b32 v97, v95, 16, v94
	v_wmma_i32_16x16x16_iu8 v[58:65], v[82:85], v[74:77], v[58:65] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v76, v116, v93, 0xc0c0004
	v_lshl_or_b32 v95, v100, 16, v99
	v_lshl_or_b32 v94, v101, 16, v102
	v_perm_b32 v99, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v74, v87, v86, 0xc0c0004
	v_perm_b32 v86, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v75, v89, v88, 0xc0c0004
	ds_load_u8 v116, v3 offset:1264
	ds_load_u8 v117, v3 offset:1232
	ds_load_u8 v118, v3 offset:1200
	ds_load_u8 v137, v3 offset:1168
	v_perm_b32 v100, v122, v121, 0xc0c0004
	v_perm_b32 v101, v120, v115, 0xc0c0004
	v_lshl_or_b32 v76, v86, 16, v76
	v_lshl_or_b32 v77, v75, 16, v74
	v_perm_b32 v102, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v87, v92, v91, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[66:73], v[78:81], v[94:97], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v88, v124, v119, 0xc0c0004
	ds_load_u8 v89, v3 offset:1056
	ds_load_u8 v91, v3 offset:1024
	ds_load_u8 v92, v3 offset:1120
	ds_load_u8 v93, v3 offset:1088
	ds_load_u8 v119, v36 offset:5760
	ds_load_u8 v124, v36 offset:6016
	ds_load_u8 v138, v36 offset:5888
	ds_load_u8 v139, v36 offset:5632
	ds_load_u8 v140, v36 offset:5248
	ds_load_u8 v141, v36 offset:5504
	ds_load_u8 v142, v36 offset:5376
	ds_load_u8 v143, v36 offset:5120
	v_lshl_or_b32 v80, v99, 16, v98
	v_lshl_or_b32 v79, v101, 16, v100
	v_lshl_or_b32 v78, v103, 16, v102
	v_lshl_or_b32 v75, v88, 16, v87
	ds_load_u8 v74, v36 offset:4736
	ds_load_u8 v86, v36 offset:4864
	ds_load_u8 v87, v36 offset:4608
	ds_load_u8 v88, v36 offset:4992
	ds_load_u8 v144, v36 offset:4224
	ds_load_u8 v145, v36 offset:4480
	ds_load_u8 v146, v36 offset:4352
	ds_load_u8 v147, v36 offset:4096
	ds_load_u8 v148, v3 offset:1136
	ds_load_u8 v149, v3 offset:1104
	ds_load_u8 v150, v3 offset:1072
	ds_load_u8 v151, v3 offset:1040
	v_perm_b32 v94, v136, v135, 0xc0c0004
	v_perm_b32 v95, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v97, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	v_perm_b32 v96, v137, v118, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v91, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v93, v138, v124, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v92, v139, v119, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v87, v87, v74, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v86, v86, v88, 0xc0c0004
	v_perm_b32 v141, v142, v141, 0xc0c0004
	v_perm_b32 v119, v143, v140, 0xc0c0004
	ds_load_u8 v124, v3 offset:1952
	ds_load_u8 v138, v3 offset:1920
	ds_load_u8 v139, v3 offset:2016
	ds_load_u8 v140, v3 offset:1984
	ds_load_u8 v142, v3 offset:1824
	ds_load_u8 v143, v3 offset:1792
	ds_load_u8 v152, v3 offset:1888
	ds_load_u8 v153, v3 offset:1856
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v144, v147, v144, 0xc0c0004
	v_perm_b32 v145, v146, v145, 0xc0c0004
	v_lshl_or_b32 v74, v91, 16, v89
	v_lshl_or_b32 v89, v93, 16, v92
	v_lshl_or_b32 v88, v141, 16, v119
	v_lshl_or_b32 v87, v86, 16, v87
	v_lshl_or_b32 v86, v145, 16, v144
	ds_load_u8 v2, v2
	ds_load_u8 v119, v3 offset:2000
	ds_load_u8 v141, v3 offset:1968
	ds_load_u8 v144, v3 offset:1936
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v98, v151, v150, 0xc0c0004
	v_perm_b32 v99, v149, v148, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[58:65], v[86:89], v[74:77], v[58:65] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v91, v138, v124, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v93, v143, v142, 0xc0c0004
	v_perm_b32 v92, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v142, v153, v152, 0xc0c0004
	ds_load_u8 v124, v3 offset:1904
	ds_load_u8 v138, v3 offset:1872
	ds_load_u8 v139, v3 offset:1840
	ds_load_u8 v140, v3 offset:1808
	v_lshl_or_b32 v77, v92, 16, v91
	v_lshl_or_b32 v76, v142, 16, v93
	ds_load_u8 v74, v3 offset:1696
	ds_load_u8 v75, v3 offset:1664
	ds_load_u8 v91, v3 offset:1760
	ds_load_u8 v92, v3 offset:1728
	ds_load_u8 v93, v3 offset:1568
	ds_load_u8 v142, v3 offset:1536
	ds_load_u8 v143, v3 offset:1632
	ds_load_u8 v145, v3 offset:1600
	ds_load_u8 v146, v36 offset:7808
	ds_load_u8 v147, v36 offset:8064
	ds_load_u8 v152, v36 offset:7936
	ds_load_u8 v153, v36 offset:7680
	ds_load_u8 v154, v36 offset:7296
	ds_load_u8 v155, v36 offset:7552
	ds_load_u8 v156, v36 offset:7424
	ds_load_u8 v157, v36 offset:7168
	ds_load_u8 v158, v36 offset:6784
	ds_load_u8 v159, v36 offset:7040
	ds_load_u8 v160, v36 offset:6912
	ds_load_u8 v161, v36 offset:6656
	ds_load_u8 v162, v36 offset:6272
	ds_load_u8 v163, v36 offset:6528
	ds_load_u8 v164, v36 offset:6400
	ds_load_u8 v36, v36 offset:6144
	ds_load_u8 v165, v3 offset:1776
	ds_load_u8 v166, v3 offset:1744
	ds_load_u8 v167, v3 offset:1712
	ds_load_u8 v168, v3 offset:1680
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v75, v92, v91, 0xc0c0004
	ds_load_u8 v169, v3 offset:1648
	ds_load_u8 v170, v3 offset:1616
	ds_load_u8 v171, v3 offset:1584
	ds_load_u8 v3, v3 offset:1552
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v91, v142, v93, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v93, v153, v146, 0xc0c0004
	v_perm_b32 v142, v152, v147, 0xc0c0004
	v_perm_b32 v2, v108, v2, 0xc0c0004
	v_perm_b32 v92, v145, v143, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v143, v157, v154, 0xc0c0004
	v_perm_b32 v145, v156, v155, 0xc0c0004
	v_lshl_or_b32 v93, v142, 16, v93
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v146, v161, v158, 0xc0c0004
	v_perm_b32 v147, v160, v159, 0xc0c0004
	v_lshl_or_b32 v75, v75, 16, v74
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v142, v164, v163, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v36, v36, v162, 0xc0c0004
	v_lshl_or_b32 v74, v92, 16, v91
	v_lshl_or_b32 v92, v145, 16, v143
	v_lshl_or_b32 v91, v147, 16, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v90, v142, 16, v36
	v_perm_b32 v36, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v3, v171, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[58:65], v[90:93], v[74:77], v[58:65] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v81, v2, 16, v36
	v_perm_b32 v2, v128, v127, 0xc0c0004
	v_perm_b32 v36, v126, v125, 0xc0c0004
	v_cvt_f32_i32_e32 v59, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[82:85], v[78:81], v[66:73] neg_lo:[1,1,0]
	v_lshl_or_b32 v80, v95, 16, v94
	v_lshl_or_b32 v81, v36, 16, v2
	v_lshl_or_b32 v79, v97, 16, v96
	v_lshl_or_b32 v78, v99, 16, v98
	v_perm_b32 v2, v144, v141, 0xc0c0004
	v_perm_b32 v36, v119, v48, 0xc0c0004
	v_perm_b32 v48, v140, v139, 0xc0c0004
	v_perm_b32 v82, v138, v124, 0xc0c0004
	v_perm_b32 v83, v168, v167, 0xc0c0004
	v_perm_b32 v84, v166, v165, 0xc0c0004
	v_perm_b32 v85, v170, v169, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[66:73], v[86:89], v[78:81], v[66:73] neg_lo:[1,1,0]
	v_lshl_or_b32 v81, v36, 16, v2
	v_lshl_or_b32 v80, v82, 16, v48
	v_lshl_or_b32 v79, v84, 16, v83
	v_lshl_or_b32 v78, v85, 16, v3
	v_cvt_f32_i32_e32 v3, v58
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_wmma_i32_16x16x16_iu8 v[66:73], v[90:93], v[78:81], v[66:73] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s6, s17, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v49.h, v55.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s6, s6, 25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v36.h, v57.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s7, s17, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s6, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s9, s7, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s7, s15
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s9, s41
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v2, v34, s9, 1
	v_add_lshl_u32 v34, v35, s9, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s10, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s9, s9, s35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s10
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v33, v33, s9, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v32, v32, s9, 1
	v_add_lshl_u32 v31, v31, s9, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v29, v29, s9, 1
	v_add_lshl_u32 v27, v27, s9, 1
	v_add_lshl_u32 v30, v30, s9, 1
	v_add_lshl_u32 v28, v28, s9, 1
	v_add_lshl_u32 v26, v26, s9, 1
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v35, v2, s[12:15], 0 offen
	buffer_load_u16 v34, v34, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v2, 0x80000000, v32 :: v_dual_cndmask_b32 v29, 0x80000000, v29
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v30, 0x80000000, v30
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_and_b32 v57, 14, v0
	s_clause 0x7
	buffer_load_u16 v32, v33, s[4:7], 0 offen
	buffer_load_u16 v33, v2, s[4:7], 0 offen
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	v_mov_b16_e32 v2.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v2.h, v49.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v51.h, v53.l
	v_mov_b16_e32 v53.h, v51.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_bfe_i32 v74, v0, 0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v51.l, v2.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v58, 2, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v48.h, v56.l
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v56, 7, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v50.h, v54.l
	v_mov_b16_e32 v52.h, v52.l
	v_mov_b16_e32 v54.h, v50.l
	v_mov_b16_e32 v36.l, v2.l
	v_mov_b16_e32 v48.l, v2.l
	v_mov_b16_e32 v49.l, v2.l
	v_mov_b16_e32 v50.l, v2.l
	v_mov_b16_e32 v52.l, v2.l
	v_mov_b16_e32 v53.l, v2.l
	v_mov_b16_e32 v54.l, v2.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v79, v2, v51 :: v_dual_and_b32 v74, 0x440, v74
	v_dual_mul_f32 v75, v2, v36 :: v_dual_and_b32 v58, 0x3f8, v58
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v56, s35, v56
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v78, v2, v50 :: v_dual_and_b32 v55, 0x7f, v0
	v_mul_f32_e32 v76, v2, v48
	v_mul_f32_e32 v77, v2, v49
	v_mul_f32_e32 v80, v2, v52
	v_mul_f32_e32 v81, v2, v53
	v_mul_f32_e32 v82, v2, v54
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v2.h, v1.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v58, v74, v58
	.loc	1 392 23 is_stmt 0              ; generate_amdgcn.py:392:23
	s_mul_i32 s4, s40, s35
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v41, v81, v41, v20
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_add_i32 s4, s4, s33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v47, v75, v47, v18
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v1, s4, v55, v56
	.loc	1 392 9 is_stmt 0               ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v55, v57, 10, v58
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v49, v2, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v20, v41, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v51, v2, v51
	v_mul_f32_e32 v52, v2, v52
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v18, v47, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v20, v49, v37, v15
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v53, v2, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v51, v6, v13
	v_fma_f32 v43, v79, v43, v22
	v_fma_f32 v44, v78, v44, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v15, v20, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v37, v53, v4, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v13, v6, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v45, v77, v45, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v22, v43, s3
	v_cndmask_b32_e64 v23, v23, v44, s3
	v_cndmask_b32_e64 v11, v11, v37, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v43, v55, 24, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v24, v45, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v44, v55, 32, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v45, v55, 40, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v20, 16, v27
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v36, v2, v36 :: v_dual_lshlrev_b32 v27, 16, v30
	v_mul_f32_e32 v54, v2, v54
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v48, v2, v48
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v18, v36, v39, v17
	v_fma_f32 v36, v52, v5, v12
	v_fma_f32 v8, v54, v8, v10
	v_fma_f32 v42, v80, v42, v21
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v39, v55, 8, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v17, v18, s3
	v_cndmask_b32_e64 v6, v12, v36, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v12, 16, v31
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v50, v2, v50
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v21, v42, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v42, v55, 16, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b64 v[4:5], 2, v[1:2]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v10, v8, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v8, 16, v32
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v18, vcc_lo, s0, v4
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v4, 16, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v35, v4, v28 :: v_dual_lshlrev_b32 v10, 16, v33
	v_mul_f32_e32 v31, v4, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v50, v7, v14
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v4, v10
	v_mul_f32_e32 v33, v4, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v14, v7, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v14, 16, v29
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v29, v4, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v40, v82, v40, v19
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v4, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v29, v3, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v19, v40, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v19, v48, v38, v16
	v_fma_f32 v29, v31, v60, v6
	v_fma_f32 v31, v33, v62, v7
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v38, 0, v55
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v3, s2
	v_cndmask_b32_e64 v16, v16, v19, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_ci_u32_e64 v19, null, s1, v5, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v5, 16, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v46, v76, v46, v25
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v34, v4, v27
	v_mul_f32_e32 v4, v4, v26
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v33, v35, v64, v16
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v5, v8
	v_mul_f32_e32 v10, v5, v10
	v_mul_f32_e32 v12, v5, v12
	v_mul_f32_e32 v14, v5, v14
	v_mul_f32_e32 v20, v5, v20
	v_mul_f32_e32 v27, v5, v27
	v_mul_f32_e32 v28, v5, v28
	v_mul_f32_e32 v5, v5, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v46, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v8, v66, v40
	v_fma_f32 v26, v30, v59, v11
	v_fma_f32 v35, v10, v67, v41
	v_fma_f32 v36, v12, v68, v21
	v_fma_f32 v30, v32, v61, v13
	v_fma_f32 v37, v14, v69, v22
	v_fma_f32 v49, v20, v70, v23
	v_fma_f32 v50, v5, v73, v47
	v_fma_f32 v32, v34, v63, v15
	v_fma_f32 v34, v4, v65, v17
	v_fma_f32 v27, v27, v71, v24
	v_fma_f32 v28, v28, v72, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v40, v8, s2
	v_cndmask_b32_e64 v4, v11, v26, s2
	v_cndmask_b32_e64 v5, v41, v35, s2
	v_cndmask_b32_e64 v6, v6, v29, s2
	v_cndmask_b32_e64 v12, v7, v31, s2
	v_cndmask_b32_e64 v7, v21, v36, s2
	v_cndmask_b32_e64 v10, v13, v30, s2
	v_cndmask_b32_e64 v11, v22, v37, s2
	v_cndmask_b32_e64 v13, v23, v49, s2
	v_cndmask_b32_e64 v21, v47, v50, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v46, v55, 48, 0
	v_xad_u32 v48, v55, 56, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v15, v32, s2
	v_cndmask_b32_e64 v16, v16, v33, s2
	v_cndmask_b32_e64 v20, v17, v34, s2
	v_cndmask_b32_e64 v15, v24, v27, s2
	v_cndmask_b32_e64 v17, v25, v28, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_b64 v38, v[2:3]
	ds_store_b64 v39, v[4:5]
	ds_store_b64 v42, v[6:7]
	ds_store_b64 v43, v[10:11]
	ds_store_b64 v44, v[12:13]
	ds_store_b64 v45, v[14:15]
	ds_store_b64 v46, v[16:17]
	ds_store_b64 v48, v[20:21]
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v21, v[18:19], off
	v_and_b32_e32 v2, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_bfe_i32 v0, v0, 7, 1
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v3, 0x380, v9
	v_lshlrev_b32_e32 v4, 2, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v2, 6, v2
	v_and_b32_e32 v0, 0x440, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v0, v0, v2
	v_or3_b32 v0, v3, v4, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v2, 0, v0
	v_xad_u32 v3, 0x808, v0, 0
	v_xad_u32 v4, 0x1010, v0, 0
	v_xad_u32 v5, 0x1818, v0, 0
	v_xad_u32 v6, 0x2020, v0, 0
	v_xad_u32 v7, 0x2828, v0, 0
	v_xad_u32 v20, 0x3030, v0, 0
	v_xad_u32 v0, 0x3838, v0, 0
	ds_load_b64 v[16:17], v2
	ds_load_b64 v[14:15], v3
	ds_load_b64 v[12:13], v4
	ds_load_b64 v[10:11], v5
	ds_load_b64 v[8:9], v6
	ds_load_b64 v[6:7], v7
	ds_load_b64 v[4:5], v20
	ds_load_b64 v[2:3], v0
.LBB0_13:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v20, v21, v16
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s8, vcc_lo, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s8
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end85
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s8
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s35, 1, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s0, v18
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_15:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v20, v21, v14
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s35, 2, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s0, v18
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_17:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v20, v21, v12
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[18:19], null, s35, 6, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s0, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_19:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v10
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s35, 3, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s0, v18
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_21:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v8
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[18:19], null, s35, 10, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s0, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_23:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v6
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[18:19], null, s35, 12, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s0, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_25:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v4
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[18:19], null, s35, 14, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s0, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_27:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v2
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v18, s35, 4, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s0, v18
	v_add_co_ci_u32_e64 v19, null, s1, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_29:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v17
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[16:17], null, s35, 18, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s0, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s1, v17, vcc_lo
	global_load_b32 v19, v[16:17], off
.LBB0_31:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v18, v19, v15
	global_atomic_cmpswap_b32 v0, v[16:17], v[18:19], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v19
	v_mov_b32_e32 v19, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[14:15], null, s35, 20, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v15, 31, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[14:15], 2, v[14:15]
	v_add_co_u32 v14, vcc_lo, s0, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s1, v15, vcc_lo
	global_load_b32 v17, v[14:15], off
.LBB0_33:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v13
	global_atomic_cmpswap_b32 v0, v[14:15], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[12:13], null, s35, 22, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s0, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s1, v13, vcc_lo
	global_load_b32 v15, v[12:13], off
.LBB0_35:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v14, v15, v11
	global_atomic_cmpswap_b32 v0, v[12:13], v[14:15], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v15
	v_mov_b32_e32 v15, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[10:11], null, s35, 24, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v11, 31, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_co_u32 v10, vcc_lo, s0, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s1, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_37:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v9
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[8:9], null, s35, 26, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s0, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s1, v9, vcc_lo
	global_load_b32 v11, v[8:9], off
.LBB0_39:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v10, v11, v7
	global_atomic_cmpswap_b32 v0, v[8:9], v[10:11], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v11
	v_mov_b32_e32 v11, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_39
; %bb.40:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[6:7], null, s35, 28, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v7, 31, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_co_u32 v6, vcc_lo, s0, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, s1, v7, vcc_lo
	global_load_b32 v9, v[6:7], off
.LBB0_41:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v5
	global_atomic_cmpswap_b32 v0, v[6:7], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_41
; %bb.42:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 30, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s0, v0
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	s_mov_b32 s0, 0
	global_load_b32 v5, v[0:1], off
.LBB0_43:                               ; %atomicrmw.start
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
	s_cbranch_execnz .LBB0_43
; %bb.44:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
		.amdhsa_next_free_vgpr 254
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 254
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16116
; TotalNumSgprs: 48
; NumVgprs: 254
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 254
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     254
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
