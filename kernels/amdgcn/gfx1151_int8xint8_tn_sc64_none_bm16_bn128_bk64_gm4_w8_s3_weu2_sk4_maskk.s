	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s6, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s8, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v10, 7, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v29, 3, v0
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v9, 2, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v32, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v28, 15, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v6, 32, v29
	v_or_b32_e32 v31, 0x3f0, v0
	s_mov_b32 s35, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v38, 0, v32
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s28, 15
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
	s_lshr_b32 s11, s11, 28
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
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v7, s28, v2
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s10, 0, s5
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s5
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s10
	s_sub_i32 s5, s5, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s20, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s9, s20
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s22, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s7, s22
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s16, s7
	s_sub_i32 s19, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s18, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v1, 4, v10
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[4:5], null, s29, v29, v[1:2]
	s_mov_b32 s11, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s18, s18
	s_mov_b32 s10, 0x7ffffffe
	s_delay_alu instid0(SALU_CYCLE_2)
	s_mul_i32 s19, s19, s18
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v5, s29, 5, v4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s18, s19
	s_xor_b32 s19, s2, s22
	s_add_i32 s4, s18, s4
	s_ashr_i32 s26, s19, 31
	s_mul_hi_u32 s4, s5, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s18, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s21, s4, s7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s19, s11
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s5, s5, s21
	s_add_i32 s21, s4, 1
	s_sub_i32 s23, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s21, s4
	s_cselect_b32 s5, s23, s5
	s_add_i32 s21, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s21, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s7, s3, 6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s3, s6, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s27, s4, s26
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s4, s3, 31
.Ltmp15:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s24, s27, s26
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s4, s4, 26
.Ltmp17:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s25, s24, s22
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v8, s7, v2
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s22, s3, s4
.Ltmp19:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s2, s25
.Ltmp20:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s21, s6, 0xff
.Ltmp21:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s20
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v11, s7, v29
	v_or_b32_e32 v12, s7, v6
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s30, s24, 7
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v8
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s31, s3, 4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s21, 0xff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s23, s29, s7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s6, v11
	v_cmp_gt_i32_e64 s4, s6, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v3, 12, v9
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s23, s30, s23
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v8, s23, v4
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 346 30 is_stmt 1              ; generate_amdgcn.py:346:30
	v_add3_u32 v7, v7, v3, s31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s2, s2, s3
	s_and_b32 s4, s4, s3
	s_cmpk_gt_i32 s21, 0x1ff
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s5, s28, s7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s20, s7, 0x100
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v12, s5, v7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v13, s20, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v11, s23, v5
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v22, s20, v29
	v_or_b32_e32 v6, s20, v6
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s36, s28, 8
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s37, s29, 8
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v13
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v11, 0x80000000, v11, s4
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	s_add_i32 s23, s23, s37
	.loc	1 346 30 is_stmt 1              ; generate_amdgcn.py:346:30
	v_add3_u32 v7, s5, s36, v7
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s6, v22
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v4, s23, v4
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s6, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v5, s23, v5
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[14:17], v8, s[16:19], 0 offen
	buffer_load_b128 v[18:21], v11, s[16:19], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s5, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v26, v12, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v27, v6, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[22:25], v4, s[16:19], 0 offen
	buffer_load_b128 v[33:36], v5, s[16:19], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v4, 1, v0
	v_lshrrev_b32_e32 v5, 4, v0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v37, 0, v9
	s_mov_b64 s[4:5], s[14:15]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s21, 0x2ff
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v30, 0x70, v4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v38, v[18:21] offset:4096
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(3)
	ds_store_b32 v37, v26 offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v38, v[14:17]
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v4, v5, 1, v30
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v37, v27 offset:17408
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v38, v[22:25] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v38, v[33:36] offset:12288
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v8, 2, v4
	v_or_b32_e32 v11, 4, v4
	v_or_b32_e32 v12, 6, v4
	v_or_b32_e32 v13, 8, v4
	v_or_b32_e32 v5, 10, v4
	v_or_b32_e32 v6, 12, v4
	v_or_b32_e32 v7, 14, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v33, 0x3f0, v0
	s_mov_b32 s14, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr33
.LBB0_3:                                ; %Flow65
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v14, s31, v28
	s_ashr_i32 s33, s22, 6
	v_or_b32_e32 v26, s30, v4
	v_or_b32_e32 v25, s30, v8
	v_or_b32_e32 v24, s30, v11
	v_mul_lo_u32 v27, v14, s33
	v_or_b32_e32 v22, s30, v12
	v_or_b32_e32 v20, s30, v13
	v_or_b32_e32 v23, s30, v5
	v_or_b32_e32 v21, s30, v6
	v_or_b32_e32 v19, s30, v7
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v4, s7, v29
	v_add3_u32 v6, s7, v2, 0x200
	s_lshl_b32 s14, s27, 7
	s_lshl_b32 s18, s26, 7
	v_or_b32_e32 v36, 0x200, v2
	v_add_nc_u32_e32 v5, 0x220, v4
	v_dual_mov_b32 v11, 0 :: v_dual_add_nc_u32 v4, 0x200, v4
	v_mul_lo_u32 v6, s28, v6
	v_mov_b32_e32 v12, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v5, s29, v5
	v_mul_lo_u32 v4, s29, v4
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s15, s21, 8
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s21, s13, 0xffff
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add3_u32 v33, v6, s31, v3
	s_mov_b32 s20, s12
	v_add3_u32 v5, v5, s14, v1
	v_add3_u32 v1, v4, s14, v1
	s_and_b32 s25, s5, 0xffff
	s_mov_b32 s24, s4
	s_add_i32 s14, 0, 0x4000
	v_subrev_nc_u32_e32 v34, s18, v5
	v_subrev_nc_u32_e32 v35, s18, v1
	v_mov_b32_e32 v1, 0
	s_add_i32 s15, s15, -2
	s_add_i32 s34, 0, 0x4400
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v4, v1
	v_dual_mov_b32 v5, v1 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v7, v1 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v17, 0
	s_add_i32 s28, 0, 0x2000
	s_mov_b32 s38, 1
	s_mov_b32 s18, s10
	s_mov_b32 s19, s11
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s39, s7
	.loc	1 362 29 is_stmt 1              ; generate_amdgcn.py:362:29
	s_ashr_i32 s7, s7, 31
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_add_nc_u32_e32 v37, s39, v36
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s7, s7, 26
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_add_nc_u32_e32 v38, s39, v29
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s7, s39, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s7, s7, 6
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v37
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s7, s33
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v39, v27, s7, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s7, s7, s29
	.loc	1 366 22 is_stmt 0              ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v40, v25, s7, 1
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v37, 0x80000000, v33, vcc_lo
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v41, v24, s7, 1
	v_add_lshl_u32 v42, v22, s7, 1
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v85, v37, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v37, v26, s7, 1
	v_add_lshl_u32 v43, v20, s7, 1
	v_add_lshl_u32 v44, v23, s7, 1
	v_add_lshl_u32 v45, v21, s7, 1
	v_add_lshl_u32 v46, v19, s7, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v42, 0x80000000, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v44, 0x80000000, v44
	v_dual_cndmask_b32 v41, 0x80000000, v41 :: v_dual_cndmask_b32 v46, 0x80000000, v46
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v86, v39, s[20:23], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x7
	buffer_load_u16 v87, v37, s[24:27], 0 offen
	buffer_load_u16 v88, v40, s[24:27], 0 offen
	buffer_load_u16 v89, v41, s[24:27], 0 offen
	buffer_load_u16 v90, v42, s[24:27], 0 offen
	buffer_load_u16 v91, v43, s[24:27], 0 offen
	buffer_load_u16 v92, v44, s[24:27], 0 offen
	buffer_load_u16 v93, v45, s[24:27], 0 offen
	buffer_load_u16 v94, v46, s[24:27], 0 offen
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_add_nc_u32_e32 v37, 0x200, v38
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_add_nc_u32_e32 v38, 0x220, v38
	s_mov_b32 s7, s14
	s_mov_b32 s14, s34
	s_mov_b32 s34, s35
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v39, s34, v30, v28
	s_mov_b32 s35, s28
	v_cndmask_b32_e32 v37, 0x80000000, v35, vcc_lo
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v38, 0x80000000, v34, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[45:48], v37, s[16:19], 0 offen
	buffer_load_b128 v[49:52], v38, s[16:19], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v37, s7, v28
	v_add_nc_u32_e32 v38, s7, v31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v37 offset:208
	ds_load_u8 v41, v37 offset:240
	ds_load_u8 v42, v37 offset:224
	ds_load_u8 v43, v37 offset:192
	ds_load_u8 v44, v37 offset:144
	ds_load_u8 v53, v37 offset:176
	ds_load_u8 v54, v37 offset:160
	ds_load_u8 v55, v37 offset:128
	ds_load_u8 v56, v37 offset:80
	ds_load_u8 v57, v37 offset:112
	ds_load_u8 v58, v37 offset:96
	ds_load_u8 v59, v37 offset:64
	ds_load_u8 v60, v37
	ds_load_u8 v61, v37 offset:16
	ds_load_u8 v62, v37 offset:32
	ds_load_u8 v63, v37 offset:48
	ds_load_u8 v64, v39 offset:1664
	ds_load_u8 v65, v39 offset:1920
	ds_load_u8 v66, v39 offset:1792
	ds_load_u8 v67, v39 offset:1536
	ds_load_u8 v68, v39 offset:1152
	ds_load_u8 v69, v39 offset:1408
	ds_load_u8 v70, v39 offset:1280
	ds_load_u8 v71, v39 offset:1024
	ds_load_u8 v72, v39 offset:640
	ds_load_u8 v73, v39 offset:896
	ds_load_u8 v74, v39 offset:768
	ds_load_u8 v75, v39 offset:512
	ds_load_u8 v76, v39 offset:128
	ds_load_u8 v77, v39 offset:384
	ds_load_u8 v78, v39 offset:256
	ds_load_u8 v79, v39
	ds_load_u8 v80, v37 offset:464
	ds_load_u8 v81, v37 offset:496
	ds_load_u8 v82, v37 offset:480
	ds_load_u8 v83, v37 offset:448
	ds_load_u8 v84, v37 offset:400
	ds_load_u8 v95, v37 offset:432
	ds_load_u8 v96, v37 offset:416
	ds_load_u8 v97, v37 offset:384
	ds_load_u8 v98, v37 offset:336
	ds_load_u8 v99, v37 offset:368
	ds_load_u8 v100, v37 offset:352
	ds_load_u8 v101, v37 offset:320
	ds_load_u8 v102, v37 offset:272
	ds_load_u8 v103, v37 offset:304
	ds_load_u8 v104, v37 offset:288
	ds_load_u8 v105, v37 offset:256
	ds_load_u8 v106, v39 offset:3712
	ds_load_u8 v107, v39 offset:3968
	ds_load_u8 v108, v39 offset:3840
	ds_load_u8 v109, v39 offset:3584
	ds_load_u8 v110, v39 offset:3200
	ds_load_u8 v111, v39 offset:3456
	ds_load_u8 v112, v39 offset:3328
	ds_load_u8 v113, v39 offset:3072
	ds_load_u8 v114, v39 offset:2688
	ds_load_u8 v115, v39 offset:2944
	ds_load_u8 v116, v39 offset:2816
	ds_load_u8 v117, v39 offset:2560
	ds_load_u8 v118, v39 offset:2176
	ds_load_u8 v119, v39 offset:2432
	ds_load_u8 v120, v39 offset:2304
	ds_load_u8 v121, v39 offset:2048
	ds_load_u8 v122, v37 offset:720
	ds_load_u8 v123, v37 offset:752
	ds_load_u8 v124, v37 offset:736
	ds_load_u8 v125, v37 offset:704
	ds_load_u8 v126, v37 offset:656
	ds_load_u8 v127, v37 offset:688
	ds_load_u8 v128, v37 offset:672
	ds_load_u8 v129, v37 offset:640
	ds_load_u8 v130, v37 offset:592
	ds_load_u8 v131, v37 offset:624
	ds_load_u8 v132, v37 offset:608
	ds_load_u8 v133, v37 offset:576
	ds_load_u8 v134, v37 offset:528
	ds_load_u8 v135, v37 offset:560
	ds_load_u8 v136, v37 offset:544
	ds_load_u8 v137, v37 offset:512
	ds_load_u8 v138, v39 offset:5760
	ds_load_u8 v139, v39 offset:6016
	ds_load_u8 v140, v39 offset:5888
	ds_load_u8 v141, v39 offset:5632
	ds_load_u8 v142, v39 offset:5248
	ds_load_u8 v143, v39 offset:5504
	ds_load_u8 v144, v39 offset:5376
	ds_load_u8 v145, v39 offset:5120
	ds_load_u8 v146, v39 offset:4736
	ds_load_u8 v147, v39 offset:4992
	ds_load_u8 v148, v39 offset:4864
	ds_load_u8 v149, v39 offset:4608
	ds_load_u8 v150, v39 offset:4224
	ds_load_u8 v151, v39 offset:4480
	ds_load_u8 v152, v39 offset:4352
	ds_load_u8 v153, v39 offset:4096
	ds_load_u8 v154, v37 offset:976
	ds_load_u8 v38, v38
	ds_load_u8 v155, v37 offset:992
	ds_load_u8 v156, v37 offset:960
	ds_load_u8 v157, v37 offset:912
	ds_load_u8 v158, v37 offset:944
	ds_load_u8 v159, v37 offset:928
	ds_load_u8 v160, v37 offset:896
	ds_load_u8 v161, v37 offset:848
	ds_load_u8 v162, v37 offset:880
	ds_load_u8 v163, v37 offset:864
	ds_load_u8 v164, v37 offset:832
	ds_load_u8 v165, v37 offset:784
	ds_load_u8 v166, v37 offset:816
	ds_load_u8 v167, v37 offset:800
	ds_load_u8 v37, v37 offset:768
	ds_load_u8 v168, v39 offset:7808
	ds_load_u8 v169, v39 offset:8064
	ds_load_u8 v170, v39 offset:7936
	ds_load_u8 v171, v39 offset:7680
	ds_load_u8 v172, v39 offset:7296
	ds_load_u8 v173, v39 offset:7552
	ds_load_u8 v174, v39 offset:7424
	ds_load_u8 v175, v39 offset:7168
	ds_load_u8 v176, v39 offset:6784
	ds_load_u8 v177, v39 offset:7040
	ds_load_u8 v178, v39 offset:6912
	ds_load_u8 v179, v39 offset:6656
	ds_load_u8 v180, v39 offset:6272
	ds_load_u8 v181, v39 offset:6528
	ds_load_u8 v182, v39 offset:6400
	ds_load_u8 v39, v39 offset:6144
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v40, v43, v40, 0xc0c0004
	v_perm_b32 v41, v42, v41, 0xc0c0004
	v_perm_b32 v42, v55, v44, 0xc0c0004
	v_perm_b32 v43, v54, v53, 0xc0c0004
	v_perm_b32 v44, v59, v56, 0xc0c0004
	v_perm_b32 v53, v58, v57, 0xc0c0004
	v_perm_b32 v57, v60, v61, 0xc0c0004
	v_perm_b32 v58, v62, v63, 0xc0c0004
	v_perm_b32 v59, v67, v64, 0xc0c0004
	v_perm_b32 v60, v66, v65, 0xc0c0004
	v_perm_b32 v61, v71, v68, 0xc0c0004
	v_perm_b32 v62, v70, v69, 0xc0c0004
	v_perm_b32 v63, v75, v72, 0xc0c0004
	v_perm_b32 v64, v74, v73, 0xc0c0004
	v_perm_b32 v65, v79, v76, 0xc0c0004
	v_perm_b32 v66, v78, v77, 0xc0c0004
	v_perm_b32 v67, v83, v80, 0xc0c0004
	v_perm_b32 v68, v82, v81, 0xc0c0004
	v_perm_b32 v69, v97, v84, 0xc0c0004
	v_perm_b32 v70, v96, v95, 0xc0c0004
	v_perm_b32 v71, v101, v98, 0xc0c0004
	v_perm_b32 v72, v100, v99, 0xc0c0004
	v_perm_b32 v73, v105, v102, 0xc0c0004
	v_perm_b32 v74, v104, v103, 0xc0c0004
	v_perm_b32 v75, v109, v106, 0xc0c0004
	v_perm_b32 v76, v108, v107, 0xc0c0004
	v_perm_b32 v77, v113, v110, 0xc0c0004
	v_perm_b32 v78, v112, v111, 0xc0c0004
	v_perm_b32 v79, v117, v114, 0xc0c0004
	v_perm_b32 v80, v116, v115, 0xc0c0004
	v_perm_b32 v81, v121, v118, 0xc0c0004
	v_perm_b32 v82, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v109, v156, v154, 0xc0c0004
	v_perm_b32 v38, v155, v38, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v37, v37, v165, 0xc0c0004
	v_perm_b32 v114, v167, v166, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v39, v180, 0xc0c0004
	v_perm_b32 v121, v182, v181, 0xc0c0004
	v_lshl_or_b32 v56, v41, 16, v40
	v_lshl_or_b32 v55, v43, 16, v42
	v_lshl_or_b32 v54, v53, 16, v44
	v_lshl_or_b32 v53, v58, 16, v57
	v_lshl_or_b32 v60, v60, 16, v59
	v_lshl_or_b32 v59, v62, 16, v61
	v_lshl_or_b32 v58, v64, 16, v63
	v_lshl_or_b32 v57, v66, 16, v65
	v_perm_b32 v83, v125, v122, 0xc0c0004
	v_perm_b32 v84, v124, v123, 0xc0c0004
	v_perm_b32 v95, v129, v126, 0xc0c0004
	v_perm_b32 v96, v128, v127, 0xc0c0004
	v_perm_b32 v97, v133, v130, 0xc0c0004
	v_perm_b32 v98, v132, v131, 0xc0c0004
	v_perm_b32 v99, v137, v134, 0xc0c0004
	v_perm_b32 v100, v136, v135, 0xc0c0004
	v_perm_b32 v101, v141, v138, 0xc0c0004
	v_perm_b32 v102, v140, v139, 0xc0c0004
	v_perm_b32 v103, v145, v142, 0xc0c0004
	v_perm_b32 v104, v144, v143, 0xc0c0004
	v_perm_b32 v105, v149, v146, 0xc0c0004
	v_perm_b32 v106, v148, v147, 0xc0c0004
	v_perm_b32 v107, v153, v150, 0xc0c0004
	v_perm_b32 v108, v152, v151, 0xc0c0004
	v_lshl_or_b32 v64, v68, 16, v67
	v_lshl_or_b32 v63, v70, 16, v69
	v_lshl_or_b32 v62, v72, 16, v71
	v_lshl_or_b32 v61, v74, 16, v73
	v_lshl_or_b32 v68, v76, 16, v75
	v_lshl_or_b32 v67, v78, 16, v77
	v_lshl_or_b32 v66, v80, 16, v79
	v_lshl_or_b32 v65, v82, 16, v81
	v_lshl_or_b32 v80, v38, 16, v109
	v_lshl_or_b32 v77, v114, 16, v37
	v_lshl_or_b32 v81, v121, 16, v39
	v_wmma_i32_16x16x16_iu8 v[37:44], v[57:60], v[53:56], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v110, v160, v157, 0xc0c0004
	v_perm_b32 v111, v159, v158, 0xc0c0004
	v_perm_b32 v112, v164, v161, 0xc0c0004
	v_perm_b32 v113, v163, v162, 0xc0c0004
	v_perm_b32 v115, v171, v168, 0xc0c0004
	v_perm_b32 v116, v170, v169, 0xc0c0004
	v_perm_b32 v117, v175, v172, 0xc0c0004
	v_perm_b32 v118, v174, v173, 0xc0c0004
	v_perm_b32 v119, v179, v176, 0xc0c0004
	v_perm_b32 v120, v178, v177, 0xc0c0004
	v_lshl_or_b32 v72, v84, 16, v83
	v_lshl_or_b32 v71, v96, 16, v95
	v_lshl_or_b32 v70, v98, 16, v97
	v_lshl_or_b32 v69, v100, 16, v99
	v_lshl_or_b32 v76, v102, 16, v101
	v_lshl_or_b32 v75, v104, 16, v103
	v_lshl_or_b32 v74, v106, 16, v105
	v_lshl_or_b32 v73, v108, 16, v107
	v_wmma_i32_16x16x16_iu8 v[37:44], v[65:68], v[61:64], v[37:44] neg_lo:[1,1,0]
	v_lshl_or_b32 v79, v111, 16, v110
	v_lshl_or_b32 v78, v113, 16, v112
	v_lshl_or_b32 v84, v116, 16, v115
	v_lshl_or_b32 v83, v118, 16, v117
	v_lshl_or_b32 v82, v120, 16, v119
	v_wmma_i32_16x16x16_iu8 v[37:44], v[73:76], v[69:72], v[37:44] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s7, s38, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s7, 2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[37:44], v[81:84], v[77:80], v[37:44] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s38, s7, 0
	s_add_i32 s15, s15, -1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s28, s38, 10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s34, s38, 13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s40, s28, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s28, s34, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s7, s39, 0x100
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s34, s40, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s15, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v53, 16, v86
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v54, 16, v87
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v55, 16, v88
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v56, 16, v89
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v57, 16, v90
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v59, 16, v92
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v60, 16, v93
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v33, s36, v33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v60, v53, v60 :: v_dual_lshlrev_b32 v61, 16, v94
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v18, v60, v43
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v55, v53, v55
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v58, 16, v91
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v59, v53, v59 :: v_dual_add_nc_u32 v34, s37, v34
	v_mul_f32_e32 v54, v53, v54
	v_mul_f32_e32 v56, v53, v56
	v_mul_f32_e32 v57, v53, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v13, v55, v38
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v58, v53, v58
	v_mul_f32_e32 v53, v53, v61
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v35, s37, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v14, v56, v39 :: v_dual_add_nc_u32 v183, s40, v9
	v_dual_fmac_f32 v11, v54, v37 :: v_dual_add_nc_u32 v184, s28, v32
	v_dual_fmac_f32 v15, v57, v40 :: v_dual_fmac_f32 v16, v58, v41
	v_dual_fmac_f32 v17, v59, v42 :: v_dual_fmac_f32 v12, v53, v44
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_store_b32 v183, v85 offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v184, v[45:48]
	s_waitcnt vmcnt(0)
	ds_store_b128 v184, v[49:52] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v33, v31
	s_add_i32 s20, s39, 0x200
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v11, 0
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s34, 0, 0x4400
	s_add_i32 s28, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v40, v30, v28
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v29, 0
	v_mov_b32_e32 v30, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v1, s14, v28
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v34, s35, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v7, v1 offset:240
	ds_load_u8 v8, v1 offset:144
	ds_load_u8 v29, v1 offset:176
	ds_load_u8 v30, v1 offset:160
	ds_load_u8 v31, v1 offset:128
	ds_load_u8 v32, v1 offset:112
	ds_load_u8 v35, v1 offset:80
	ds_load_u8 v36, v1 offset:96
	ds_load_u8 v37, v1 offset:64
	ds_load_u8 v38, v1
	ds_load_u8 v39, v1 offset:16
	ds_load_u8 v41, v1 offset:32
	ds_load_u8 v42, v1 offset:48
	ds_load_u8 v2, v1 offset:208
	ds_load_u8 v3, v1 offset:224
	ds_load_u8 v5, v1 offset:192
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v3, v3, v7, 0xc0c0004
	v_perm_b32 v7, v30, v29, 0xc0c0004
	v_perm_b32 v30, v36, v32, 0xc0c0004
	v_perm_b32 v32, v41, v42, 0xc0c0004
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v6, s14, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v5, v2, 0xc0c0004
	v_perm_b32 v29, v37, v35, 0xc0c0004
	v_perm_b32 v5, v31, v8, 0xc0c0004
	v_mov_b32_e32 v42, v41
	ds_load_u8 v43, v34 offset:1664
	ds_load_u8 v44, v34 offset:1920
	ds_load_u8 v45, v34 offset:1792
	ds_load_u8 v46, v34 offset:1536
	ds_load_u8 v47, v34 offset:1152
	ds_load_u8 v48, v34 offset:1408
	ds_load_u8 v49, v34 offset:1280
	ds_load_u8 v50, v34 offset:1024
	ds_load_u8 v51, v34 offset:640
	ds_load_u8 v52, v34 offset:896
	ds_load_u8 v53, v34 offset:768
	ds_load_u8 v54, v34 offset:512
	ds_load_u8 v55, v34 offset:128
	ds_load_u8 v56, v34 offset:384
	ds_load_u8 v57, v34 offset:256
	ds_load_u8 v58, v34
	ds_load_u8 v59, v1 offset:288
	ds_load_u8 v60, v1 offset:256
	v_perm_b32 v31, v38, v39, 0xc0c0004
	v_lshl_or_b32 v8, v3, 16, v2
	v_lshl_or_b32 v7, v7, 16, v5
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v3, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v2, v46, v43, 0xc0c0004
	v_mov_b32_e32 v43, v41
	ds_load_u8 v35, v6
	v_lshl_or_b32 v6, v30, 16, v29
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v29, v50, v47, 0xc0c0004
	v_perm_b32 v30, v49, v48, 0xc0c0004
	v_lshl_or_b32 v5, v32, 16, v31
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v37, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v36, v54, v51, 0xc0c0004
	v_lshl_or_b32 v32, v3, 16, v2
	v_lshl_or_b32 v31, v30, 16, v29
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v39, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v38, v58, v55, 0xc0c0004
	v_lshl_or_b32 v30, v37, 16, v36
	ds_load_u8 v2, v1 offset:464
	ds_load_u8 v3, v1 offset:480
	ds_load_u8 v36, v1 offset:448
	ds_load_u8 v55, v1 offset:272
	ds_load_u8 v56, v1 offset:304
	v_mov_b32_e32 v44, v41
	v_lshl_or_b32 v29, v39, 16, v38
	ds_load_u8 v37, v1 offset:496
	ds_load_u8 v38, v1 offset:400
	ds_load_u8 v39, v1 offset:432
	ds_load_u8 v49, v1 offset:416
	ds_load_u8 v50, v1 offset:384
	ds_load_u8 v51, v1 offset:336
	ds_load_u8 v52, v1 offset:352
	ds_load_u8 v53, v1 offset:320
	ds_load_u8 v54, v1 offset:368
	v_mov_b32_e32 v45, v41
	v_mov_b32_e32 v46, v41
	v_mov_b32_e32 v47, v41
	v_mov_b32_e32 v48, v41
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[29:32], v[5:8], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v3, v3, v37, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v5, v50, v38, 0xc0c0004
	v_perm_b32 v6, v49, v39, 0xc0c0004
	v_perm_b32 v2, v36, v2, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v29, v53, v51, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v52, v54, 0xc0c0004
	ds_load_u8 v31, v34 offset:3712
	ds_load_u8 v32, v34 offset:3968
	ds_load_u8 v37, v34 offset:3840
	ds_load_u8 v38, v34 offset:3584
	ds_load_u8 v39, v34 offset:3200
	ds_load_u8 v49, v34 offset:3456
	ds_load_u8 v50, v34 offset:3328
	ds_load_u8 v51, v34 offset:3072
	ds_load_u8 v52, v34 offset:2688
	ds_load_u8 v53, v34 offset:2944
	ds_load_u8 v54, v34 offset:2816
	ds_load_u8 v65, v34 offset:2560
	ds_load_u8 v66, v34 offset:2176
	ds_load_u8 v67, v34 offset:2432
	ds_load_u8 v68, v34 offset:2304
	ds_load_u8 v69, v34 offset:2048
	v_lshl_or_b32 v7, v6, 16, v5
	v_lshl_or_b32 v8, v3, 16, v2
	v_perm_b32 v2, v60, v55, 0xc0c0004
	ds_load_u8 v3, v1 offset:720
	ds_load_u8 v55, v1 offset:736
	ds_load_u8 v60, v1 offset:704
	ds_load_u8 v70, v1 offset:752
	ds_load_u8 v71, v1 offset:656
	ds_load_u8 v72, v1 offset:688
	ds_load_u8 v73, v1 offset:672
	ds_load_u8 v74, v1 offset:640
	v_lshl_or_b32 v6, v30, 16, v29
	v_perm_b32 v5, v59, v56, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v30, v37, v32, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v29, v38, v31, 0xc0c0004
	ds_load_u8 v36, v1 offset:592
	ds_load_u8 v57, v1 offset:608
	ds_load_u8 v58, v1 offset:576
	ds_load_u8 v61, v1 offset:528
	ds_load_u8 v62, v1 offset:560
	ds_load_u8 v63, v1 offset:544
	ds_load_u8 v64, v1 offset:512
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v37, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v31, v51, v39, 0xc0c0004
	v_lshl_or_b32 v32, v30, 16, v29
	v_lshl_or_b32 v5, v5, 16, v2
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v39, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v38, v65, v52, 0xc0c0004
	v_lshl_or_b32 v31, v37, 16, v31
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v50, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v49, v69, v66, 0xc0c0004
	v_lshl_or_b32 v30, v39, 16, v38
	ds_load_u8 v39, v1 offset:624
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v2, v60, v3, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v38, v55, v70, 0xc0c0004
	v_lshl_or_b32 v29, v50, 16, v49
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v49, v74, v71, 0xc0c0004
	v_perm_b32 v50, v73, v72, 0xc0c0004
	ds_load_u8 v51, v34 offset:5760
	ds_load_u8 v52, v34 offset:6016
	ds_load_u8 v53, v34 offset:5888
	ds_load_u8 v54, v34 offset:5632
	ds_load_u8 v55, v34 offset:5248
	ds_load_u8 v56, v34 offset:5504
	ds_load_u8 v59, v34 offset:5376
	ds_load_u8 v60, v34 offset:5120
	ds_load_u8 v65, v34 offset:4736
	ds_load_u8 v66, v34 offset:4992
	ds_load_u8 v67, v34 offset:4864
	ds_load_u8 v68, v34 offset:4608
	ds_load_u8 v69, v34 offset:4224
	ds_load_u8 v70, v34 offset:4480
	ds_load_u8 v71, v34 offset:4352
	ds_load_u8 v72, v34 offset:4096
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v36, v58, v36, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[41:48], v[29:32], v[5:8], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v38, 16, v2
	v_lshl_or_b32 v7, v50, 16, v49
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v2, v64, v61, 0xc0c0004
	v_perm_b32 v5, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v30, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v29, v54, v51, 0xc0c0004
	ds_load_u8 v3, v1 offset:800
	ds_load_u8 v37, v1 offset:768
	v_lshl_or_b32 v5, v5, 16, v2
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v31, v60, v55, 0xc0c0004
	v_lshl_or_b32 v32, v30, 16, v29
	v_perm_b32 v39, v57, v39, 0xc0c0004
	ds_load_u8 v57, v1 offset:784
	ds_load_u8 v58, v1 offset:848
	ds_load_u8 v73, v1 offset:864
	ds_load_u8 v74, v1 offset:832
	ds_load_u8 v75, v1 offset:816
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v38, v68, v65, 0xc0c0004
	v_lshl_or_b32 v6, v39, 16, v36
	v_perm_b32 v36, v59, v56, 0xc0c0004
	v_perm_b32 v39, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v49, v72, v69, 0xc0c0004
	v_perm_b32 v50, v71, v70, 0xc0c0004
	v_lshl_or_b32 v31, v36, 16, v31
	v_lshl_or_b32 v30, v39, 16, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v29, v50, 16, v49
	ds_load_u8 v2, v1 offset:976
	ds_load_u8 v36, v1 offset:992
	ds_load_u8 v38, v1 offset:960
	ds_load_u8 v39, v1 offset:912
	ds_load_u8 v49, v1 offset:944
	ds_load_u8 v50, v1 offset:928
	ds_load_u8 v51, v1 offset:896
	ds_load_u8 v1, v1 offset:880
	ds_load_u8 v52, v34 offset:7808
	ds_load_u8 v53, v34 offset:8064
	ds_load_u8 v54, v34 offset:7936
	ds_load_u8 v55, v34 offset:7680
	ds_load_u8 v56, v34 offset:7296
	ds_load_u8 v59, v34 offset:7552
	ds_load_u8 v60, v34 offset:7424
	ds_load_u8 v61, v34 offset:7168
	ds_load_u8 v62, v34 offset:6784
	ds_load_u8 v63, v34 offset:7040
	ds_load_u8 v64, v34 offset:6912
	ds_load_u8 v65, v34 offset:6656
	ds_load_u8 v66, v34 offset:6272
	ds_load_u8 v67, v34 offset:6528
	ds_load_u8 v68, v34 offset:6400
	ds_load_u8 v34, v34 offset:6144
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v2, v38, v2, 0xc0c0004
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v36, v51, v39, 0xc0c0004
	v_perm_b32 v38, v50, v49, 0xc0c0004
	v_perm_b32 v39, v74, v58, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v1, v73, v1, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[41:48], v[29:32], v[5:8], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v35, 16, v2
	v_lshl_or_b32 v7, v38, 16, v36
	v_perm_b32 v2, v3, v75, 0xc0c0004
	v_lshl_or_b32 v6, v1, 16, v39
	v_perm_b32 v1, v37, v57, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v55, v52, 0xc0c0004
	v_perm_b32 v29, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v30, v61, v56, 0xc0c0004
	v_perm_b32 v31, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v35, v65, v62, 0xc0c0004
	v_perm_b32 v36, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v34, v66, 0xc0c0004
	v_lshl_or_b32 v5, v2, 16, v1
	v_lshl_or_b32 v32, v29, 16, v3
	v_lshl_or_b32 v31, v31, 16, v30
	v_lshl_or_b32 v30, v36, 16, v35
	v_lshl_or_b32 v29, v37, 16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[29:32], v[5:8], v[41:48] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v3, v43
	v_cvt_f32_i32_e32 v6, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v7, v45
	v_cvt_f32_i32_e32 v8, v46
	v_cvt_f32_i32_e32 v29, v47
	v_cvt_f32_i32_e32 v30, v48
	v_cvt_f32_i32_e32 v5, v41
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s6, s7, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s6, s6, 26
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s6, s7, s6
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	s_ashr_i32 s7, s6, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s6, s14
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s8, s7, s29
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s7, s33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v31, v26, s8, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v27, s7, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s7, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v32, v25, s8, 1
	v_add_lshl_u32 v34, v24, s8, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v35, v22, s8, 1
	v_add_lshl_u32 v36, v20, s8, 1
	v_add_lshl_u32 v37, v23, s8, 1
	v_add_lshl_u32 v38, v21, s8, 1
	v_add_lshl_u32 v39, v19, s8, 1
	v_dual_cndmask_b32 v31, 0x80000000, v31 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v32, 0x80000000, v32
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s7, s15
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_cndmask_b32 v36, 0x80000000, v36
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_mov_b32 v42, 0
	s_clause 0x7
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	buffer_load_u16 v32, v32, s[4:7], 0 offen
	buffer_load_u16 v34, v34, s[4:7], 0 offen
	buffer_load_u16 v35, v35, s[4:7], 0 offen
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	buffer_load_u16 v37, v37, s[4:7], 0 offen
	buffer_load_u16 v38, v38, s[4:7], 0 offen
	buffer_load_u16 v39, v39, s[4:7], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s13, s13, 0xffff
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	buffer_load_u16 v1, v1, s[12:15], 0 offen
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v47, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s8, 0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v4, s34, v28
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v56, s28, v40
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v33, s34, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v28, v4 offset:208
	ds_load_u8 v41, v4 offset:224
	ds_load_u8 v42, v4 offset:192
	ds_load_u8 v40, v4 offset:240
	ds_load_u8 v43, v4 offset:144
	ds_load_u8 v44, v4 offset:176
	ds_load_u8 v45, v4 offset:160
	ds_load_u8 v46, v4 offset:128
	ds_load_u8 v47, v4 offset:112
	ds_load_u8 v48, v4 offset:80
	ds_load_u8 v49, v4 offset:96
	ds_load_u8 v50, v4 offset:64
	ds_load_u8 v51, v4
	ds_load_u8 v52, v4 offset:16
	ds_load_u8 v53, v4 offset:32
	ds_load_u8 v54, v4 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	v_perm_b32 v28, v42, v28, 0xc0c0004
	ds_load_u8 v42, v56 offset:1664
	ds_load_u8 v55, v56 offset:1920
	ds_load_u8 v57, v56 offset:1792
	ds_load_u8 v58, v56 offset:1536
	ds_load_u8 v59, v56 offset:1152
	ds_load_u8 v60, v56 offset:1408
	ds_load_u8 v61, v56 offset:1280
	ds_load_u8 v62, v56 offset:1024
	ds_load_u8 v63, v56 offset:640
	ds_load_u8 v64, v56 offset:896
	ds_load_u8 v65, v56 offset:768
	ds_load_u8 v66, v56 offset:512
	ds_load_u8 v67, v56 offset:128
	ds_load_u8 v68, v56 offset:384
	ds_load_u8 v69, v56 offset:256
	ds_load_u8 v70, v56
	ds_load_u8 v71, v4 offset:288
	ds_load_u8 v72, v4 offset:256
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v41, v46, v43, 0xc0c0004
	v_perm_b32 v43, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v44, v50, v48, 0xc0c0004
	v_perm_b32 v45, v49, v47, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v46, v51, v52, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v47, v53, v54, 0xc0c0004
	v_lshl_or_b32 v51, v40, 16, v28
	v_lshl_or_b32 v50, v43, 16, v41
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v28, v58, v42, 0xc0c0004
	v_perm_b32 v41, v57, v55, 0xc0c0004
	v_mov_b32_e32 v40, 0
	v_lshl_or_b32 v49, v45, 16, v44
	v_lshl_or_b32 v48, v47, 16, v46
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v42, v62, v59, 0xc0c0004
	v_perm_b32 v43, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v44, v66, v63, 0xc0c0004
	v_perm_b32 v45, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v46, v70, v67, 0xc0c0004
	v_lshl_or_b32 v55, v41, 16, v28
	v_mov_b32_e32 v41, v40
	ds_load_u8 v59, v4 offset:496
	ds_load_u8 v60, v4 offset:400
	ds_load_u8 v61, v4 offset:432
	ds_load_u8 v62, v4 offset:416
	ds_load_u8 v63, v4 offset:384
	ds_load_u8 v64, v4 offset:336
	ds_load_u8 v65, v4 offset:352
	ds_load_u8 v66, v4 offset:320
	ds_load_u8 v67, v4 offset:368
	ds_load_u8 v28, v4 offset:464
	ds_load_u8 v57, v4 offset:480
	ds_load_u8 v58, v4 offset:448
	v_perm_b32 v47, v69, v68, 0xc0c0004
	ds_load_u8 v68, v4 offset:272
	ds_load_u8 v69, v4 offset:304
	v_lshl_or_b32 v54, v43, 16, v42
	v_lshl_or_b32 v53, v45, 16, v44
	v_mov_b32_e32 v42, v40
	v_lshl_or_b32 v52, v47, 16, v46
	v_mov_b32_e32 v43, v40
	v_mov_b32_e32 v44, v40
	v_mov_b32_e32 v45, v40
	v_mov_b32_e32 v46, v40
	v_mov_b32_e32 v47, v40
	ds_load_u8 v33, v33
	v_wmma_i32_16x16x16_iu8 v[40:47], v[52:55], v[48:51], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v49, v63, v60, 0xc0c0004
	v_perm_b32 v50, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v48, v57, v59, 0xc0c0004
	v_perm_b32 v52, v66, v64, 0xc0c0004
	v_perm_b32 v53, v65, v67, 0xc0c0004
	ds_load_u8 v54, v56 offset:3712
	ds_load_u8 v55, v56 offset:3968
	ds_load_u8 v57, v56 offset:3840
	ds_load_u8 v59, v56 offset:3584
	ds_load_u8 v60, v56 offset:3200
	ds_load_u8 v61, v56 offset:3456
	ds_load_u8 v62, v56 offset:3328
	ds_load_u8 v63, v56 offset:3072
	ds_load_u8 v64, v56 offset:2688
	ds_load_u8 v65, v56 offset:2944
	ds_load_u8 v66, v56 offset:2816
	ds_load_u8 v67, v56 offset:2560
	ds_load_u8 v78, v56 offset:2176
	ds_load_u8 v79, v56 offset:2432
	ds_load_u8 v80, v56 offset:2304
	ds_load_u8 v81, v56 offset:2048
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v28, v58, v28, 0xc0c0004
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v58, v4 offset:592
	ds_load_u8 v70, v4 offset:608
	ds_load_u8 v73, v4 offset:576
	ds_load_u8 v74, v4 offset:528
	ds_load_u8 v75, v4 offset:560
	ds_load_u8 v76, v4 offset:544
	ds_load_u8 v77, v4 offset:512
	v_lshl_or_b32 v49, v53, 16, v52
	v_lshl_or_b32 v51, v48, 16, v28
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v28, v72, v68, 0xc0c0004
	ds_load_u8 v68, v4 offset:720
	ds_load_u8 v72, v4 offset:736
	ds_load_u8 v82, v4 offset:704
	ds_load_u8 v83, v4 offset:752
	ds_load_u8 v84, v4 offset:656
	ds_load_u8 v85, v4 offset:688
	ds_load_u8 v86, v4 offset:672
	ds_load_u8 v87, v4 offset:640
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v52, v59, v54, 0xc0c0004
	v_perm_b32 v53, v57, v55, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v57, v62, v61, 0xc0c0004
	v_perm_b32 v48, v71, v69, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v54, v63, v60, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v60, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v59, v67, v64, 0xc0c0004
	v_lshl_or_b32 v55, v53, 16, v52
	v_lshl_or_b32 v48, v48, 16, v28
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v62, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v61, v81, v78, 0xc0c0004
	v_lshl_or_b32 v53, v60, 16, v59
	v_lshl_or_b32 v54, v57, 16, v54
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v28, v82, v68, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v60, v72, v83, 0xc0c0004
	v_lshl_or_b32 v52, v62, 16, v61
	ds_load_u8 v61, v4 offset:624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v63, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v62, v87, v84, 0xc0c0004
	ds_load_u8 v64, v56 offset:5760
	ds_load_u8 v65, v56 offset:6016
	ds_load_u8 v66, v56 offset:5888
	ds_load_u8 v67, v56 offset:5632
	ds_load_u8 v68, v56 offset:5248
	ds_load_u8 v69, v56 offset:5504
	ds_load_u8 v71, v56 offset:5376
	ds_load_u8 v72, v56 offset:5120
	ds_load_u8 v78, v56 offset:4736
	ds_load_u8 v79, v56 offset:4992
	ds_load_u8 v80, v56 offset:4864
	ds_load_u8 v81, v56 offset:4608
	ds_load_u8 v82, v56 offset:4224
	ds_load_u8 v83, v56 offset:4480
	ds_load_u8 v84, v56 offset:4352
	ds_load_u8 v85, v56 offset:4096
	v_perm_b32 v58, v73, v58, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[40:47], v[52:55], v[48:51], v[40:47] neg_lo:[1,1,0]
	v_lshl_or_b32 v51, v60, 16, v28
	v_lshl_or_b32 v50, v63, 16, v62
	v_perm_b32 v28, v77, v74, 0xc0c0004
	v_perm_b32 v48, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v53, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v52, v67, v64, 0xc0c0004
	ds_load_u8 v57, v4 offset:800
	ds_load_u8 v59, v4 offset:768
	v_lshl_or_b32 v48, v48, 16, v28
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v54, v72, v68, 0xc0c0004
	v_lshl_or_b32 v55, v53, 16, v52
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v60, v81, v78, 0xc0c0004
	v_perm_b32 v61, v70, v61, 0xc0c0004
	ds_load_u8 v70, v4 offset:784
	ds_load_u8 v73, v4 offset:848
	ds_load_u8 v86, v4 offset:864
	ds_load_u8 v87, v4 offset:832
	ds_load_u8 v88, v4 offset:816
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v63, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v62, v85, v82, 0xc0c0004
	v_lshl_or_b32 v49, v61, 16, v58
	v_perm_b32 v58, v71, v69, 0xc0c0004
	v_perm_b32 v61, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v52, v63, 16, v62
	v_lshl_or_b32 v54, v58, 16, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v53, v61, 16, v60
	ds_load_u8 v28, v4 offset:976
	ds_load_u8 v58, v4 offset:992
	ds_load_u8 v60, v4 offset:960
	ds_load_u8 v61, v4 offset:912
	ds_load_u8 v62, v4 offset:944
	ds_load_u8 v63, v4 offset:928
	ds_load_u8 v64, v4 offset:896
	ds_load_u8 v4, v4 offset:880
	ds_load_u8 v65, v56 offset:7808
	ds_load_u8 v66, v56 offset:8064
	ds_load_u8 v67, v56 offset:7936
	ds_load_u8 v68, v56 offset:7680
	ds_load_u8 v69, v56 offset:7296
	ds_load_u8 v71, v56 offset:7552
	ds_load_u8 v72, v56 offset:7424
	ds_load_u8 v74, v56 offset:7168
	ds_load_u8 v75, v56 offset:6784
	ds_load_u8 v76, v56 offset:7040
	ds_load_u8 v77, v56 offset:6912
	ds_load_u8 v78, v56 offset:6656
	ds_load_u8 v79, v56 offset:6272
	ds_load_u8 v80, v56 offset:6528
	ds_load_u8 v81, v56 offset:6400
	ds_load_u8 v56, v56 offset:6144
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v28, v60, v28, 0xc0c0004
	v_perm_b32 v33, v58, v33, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v58, v64, v61, 0xc0c0004
	v_perm_b32 v60, v63, v62, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[40:47], v[52:55], v[48:51], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v4, v86, v4, 0xc0c0004
	v_perm_b32 v61, v87, v73, 0xc0c0004
	v_lshl_or_b32 v51, v33, 16, v28
	v_lshl_or_b32 v50, v60, 16, v58
	v_perm_b32 v28, v57, v88, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v33, v68, v65, 0xc0c0004
	v_lshl_or_b32 v49, v4, 16, v61
	v_perm_b32 v4, v59, v70, 0xc0c0004
	v_perm_b32 v52, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v53, v74, v69, 0xc0c0004
	v_perm_b32 v54, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v57, v78, v75, 0xc0c0004
	v_perm_b32 v58, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v59, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v56, v79, 0xc0c0004
	v_lshl_or_b32 v48, v28, 16, v4
	v_lshl_or_b32 v55, v52, 16, v33
	v_lshl_or_b32 v54, v54, 16, v53
	v_lshl_or_b32 v53, v58, 16, v57
	v_lshl_or_b32 v52, v59, 16, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[40:47], v[52:55], v[48:51], v[40:47] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v4, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s6, s20, 31
	v_mov_b16_e32 v28.l, 0
	s_lshr_b32 s6, s6, 26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v1.h, v39.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s6, s20, s6
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v39, 7, v0
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s7, s6, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s6, s14
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s9, s7, s29
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s7, s33
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v27, v27, s7, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v26, v26, s9, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s7, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v25, v25, s9, 1
	v_add_lshl_u32 v24, v24, s9, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v22, v22, s9, 1
	v_add_lshl_u32 v20, v20, s9, 1
	v_add_lshl_u32 v23, v23, s9, 1
	v_add_lshl_u32 v21, v21, s9, 1
	v_add_lshl_u32 v19, v19, s9, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v24, 0x80000000, v24
	s_mov_b32 s7, s15
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	v_dual_cndmask_b32 v20, 0x80000000, v20 :: v_dual_cndmask_b32 v21, 0x80000000, v21
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_lshlrev_b32 v40, 1, v0
	s_clause 0x7
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	buffer_load_u16 v24, v24, s[4:7], 0 offen
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v27, v27, s[12:15], 0 offen
	v_mov_b16_e32 v28.h, v1.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v31.h, v38.l
	v_mov_b16_e32 v32.h, v37.l
	v_mov_b16_e32 v33.h, v36.l
	v_mov_b16_e32 v34.h, v35.l
	v_mov_b16_e32 v35.h, v34.l
	v_mov_b16_e32 v36.h, v32.l
	v_mov_b16_e32 v37.h, v31.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_bfe_i32 v48, v0, 3, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v1.l, v28.l
	v_mov_b16_e32 v31.l, v28.l
	v_mov_b16_e32 v32.l, v28.l
	v_mov_b16_e32 v33.l, v28.l
	v_mov_b16_e32 v34.l, v28.l
	v_mov_b16_e32 v35.l, v28.l
	v_mov_b16_e32 v36.l, v28.l
	v_mov_b16_e32 v37.l, v28.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v50, v28, v1 :: v_dual_and_b32 v49, 0x1e0, v40
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v39, s29, v39
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v31, v28, v31 :: v_dual_and_b32 v38, 0x7f, v0
	v_dual_mul_f32 v33, v28, v33 :: v_dual_and_b32 v48, 0x1040, v48
	v_mul_f32_e32 v32, v28, v32
	v_mul_f32_e32 v34, v28, v34
	v_mul_f32_e32 v35, v28, v35
	v_mul_f32_e32 v36, v28, v36
	v_mul_f32_e32 v28, v28, v37
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v37, v10, 2, v49
	.loc	1 392 23 is_stmt 0              ; generate_amdgcn.py:392:23
	s_mul_i32 s4, s31, s29
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v29, v31, v29, v18
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_add_i32 s4, s4, s30
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v33, v7, v16
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v1, s4, v38, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v30, v50, v30, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v29, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v16, v7, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v12, v30, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v26, 16, v26
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v31, v36, v2, v13
	v_fma_f32 v3, v35, v3, v14
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v28, v5, v11
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v28, v37, v48
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v34, v6, v15
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v10, v10, 9, v28
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v26, v27, v26 :: v_dual_lshlrev_b32 v21, 16, v21
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v11, v5, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v11, 0, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v32, v8, v17
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v25, v27, v25
	v_dual_mul_f32 v24, v27, v24 :: v_dual_lshlrev_b32 v19, 16, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v13, v31, s3
	v_cndmask_b32_e64 v14, v14, v3, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v15, v6, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v23, v27, v23
	v_mul_f32_e32 v22, v27, v22
	v_mul_f32_e32 v21, v27, v21
	v_mul_f32_e32 v20, v27, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v17, v8, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v19, v27, v19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v26, v4, v5
	v_fma_f32 v25, v25, v41, v13
	v_fma_f32 v24, v24, v42, v14
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v2, vcc_lo, s0, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v22, v22, v43, v6
	v_fma_f32 v20, v20, v44, v7
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v23, v23, v45, v8
	v_fma_f32 v21, v21, v46, v18
	v_fma_f32 v19, v19, v47, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v5, v4, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v15, v10, 4, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v13, v25, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v16, v10, 8, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v14, v24, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v17, v10, 12, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v22, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v28, v10, 16, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v20, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v29, v10, 20, 0
	v_xad_u32 v30, v10, 24, 0
	v_xad_u32 v10, v10, 28, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v8, v23, s2
	v_cndmask_b32_e64 v14, v18, v21, s2
	v_cndmask_b32_e64 v12, v12, v19, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_b32 v11, v4
	ds_store_b32 v15, v5
	ds_store_b32 v16, v13
	ds_store_b32 v17, v6
	ds_store_b32 v28, v7
	ds_store_b32 v29, v8
	ds_store_b32 v30, v14
	ds_store_b32 v10, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v5, v[2:3], off
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_bfe_i32 v4, v0, 7, 1
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v6, 28, v40
	v_lshlrev_b32_e32 v0, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v4, 0x204, v4
	v_and_or_b32 v6, 0x1c0, v9, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v4, v6, v4
	v_and_or_b32 v0, v0, 32, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v4, 0, v0
	v_xad_u32 v6, 0x408, v0, 0
	v_xad_u32 v7, 0x810, v0, 0
	v_xad_u32 v8, 0xc18, v0, 0
	v_xad_u32 v13, 0x1040, v0, 0
	v_xad_u32 v14, 0x1448, v0, 0
	v_xad_u32 v15, 0x1850, v0, 0
	v_xad_u32 v16, 0x1c58, v0, 0
	ds_load_b32 v12, v4
	ds_load_b32 v11, v6
	ds_load_b32 v10, v7
	ds_load_b32 v9, v8
	ds_load_b32 v8, v13
	ds_load_b32 v7, v14
	ds_load_b32 v0, v15
	ds_load_b32 v6, v16
.LBB0_13:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v4, v5, v12
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s8, vcc_lo, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s8
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end37
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s8
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v2, s29, 1, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s0, v2
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_15:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v2, s29, 2, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s0, v2
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_17:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v4, v5, v10
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[2:3], null, s29, 6, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s0, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_19:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v4, v5, v9
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v2, s29, 3, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s0, v2
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_21:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v4, v5, v8
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[2:3], null, s29, 10, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s0, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_23:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[2:3], null, s29, 12, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s0, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_25:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v4, v5, v0
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s29, 14, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s0, v0
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	s_mov_b32 s0, 0
	global_load_b32 v3, v[0:1], off
.LBB0_27:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v2, v3, v6
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
		.amdhsa_next_free_sgpr 41
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 185
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11108
; TotalNumSgprs: 43
; NumVgprs: 185
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 43
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     185
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
