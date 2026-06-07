	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b32 s7, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s8, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v31, 2, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v32, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v33, 3, v0
	v_lshrrev_b32_e32 v34, 2, v0
	v_or_b32_e32 v38, 0x3f0, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v2, 12, v31
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v39, 0, v31
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v35, 32, v33
	s_mov_b32 s37, 0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v30, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s18, 15
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
	v_mul_lo_u32 v3, s18, v34
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
	s_abs_i32 s6, s17
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s20, s6
	s_sub_i32 s23, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s20
	v_readfirstlane_b32 s22, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v32
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s22, s22, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[9:10], null, s19, v33, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s22, s22
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_mul_i32 s23, s23, s22
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v36, s19, 5, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s22, s23
	s_xor_b32 s23, s2, s17
	s_add_i32 s4, s22, s4
	s_ashr_i32 s25, s23, 31
	s_mul_hi_u32 s4, s5, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s22, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s24, s4, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s23, s11
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s5, s5, s24
	s_add_i32 s24, s4, 1
	s_sub_i32 s26, s5, s6
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s24, s4
	s_cselect_b32 s5, s26, s5
	s_add_i32 s24, s4, 1
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s24, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s6, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s25
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s26, s7, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s25
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s4, s26, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s17, s3, s17
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s3, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s2, s17
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s6, v34
	v_or_b32_e32 v4, s6, v33
	v_or_b32_e32 v5, s6, v35
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s4, s4, 26
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s16
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s24, s26, s4
.Ltmp19:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s25, s3, 4
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s27, s19, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s26, 63
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v1
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s7, v4
	v_cmp_gt_i32_e64 s4, s7, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s16, s33, s27
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v10, v3, v2, s25
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s16, v9
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s2, s2, s3
	s_and_b32 s4, s4, s3
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s26, 0x7f
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s5, s18, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s6, 64
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s16, v36
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v3, s5, v10
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s34, v34
	v_or_b32_e32 v5, s34, v33
	v_or_b32_e32 v6, s34, v35
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s4, s18, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s17, s19, 6
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v4
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s16, s16, s17
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v7, s5, s4, v10
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s7, v5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v8, s16, v9
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s7, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v11, s16, v36
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[12:15], v1, s[20:23], 0 offen
	buffer_load_b128 v[16:19], v2, s[20:23], 0 offen
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v1, 0x80000000, v7, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v28, v3, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v2, 0x80000000, v8, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s5, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_dual_cndmask_b32 v3, 0x80000000, v11 :: v_dual_add_nc_u32 v40, 0, v32
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v29, v1, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[20:23], v2, s[20:23], 0 offen
	buffer_load_b128 v[24:27], v3, s[20:23], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v11, 1, v0
	v_lshrrev_b32_e32 v1, 4, v0
	s_mov_b64 s[4:5], s[14:15]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s26, 0xbf
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v40, v[16:19] offset:4096
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(3)
	ds_store_b32 v39, v28 offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v40, v[12:15]
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v37, 0x70, v11
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v39, v29 offset:17408
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v40, v[20:23] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v40, v[24:27] offset:12288
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v1, v1, 1, v37
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v5, 2, v1
	v_or_b32_e32 v6, 4, v1
	v_or_b32_e32 v7, 6, v1
	v_or_b32_e32 v8, 8, v1
	v_or_b32_e32 v2, 10, v1
	v_or_b32_e32 v3, 12, v1
	v_or_b32_e32 v4, 14, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v39, 0x3f0, v0
	s_mov_b32 s14, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr39
.LBB0_3:                                ; %Flow73
	s_load_b64 s[16:17], s[0:1], 0x20
	v_or_b32_e32 v20, s25, v30
	s_ashr_i32 s1, s24, 6
	v_or_b32_e32 v28, s33, v1
	v_or_b32_e32 v27, s33, v5
	v_or_b32_e32 v26, s33, v6
	v_mul_lo_u32 v29, v20, s1
	v_or_b32_e32 v24, s33, v7
	v_or_b32_e32 v22, s33, v8
	v_or_b32_e32 v25, s33, v2
	v_or_b32_e32 v23, s33, v3
	v_or_b32_e32 v21, s33, v4
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v12, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s38, s1, 3
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v4, v1 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v5, v1 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v7, v1 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v13, 0
	s_add_i32 s15, s34, 64
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_and_b32 s29, s5, 0xffff
	s_mov_b32 s28, s4
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s36, 0, 0x4400
	s_add_i32 s35, 0, 0x2000
	s_add_i32 s38, s38, -3
	s_mov_b32 s39, 1
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s40, 0
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s41, s40, 6
	s_mov_b32 s0, s6
	s_mov_b32 s6, s34
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s15, s41
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s41, s0, 31
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v41, s34, v34
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[39:40], null, s34, s18, v[10:11]
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s41, s41, 26
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s42, s34, s19
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s0, s41
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v41
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s42, s42, s33
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v40, v29, s0, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s19
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v41, v28, s0, 1
	v_add_lshl_u32 v42, v27, s0, 1
	v_add_lshl_u32 v43, v26, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v44, v24, s0, 1
	v_add_lshl_u32 v45, v22, s0, 1
	v_add_lshl_u32 v46, v25, s0, 1
	v_add_lshl_u32 v47, v23, s0, 1
	v_add_lshl_u32 v48, v21, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v87, v39, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v39, 0x80000000, v41, vcc_lo
	v_dual_cndmask_b32 v41, 0x80000000, v42 :: v_dual_cndmask_b32 v42, 0x80000000, v43
	v_cndmask_b32_e32 v43, 0x80000000, v44, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v44, 0x80000000, v45 :: v_dual_cndmask_b32 v45, 0x80000000, v46
	v_dual_cndmask_b32 v46, 0x80000000, v47 :: v_dual_cndmask_b32 v47, 0x80000000, v48
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v88, v40, s[24:27], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x7
	buffer_load_u16 v89, v39, s[28:31], 0 offen
	buffer_load_u16 v90, v41, s[28:31], 0 offen
	buffer_load_u16 v91, v42, s[28:31], 0 offen
	buffer_load_u16 v92, v43, s[28:31], 0 offen
	buffer_load_u16 v93, v44, s[28:31], 0 offen
	buffer_load_u16 v94, v45, s[28:31], 0 offen
	buffer_load_u16 v95, v46, s[28:31], 0 offen
	buffer_load_u16 v96, v47, s[28:31], 0 offen
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v40, s34, v33
	v_or_b32_e32 v39, s34, v35
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v41, s42, v9
	v_add_nc_u32_e32 v42, s42, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s7, v40
	v_cmp_gt_i32_e32 vcc_lo, s7, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v39, 0x80000000, v41, s0
	v_cndmask_b32_e32 v40, 0x80000000, v42, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[47:50], v39, s[20:23], 0 offen
	buffer_load_b128 v[51:54], v40, s[20:23], 0 offen
	s_mov_b32 s0, s14
	s_mov_b32 s14, s36
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v39, s0, v30
	s_mov_b32 s36, s37
	v_add_nc_u32_e32 v40, s0, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v41, s36, v37, v30
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v39 offset:208
	ds_load_u8 v43, v39 offset:240
	ds_load_u8 v44, v39 offset:224
	ds_load_u8 v45, v39 offset:192
	ds_load_u8 v46, v39 offset:144
	ds_load_u8 v55, v39 offset:176
	ds_load_u8 v56, v39 offset:160
	ds_load_u8 v57, v39 offset:128
	ds_load_u8 v58, v39 offset:80
	ds_load_u8 v59, v39 offset:112
	ds_load_u8 v60, v39 offset:96
	ds_load_u8 v61, v39 offset:64
	ds_load_u8 v62, v39
	ds_load_u8 v63, v39 offset:16
	ds_load_u8 v64, v39 offset:32
	ds_load_u8 v65, v39 offset:48
	ds_load_u8 v66, v41 offset:1664
	ds_load_u8 v67, v41 offset:1920
	ds_load_u8 v68, v41 offset:1792
	ds_load_u8 v69, v41 offset:1536
	ds_load_u8 v70, v41 offset:1152
	ds_load_u8 v71, v41 offset:1408
	ds_load_u8 v72, v41 offset:1280
	ds_load_u8 v73, v41 offset:1024
	ds_load_u8 v74, v41 offset:640
	ds_load_u8 v75, v41 offset:896
	ds_load_u8 v76, v41 offset:768
	ds_load_u8 v77, v41 offset:512
	ds_load_u8 v78, v41 offset:128
	ds_load_u8 v79, v41 offset:384
	ds_load_u8 v80, v41 offset:256
	ds_load_u8 v81, v41
	ds_load_u8 v82, v39 offset:464
	ds_load_u8 v83, v39 offset:496
	ds_load_u8 v84, v39 offset:480
	ds_load_u8 v85, v39 offset:448
	ds_load_u8 v86, v39 offset:400
	ds_load_u8 v97, v39 offset:432
	ds_load_u8 v98, v39 offset:416
	ds_load_u8 v99, v39 offset:384
	ds_load_u8 v100, v39 offset:336
	ds_load_u8 v101, v39 offset:368
	ds_load_u8 v102, v39 offset:352
	ds_load_u8 v103, v39 offset:320
	ds_load_u8 v104, v39 offset:272
	ds_load_u8 v105, v39 offset:304
	ds_load_u8 v106, v39 offset:288
	ds_load_u8 v107, v39 offset:256
	ds_load_u8 v108, v41 offset:3712
	ds_load_u8 v109, v41 offset:3968
	ds_load_u8 v110, v41 offset:3840
	ds_load_u8 v111, v41 offset:3584
	ds_load_u8 v112, v41 offset:3200
	ds_load_u8 v113, v41 offset:3456
	ds_load_u8 v114, v41 offset:3328
	ds_load_u8 v115, v41 offset:3072
	ds_load_u8 v116, v41 offset:2688
	ds_load_u8 v117, v41 offset:2944
	ds_load_u8 v118, v41 offset:2816
	ds_load_u8 v119, v41 offset:2560
	ds_load_u8 v120, v41 offset:2176
	ds_load_u8 v121, v41 offset:2432
	ds_load_u8 v122, v41 offset:2304
	ds_load_u8 v123, v41 offset:2048
	ds_load_u8 v124, v39 offset:720
	ds_load_u8 v125, v39 offset:752
	ds_load_u8 v126, v39 offset:736
	ds_load_u8 v127, v39 offset:704
	ds_load_u8 v128, v39 offset:656
	ds_load_u8 v129, v39 offset:688
	ds_load_u8 v130, v39 offset:672
	ds_load_u8 v131, v39 offset:640
	ds_load_u8 v132, v39 offset:592
	ds_load_u8 v133, v39 offset:624
	ds_load_u8 v134, v39 offset:608
	ds_load_u8 v135, v39 offset:576
	ds_load_u8 v136, v39 offset:528
	ds_load_u8 v137, v39 offset:560
	ds_load_u8 v138, v39 offset:544
	ds_load_u8 v139, v39 offset:512
	ds_load_u8 v140, v41 offset:5760
	ds_load_u8 v141, v41 offset:6016
	ds_load_u8 v142, v41 offset:5888
	ds_load_u8 v143, v41 offset:5632
	ds_load_u8 v144, v41 offset:5248
	ds_load_u8 v145, v41 offset:5504
	ds_load_u8 v146, v41 offset:5376
	ds_load_u8 v147, v41 offset:5120
	ds_load_u8 v148, v41 offset:4736
	ds_load_u8 v149, v41 offset:4992
	ds_load_u8 v150, v41 offset:4864
	ds_load_u8 v151, v41 offset:4608
	ds_load_u8 v152, v41 offset:4224
	ds_load_u8 v153, v41 offset:4480
	ds_load_u8 v154, v41 offset:4352
	ds_load_u8 v155, v41 offset:4096
	ds_load_u8 v156, v39 offset:976
	ds_load_u8 v40, v40
	ds_load_u8 v157, v39 offset:992
	ds_load_u8 v158, v39 offset:960
	ds_load_u8 v159, v39 offset:912
	ds_load_u8 v160, v39 offset:944
	ds_load_u8 v161, v39 offset:928
	ds_load_u8 v162, v39 offset:896
	ds_load_u8 v163, v39 offset:848
	ds_load_u8 v164, v39 offset:880
	ds_load_u8 v165, v39 offset:864
	ds_load_u8 v166, v39 offset:832
	ds_load_u8 v167, v39 offset:784
	ds_load_u8 v168, v39 offset:816
	ds_load_u8 v169, v39 offset:800
	ds_load_u8 v39, v39 offset:768
	ds_load_u8 v170, v41 offset:7808
	ds_load_u8 v171, v41 offset:8064
	ds_load_u8 v172, v41 offset:7936
	ds_load_u8 v173, v41 offset:7680
	ds_load_u8 v174, v41 offset:7296
	ds_load_u8 v175, v41 offset:7552
	ds_load_u8 v176, v41 offset:7424
	ds_load_u8 v177, v41 offset:7168
	ds_load_u8 v178, v41 offset:6784
	ds_load_u8 v179, v41 offset:7040
	ds_load_u8 v180, v41 offset:6912
	ds_load_u8 v181, v41 offset:6656
	ds_load_u8 v182, v41 offset:6272
	ds_load_u8 v183, v41 offset:6528
	ds_load_u8 v184, v41 offset:6400
	ds_load_u8 v41, v41 offset:6144
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v42, v45, v42, 0xc0c0004
	v_perm_b32 v43, v44, v43, 0xc0c0004
	v_perm_b32 v44, v57, v46, 0xc0c0004
	v_perm_b32 v45, v56, v55, 0xc0c0004
	v_perm_b32 v46, v61, v58, 0xc0c0004
	v_perm_b32 v55, v60, v59, 0xc0c0004
	v_perm_b32 v59, v62, v63, 0xc0c0004
	v_perm_b32 v60, v64, v65, 0xc0c0004
	v_perm_b32 v61, v69, v66, 0xc0c0004
	v_perm_b32 v62, v68, v67, 0xc0c0004
	v_perm_b32 v63, v73, v70, 0xc0c0004
	v_perm_b32 v64, v72, v71, 0xc0c0004
	v_perm_b32 v65, v77, v74, 0xc0c0004
	v_perm_b32 v66, v76, v75, 0xc0c0004
	v_perm_b32 v67, v81, v78, 0xc0c0004
	v_perm_b32 v68, v80, v79, 0xc0c0004
	v_perm_b32 v69, v85, v82, 0xc0c0004
	v_perm_b32 v70, v84, v83, 0xc0c0004
	v_perm_b32 v71, v99, v86, 0xc0c0004
	v_perm_b32 v72, v98, v97, 0xc0c0004
	v_perm_b32 v73, v103, v100, 0xc0c0004
	v_perm_b32 v74, v102, v101, 0xc0c0004
	v_perm_b32 v75, v107, v104, 0xc0c0004
	v_perm_b32 v76, v106, v105, 0xc0c0004
	v_perm_b32 v77, v111, v108, 0xc0c0004
	v_perm_b32 v78, v110, v109, 0xc0c0004
	v_perm_b32 v79, v115, v112, 0xc0c0004
	v_perm_b32 v80, v114, v113, 0xc0c0004
	v_perm_b32 v81, v119, v116, 0xc0c0004
	v_perm_b32 v82, v118, v117, 0xc0c0004
	v_perm_b32 v83, v123, v120, 0xc0c0004
	v_perm_b32 v84, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v111, v158, v156, 0xc0c0004
	v_perm_b32 v40, v157, v40, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v39, v39, v167, 0xc0c0004
	v_perm_b32 v116, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v182, 0xc0c0004
	v_perm_b32 v123, v184, v183, 0xc0c0004
	v_lshl_or_b32 v58, v43, 16, v42
	v_lshl_or_b32 v57, v45, 16, v44
	v_lshl_or_b32 v56, v55, 16, v46
	v_lshl_or_b32 v55, v60, 16, v59
	v_lshl_or_b32 v62, v62, 16, v61
	v_lshl_or_b32 v61, v64, 16, v63
	v_lshl_or_b32 v60, v66, 16, v65
	v_lshl_or_b32 v59, v68, 16, v67
	v_perm_b32 v85, v127, v124, 0xc0c0004
	v_perm_b32 v86, v126, v125, 0xc0c0004
	v_perm_b32 v97, v131, v128, 0xc0c0004
	v_perm_b32 v98, v130, v129, 0xc0c0004
	v_perm_b32 v99, v135, v132, 0xc0c0004
	v_perm_b32 v100, v134, v133, 0xc0c0004
	v_perm_b32 v101, v139, v136, 0xc0c0004
	v_perm_b32 v102, v138, v137, 0xc0c0004
	v_perm_b32 v103, v143, v140, 0xc0c0004
	v_perm_b32 v104, v142, v141, 0xc0c0004
	v_perm_b32 v105, v147, v144, 0xc0c0004
	v_perm_b32 v106, v146, v145, 0xc0c0004
	v_perm_b32 v107, v151, v148, 0xc0c0004
	v_perm_b32 v108, v150, v149, 0xc0c0004
	v_perm_b32 v109, v155, v152, 0xc0c0004
	v_perm_b32 v110, v154, v153, 0xc0c0004
	v_lshl_or_b32 v66, v70, 16, v69
	v_lshl_or_b32 v65, v72, 16, v71
	v_lshl_or_b32 v64, v74, 16, v73
	v_lshl_or_b32 v63, v76, 16, v75
	v_lshl_or_b32 v70, v78, 16, v77
	v_lshl_or_b32 v69, v80, 16, v79
	v_lshl_or_b32 v68, v82, 16, v81
	v_lshl_or_b32 v67, v84, 16, v83
	v_lshl_or_b32 v82, v40, 16, v111
	v_lshl_or_b32 v79, v116, 16, v39
	v_lshl_or_b32 v83, v123, 16, v41
	v_wmma_i32_16x16x16_iu8 v[39:46], v[59:62], v[55:58], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v112, v162, v159, 0xc0c0004
	v_perm_b32 v113, v161, v160, 0xc0c0004
	v_perm_b32 v114, v166, v163, 0xc0c0004
	v_perm_b32 v115, v165, v164, 0xc0c0004
	v_perm_b32 v117, v173, v170, 0xc0c0004
	v_perm_b32 v118, v172, v171, 0xc0c0004
	v_perm_b32 v119, v177, v174, 0xc0c0004
	v_perm_b32 v120, v176, v175, 0xc0c0004
	v_perm_b32 v121, v181, v178, 0xc0c0004
	v_perm_b32 v122, v180, v179, 0xc0c0004
	v_lshl_or_b32 v74, v86, 16, v85
	v_lshl_or_b32 v73, v98, 16, v97
	v_lshl_or_b32 v72, v100, 16, v99
	v_lshl_or_b32 v71, v102, 16, v101
	v_lshl_or_b32 v78, v104, 16, v103
	v_lshl_or_b32 v77, v106, 16, v105
	v_lshl_or_b32 v76, v108, 16, v107
	v_lshl_or_b32 v75, v110, 16, v109
	v_wmma_i32_16x16x16_iu8 v[39:46], v[67:70], v[63:66], v[39:46] neg_lo:[1,1,0]
	v_lshl_or_b32 v81, v113, 16, v112
	v_lshl_or_b32 v80, v115, 16, v114
	v_lshl_or_b32 v86, v118, 16, v117
	v_lshl_or_b32 v85, v120, 16, v119
	v_lshl_or_b32 v84, v122, 16, v121
	v_wmma_i32_16x16x16_iu8 v[39:46], v[75:78], v[71:74], v[39:46] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s0, s39, 1
	s_mov_b32 s37, s35
	s_cmp_lt_i32 s0, 2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[39:46], v[83:86], v[79:82], v[39:46] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s39, s0, 0
	s_add_i32 s0, s40, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s35, s39, 10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s36, s39, 13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s41, s35, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s35, s36, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s36, s41, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s40, s38
	s_mov_b32 s40, s0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_barrier
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v55, 16, v88
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v56, 16, v89
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v56, v55, v56
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v62, 16, v95
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v63, 16, v96
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v12, v56, v39 :: v_dual_lshlrev_b32 v61, 16, v94
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v58, 16, v91
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v185, s41, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v63, v55, v63 :: v_dual_lshlrev_b32 v60, 16, v93
	v_dual_mul_f32 v61, v55, v61 :: v_dual_add_nc_u32 v186, s35, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v58, v55, v58
	v_dual_mul_f32 v60, v55, v60 :: v_dual_lshlrev_b32 v57, 16, v90
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v59, 16, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v15, v61, v44 :: v_dual_fmac_f32 v18, v58, v41
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v57, v55, v57 :: v_dual_fmac_f32 v16, v60, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v59, v55, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v13, v63, v46
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_store_b32 v185, v87 offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v186, v[47:50]
	s_waitcnt vmcnt(0)
	ds_store_b128 v186, v[51:54] offset:4096
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v19, v57, v40
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v55, v55, v62
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v17, v59, v42
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v14, v55, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v39, v38
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v12, 0
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s36, 0, 0x4400
	s_add_i32 s35, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v36, v37, v30
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v5, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v10, s14, v30
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v31, s37, v36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v10 offset:208
	ds_load_u8 v3, v10 offset:224
	ds_load_u8 v4, v10 offset:192
	ds_load_u8 v6, v10 offset:240
	ds_load_u8 v7, v10 offset:144
	ds_load_u8 v8, v10 offset:176
	ds_load_u8 v9, v10 offset:160
	ds_load_u8 v32, v10 offset:128
	ds_load_u8 v33, v10 offset:112
	ds_load_u8 v34, v10 offset:80
	ds_load_u8 v35, v10 offset:96
	ds_load_u8 v37, v10 offset:64
	ds_load_u8 v38, v10
	ds_load_u8 v40, v10 offset:16
	ds_load_u8 v41, v10 offset:32
	ds_load_u8 v42, v10 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v3, v6, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v6, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v38, v40, 0xc0c0004
	v_mov_b32_e32 v40, 0
	v_perm_b32 v8, v35, v33, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v41, v42, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v5, s14, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v2, v4, v2, 0xc0c0004
	v_mov_b32_e32 v41, v40
	ds_load_u8 v43, v31 offset:1664
	ds_load_u8 v44, v31 offset:1920
	ds_load_u8 v45, v31 offset:1792
	ds_load_u8 v46, v31 offset:1536
	ds_load_u8 v47, v31 offset:1152
	ds_load_u8 v48, v31 offset:1408
	ds_load_u8 v49, v31 offset:1280
	ds_load_u8 v50, v31 offset:1024
	ds_load_u8 v51, v31 offset:640
	ds_load_u8 v52, v31 offset:896
	ds_load_u8 v53, v31 offset:768
	ds_load_u8 v54, v31 offset:512
	ds_load_u8 v55, v31 offset:128
	ds_load_u8 v56, v31 offset:384
	ds_load_u8 v57, v31 offset:256
	ds_load_u8 v58, v31
	ds_load_u8 v59, v10 offset:288
	ds_load_u8 v60, v10 offset:256
	v_perm_b32 v4, v32, v7, 0xc0c0004
	v_perm_b32 v7, v37, v34, 0xc0c0004
	v_mov_b32_e32 v42, v40
	ds_load_u8 v32, v5
	v_lshl_or_b32 v5, v3, 16, v2
	v_lshl_or_b32 v4, v6, 16, v4
	v_lshl_or_b32 v3, v8, 16, v7
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v6, v46, v43, 0xc0c0004
	v_perm_b32 v7, v45, v44, 0xc0c0004
	v_lshl_or_b32 v2, v33, 16, v9
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v8, v50, v47, 0xc0c0004
	v_perm_b32 v33, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v35, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v34, v54, v51, 0xc0c0004
	v_lshl_or_b32 v9, v7, 16, v6
	v_mov_b32_e32 v43, v40
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v38, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v37, v58, v55, 0xc0c0004
	v_lshl_or_b32 v8, v33, 16, v8
	v_lshl_or_b32 v7, v35, 16, v34
	ds_load_u8 v33, v10 offset:464
	ds_load_u8 v34, v10 offset:480
	ds_load_u8 v35, v10 offset:448
	ds_load_u8 v55, v10 offset:272
	ds_load_u8 v56, v10 offset:304
	v_lshl_or_b32 v6, v38, 16, v37
	ds_load_u8 v37, v10 offset:496
	ds_load_u8 v38, v10 offset:400
	ds_load_u8 v48, v10 offset:432
	ds_load_u8 v49, v10 offset:416
	ds_load_u8 v50, v10 offset:384
	ds_load_u8 v51, v10 offset:336
	ds_load_u8 v52, v10 offset:352
	ds_load_u8 v53, v10 offset:320
	ds_load_u8 v54, v10 offset:368
	v_mov_b32_e32 v44, v40
	v_mov_b32_e32 v45, v40
	v_mov_b32_e32 v46, v40
	v_mov_b32_e32 v47, v40
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[40:47], v[6:9], v[2:5], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v6, v49, v48, 0xc0c0004
	v_perm_b32 v3, v34, v37, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v4, v50, v38, 0xc0c0004
	v_perm_b32 v2, v35, v33, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v7, v53, v51, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v52, v54, 0xc0c0004
	ds_load_u8 v9, v31 offset:3712
	ds_load_u8 v34, v31 offset:3968
	ds_load_u8 v37, v31 offset:3840
	ds_load_u8 v38, v31 offset:3584
	ds_load_u8 v48, v31 offset:3200
	ds_load_u8 v49, v31 offset:3456
	ds_load_u8 v50, v31 offset:3328
	ds_load_u8 v51, v31 offset:3072
	ds_load_u8 v52, v31 offset:2688
	ds_load_u8 v53, v31 offset:2944
	ds_load_u8 v54, v31 offset:2816
	ds_load_u8 v64, v31 offset:2560
	ds_load_u8 v65, v31 offset:2176
	ds_load_u8 v66, v31 offset:2432
	ds_load_u8 v67, v31 offset:2304
	ds_load_u8 v68, v31 offset:2048
	v_lshl_or_b32 v4, v6, 16, v4
	v_lshl_or_b32 v5, v3, 16, v2
	v_perm_b32 v2, v60, v55, 0xc0c0004
	ds_load_u8 v55, v10 offset:720
	ds_load_u8 v60, v10 offset:736
	ds_load_u8 v69, v10 offset:704
	ds_load_u8 v70, v10 offset:752
	ds_load_u8 v71, v10 offset:656
	ds_load_u8 v72, v10 offset:688
	ds_load_u8 v73, v10 offset:672
	ds_load_u8 v74, v10 offset:640
	v_lshl_or_b32 v3, v8, 16, v7
	v_perm_b32 v6, v59, v56, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v8, v37, v34, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v7, v38, v9, 0xc0c0004
	ds_load_u8 v33, v10 offset:592
	ds_load_u8 v35, v10 offset:608
	ds_load_u8 v57, v10 offset:576
	ds_load_u8 v58, v10 offset:528
	ds_load_u8 v61, v10 offset:560
	ds_load_u8 v62, v10 offset:544
	ds_load_u8 v63, v10 offset:512
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v37, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v34, v51, v48, 0xc0c0004
	v_lshl_or_b32 v2, v6, 16, v2
	v_lshl_or_b32 v9, v8, 16, v7
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v48, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v38, v64, v52, 0xc0c0004
	v_lshl_or_b32 v8, v37, 16, v34
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v50, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v49, v68, v65, 0xc0c0004
	v_lshl_or_b32 v7, v48, 16, v38
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v34, v69, v55, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v48, v60, v70, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v51, v73, v72, 0xc0c0004
	v_lshl_or_b32 v6, v50, 16, v49
	ds_load_u8 v49, v10 offset:624
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v50, v74, v71, 0xc0c0004
	ds_load_u8 v52, v31 offset:5760
	ds_load_u8 v53, v31 offset:6016
	ds_load_u8 v54, v31 offset:5888
	ds_load_u8 v55, v31 offset:5632
	ds_load_u8 v56, v31 offset:5248
	ds_load_u8 v59, v31 offset:5504
	ds_load_u8 v60, v31 offset:5376
	ds_load_u8 v64, v31 offset:5120
	ds_load_u8 v65, v31 offset:4736
	ds_load_u8 v66, v31 offset:4992
	ds_load_u8 v67, v31 offset:4864
	ds_load_u8 v68, v31 offset:4608
	ds_load_u8 v69, v31 offset:4224
	ds_load_u8 v70, v31 offset:4480
	ds_load_u8 v71, v31 offset:4352
	ds_load_u8 v72, v31 offset:4096
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v33, v57, v33, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[40:47], v[6:9], v[2:5], v[40:47] neg_lo:[1,1,0]
	v_lshl_or_b32 v5, v48, 16, v34
	v_lshl_or_b32 v4, v51, 16, v50
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v2, v63, v58, 0xc0c0004
	v_perm_b32 v6, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v8, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v55, v52, 0xc0c0004
	ds_load_u8 v37, v10 offset:800
	ds_load_u8 v38, v10 offset:768
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v34, v60, v59, 0xc0c0004
	v_lshl_or_b32 v2, v6, 16, v2
	v_lshl_or_b32 v9, v8, 16, v7
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v48, v67, v66, 0xc0c0004
	v_perm_b32 v35, v35, v49, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v51, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v72, v69, 0xc0c0004
	ds_load_u8 v49, v10 offset:784
	ds_load_u8 v57, v10 offset:848
	ds_load_u8 v73, v10 offset:864
	ds_load_u8 v74, v10 offset:832
	ds_load_u8 v75, v10 offset:816
	v_lshl_or_b32 v3, v35, 16, v33
	v_perm_b32 v33, v64, v56, 0xc0c0004
	v_perm_b32 v35, v68, v65, 0xc0c0004
	v_lshl_or_b32 v6, v51, 16, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v8, v34, 16, v33
	v_lshl_or_b32 v7, v48, 16, v35
	ds_load_u8 v33, v10 offset:976
	ds_load_u8 v34, v10 offset:992
	ds_load_u8 v35, v10 offset:960
	ds_load_u8 v48, v10 offset:912
	ds_load_u8 v50, v10 offset:944
	ds_load_u8 v51, v10 offset:928
	ds_load_u8 v52, v10 offset:896
	ds_load_u8 v10, v10 offset:880
	ds_load_u8 v53, v31 offset:7808
	ds_load_u8 v54, v31 offset:8064
	ds_load_u8 v55, v31 offset:7936
	ds_load_u8 v56, v31 offset:7680
	ds_load_u8 v58, v31 offset:7296
	ds_load_u8 v59, v31 offset:7552
	ds_load_u8 v60, v31 offset:7424
	ds_load_u8 v61, v31 offset:7168
	ds_load_u8 v62, v31 offset:6784
	ds_load_u8 v63, v31 offset:7040
	ds_load_u8 v64, v31 offset:6912
	ds_load_u8 v65, v31 offset:6656
	ds_load_u8 v66, v31 offset:6272
	ds_load_u8 v67, v31 offset:6528
	ds_load_u8 v68, v31 offset:6400
	ds_load_u8 v31, v31 offset:6144
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	v_perm_b32 v32, v34, v32, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v34, v52, v48, 0xc0c0004
	v_perm_b32 v35, v51, v50, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[40:47], v[6:9], v[2:5], v[40:47] neg_lo:[1,1,0]
	v_perm_b32 v2, v38, v49, 0xc0c0004
	v_lshl_or_b32 v5, v32, 16, v33
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v10, v73, v10, 0xc0c0004
	v_perm_b32 v48, v74, v57, 0xc0c0004
	v_lshl_or_b32 v4, v35, 16, v34
	v_perm_b32 v6, v37, v75, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v56, v53, 0xc0c0004
	v_perm_b32 v8, v55, v54, 0xc0c0004
	v_lshl_or_b32 v3, v10, 16, v48
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v10, v61, v58, 0xc0c0004
	v_perm_b32 v32, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v33, v65, v62, 0xc0c0004
	v_perm_b32 v34, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v35, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v31, v66, 0xc0c0004
	v_lshl_or_b32 v2, v6, 16, v2
	v_lshl_or_b32 v9, v8, 16, v7
	v_lshl_or_b32 v8, v32, 16, v10
	v_lshl_or_b32 v7, v34, 16, v33
	v_lshl_or_b32 v6, v35, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[40:47], v[6:9], v[2:5], v[40:47] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v3, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v7, v43
	v_cvt_f32_i32_e32 v2, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v4, v45
	v_cvt_f32_i32_e32 v5, v46
	v_cvt_f32_i32_e32 v8, v47
	v_cvt_f32_i32_e32 v6, v40
	v_cvt_f32_i32_e32 v9, v41
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s6, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 26
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s6, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s6, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 6
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v10, v29, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s7, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v31, v28, s0, 1
	v_add_lshl_u32 v32, v27, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v33, v26, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v34, v22, s0, 1
	v_add_lshl_u32 v35, v25, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v37, v10, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v10, 0x80000000, v31 :: v_dual_cndmask_b32 v31, 0x80000000, v32
	v_dual_cndmask_b32 v32, 0x80000000, v33 :: v_dual_cndmask_b32 v41, 0x80000000, v34
	v_add_lshl_u32 v33, v24, s0, 1
	v_add_lshl_u32 v38, v23, s0, 1
	v_add_lshl_u32 v40, v21, s0, 1
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s7, s15
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v42, 0x80000000, v35
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v43, 0x80000000, v38 :: v_dual_cndmask_b32 v44, 0x80000000, v40
	s_clause 0x7
	buffer_load_u16 v38, v10, s[4:7], 0 offen
	buffer_load_u16 v40, v31, s[4:7], 0 offen
	buffer_load_u16 v34, v32, s[4:7], 0 offen
	buffer_load_u16 v35, v33, s[4:7], 0 offen
	buffer_load_u16 v32, v41, s[4:7], 0 offen
	buffer_load_u16 v33, v42, s[4:7], 0 offen
	buffer_load_u16 v10, v43, s[4:7], 0 offen
	buffer_load_u16 v31, v44, s[4:7], 0 offen
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_mov_b32_e32 v45, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v1, s36, v30
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v36, s35, v36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v30, v1 offset:208
	ds_load_u8 v41, v1 offset:224
	ds_load_u8 v42, v1 offset:192
	ds_load_u8 v43, v1 offset:240
	ds_load_u8 v44, v1 offset:144
	ds_load_u8 v45, v1 offset:176
	ds_load_u8 v46, v1 offset:160
	ds_load_u8 v47, v1 offset:128
	ds_load_u8 v48, v1 offset:112
	ds_load_u8 v49, v1 offset:80
	ds_load_u8 v50, v1 offset:96
	ds_load_u8 v51, v1 offset:64
	ds_load_u8 v52, v1
	ds_load_u8 v53, v1 offset:16
	ds_load_u8 v54, v1 offset:32
	ds_load_u8 v55, v1 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v41, v41, v43, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v43, v47, v44, 0xc0c0004
	v_perm_b32 v44, v46, v45, 0xc0c0004
	v_perm_b32 v30, v42, v30, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v47, v52, v53, 0xc0c0004
	v_perm_b32 v45, v51, v49, 0xc0c0004
	v_perm_b32 v46, v50, v48, 0xc0c0004
	v_lshl_or_b32 v53, v44, 16, v43
	v_mov_b32_e32 v43, 0
	ds_load_u8 v42, v36 offset:1664
	ds_load_u8 v56, v36 offset:1920
	ds_load_u8 v57, v36 offset:1792
	ds_load_u8 v58, v36 offset:1536
	ds_load_u8 v59, v36 offset:1152
	ds_load_u8 v60, v36 offset:1408
	ds_load_u8 v61, v36 offset:1280
	ds_load_u8 v62, v36 offset:1024
	ds_load_u8 v63, v36 offset:640
	ds_load_u8 v64, v36 offset:896
	ds_load_u8 v65, v36 offset:768
	ds_load_u8 v66, v36 offset:512
	ds_load_u8 v67, v36 offset:128
	ds_load_u8 v68, v36 offset:384
	ds_load_u8 v69, v36 offset:256
	ds_load_u8 v70, v36
	ds_load_u8 v71, v1 offset:288
	ds_load_u8 v72, v1 offset:256
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v48, v54, v55, 0xc0c0004
	v_lshl_or_b32 v54, v41, 16, v30
	v_lshl_or_b32 v52, v46, 16, v45
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v39, s36, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v41, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v30, v58, v42, 0xc0c0004
	v_lshl_or_b32 v51, v48, 16, v47
	v_mov_b32_e32 v49, v43
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v44, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v42, v62, v59, 0xc0c0004
	v_lshl_or_b32 v58, v41, 16, v30
	v_mov_b32_e32 v50, v43
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v46, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v45, v66, v63, 0xc0c0004
	v_lshl_or_b32 v57, v44, 16, v42
	v_mov_b32_e32 v44, v43
	ds_load_u8 v30, v1 offset:464
	ds_load_u8 v41, v1 offset:480
	ds_load_u8 v42, v1 offset:448
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v47, v70, v67, 0xc0c0004
	ds_load_u8 v59, v1 offset:496
	ds_load_u8 v60, v1 offset:400
	ds_load_u8 v61, v1 offset:432
	ds_load_u8 v62, v1 offset:416
	ds_load_u8 v63, v1 offset:384
	ds_load_u8 v64, v1 offset:336
	ds_load_u8 v65, v1 offset:352
	ds_load_u8 v66, v1 offset:320
	ds_load_u8 v67, v1 offset:368
	v_perm_b32 v48, v69, v68, 0xc0c0004
	ds_load_u8 v68, v1 offset:272
	ds_load_u8 v69, v1 offset:304
	v_lshl_or_b32 v56, v46, 16, v45
	v_mov_b32_e32 v45, v43
	v_mov_b32_e32 v46, v43
	v_lshl_or_b32 v55, v48, 16, v47
	v_mov_b32_e32 v47, v43
	v_mov_b32_e32 v48, v43
	ds_load_u8 v39, v39
	v_wmma_i32_16x16x16_iu8 v[43:50], v[55:58], v[51:54], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v52, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v51, v63, v60, 0xc0c0004
	v_perm_b32 v41, v41, v59, 0xc0c0004
	v_perm_b32 v30, v42, v30, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v55, v66, v64, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v56, v65, v67, 0xc0c0004
	ds_load_u8 v57, v36 offset:3712
	ds_load_u8 v58, v36 offset:3968
	ds_load_u8 v59, v36 offset:3840
	ds_load_u8 v60, v36 offset:3584
	ds_load_u8 v61, v36 offset:3200
	ds_load_u8 v62, v36 offset:3456
	ds_load_u8 v63, v36 offset:3328
	ds_load_u8 v64, v36 offset:3072
	ds_load_u8 v65, v36 offset:2688
	ds_load_u8 v66, v36 offset:2944
	ds_load_u8 v67, v36 offset:2816
	ds_load_u8 v78, v36 offset:2560
	ds_load_u8 v79, v36 offset:2176
	ds_load_u8 v80, v36 offset:2432
	ds_load_u8 v81, v36 offset:2304
	ds_load_u8 v82, v36 offset:2048
	v_lshl_or_b32 v53, v52, 16, v51
	v_lshl_or_b32 v54, v41, 16, v30
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v30, v72, v68, 0xc0c0004
	ds_load_u8 v41, v1 offset:720
	ds_load_u8 v68, v1 offset:736
	ds_load_u8 v72, v1 offset:704
	ds_load_u8 v83, v1 offset:752
	ds_load_u8 v84, v1 offset:656
	ds_load_u8 v85, v1 offset:688
	ds_load_u8 v86, v1 offset:672
	ds_load_u8 v87, v1 offset:640
	v_lshl_or_b32 v52, v56, 16, v55
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v51, v71, v69, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v56, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v55, v60, v57, 0xc0c0004
	ds_load_u8 v42, v1 offset:592
	ds_load_u8 v70, v1 offset:608
	ds_load_u8 v73, v1 offset:576
	ds_load_u8 v74, v1 offset:528
	ds_load_u8 v75, v1 offset:560
	ds_load_u8 v76, v1 offset:544
	ds_load_u8 v77, v1 offset:512
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v59, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v57, v64, v61, 0xc0c0004
	v_lshl_or_b32 v58, v56, 16, v55
	v_lshl_or_b32 v51, v51, 16, v30
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v61, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v60, v78, v65, 0xc0c0004
	v_lshl_or_b32 v57, v59, 16, v57
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v63, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v62, v82, v79, 0xc0c0004
	v_lshl_or_b32 v56, v61, 16, v60
	ds_load_u8 v61, v1 offset:624
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v30, v72, v41, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v60, v68, v83, 0xc0c0004
	v_lshl_or_b32 v55, v63, 16, v62
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v62, v87, v84, 0xc0c0004
	v_perm_b32 v63, v86, v85, 0xc0c0004
	ds_load_u8 v64, v36 offset:5760
	ds_load_u8 v65, v36 offset:6016
	ds_load_u8 v66, v36 offset:5888
	ds_load_u8 v67, v36 offset:5632
	ds_load_u8 v68, v36 offset:5248
	ds_load_u8 v69, v36 offset:5504
	ds_load_u8 v71, v36 offset:5376
	ds_load_u8 v72, v36 offset:5120
	ds_load_u8 v78, v36 offset:4736
	ds_load_u8 v79, v36 offset:4992
	ds_load_u8 v80, v36 offset:4864
	ds_load_u8 v81, v36 offset:4608
	ds_load_u8 v82, v36 offset:4224
	ds_load_u8 v83, v36 offset:4480
	ds_load_u8 v84, v36 offset:4352
	ds_load_u8 v85, v36 offset:4096
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v42, v73, v42, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[43:50], v[55:58], v[51:54], v[43:50] neg_lo:[1,1,0]
	v_lshl_or_b32 v54, v60, 16, v30
	v_lshl_or_b32 v53, v63, 16, v62
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v30, v77, v74, 0xc0c0004
	ds_load_u8 v41, v1 offset:800
	ds_load_u8 v59, v1 offset:768
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v56, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v55, v67, v64, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v60, v71, v69, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v57, v72, v68, 0xc0c0004
	v_lshl_or_b32 v58, v56, 16, v55
	v_perm_b32 v61, v70, v61, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v62, v80, v79, 0xc0c0004
	ds_load_u8 v70, v1 offset:784
	ds_load_u8 v73, v1 offset:848
	ds_load_u8 v86, v1 offset:864
	ds_load_u8 v87, v1 offset:832
	ds_load_u8 v88, v1 offset:816
	v_lshl_or_b32 v57, v60, 16, v57
	v_lshl_or_b32 v52, v61, 16, v42
	v_perm_b32 v42, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v61, v81, v78, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v63, v85, v82, 0xc0c0004
	v_perm_b32 v64, v84, v83, 0xc0c0004
	v_lshl_or_b32 v51, v42, 16, v30
	v_lshl_or_b32 v56, v62, 16, v61
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v55, v64, 16, v63
	ds_load_u8 v30, v1 offset:976
	ds_load_u8 v42, v1 offset:992
	ds_load_u8 v60, v1 offset:960
	ds_load_u8 v61, v1 offset:912
	ds_load_u8 v62, v1 offset:944
	ds_load_u8 v63, v1 offset:928
	ds_load_u8 v64, v1 offset:896
	ds_load_u8 v1, v1 offset:880
	ds_load_u8 v65, v36 offset:7808
	ds_load_u8 v66, v36 offset:8064
	ds_load_u8 v67, v36 offset:7936
	ds_load_u8 v68, v36 offset:7680
	ds_load_u8 v69, v36 offset:7296
	ds_load_u8 v71, v36 offset:7552
	ds_load_u8 v72, v36 offset:7424
	ds_load_u8 v74, v36 offset:7168
	ds_load_u8 v75, v36 offset:6784
	ds_load_u8 v76, v36 offset:7040
	ds_load_u8 v77, v36 offset:6912
	ds_load_u8 v78, v36 offset:6656
	ds_load_u8 v79, v36 offset:6272
	ds_load_u8 v80, v36 offset:6528
	ds_load_u8 v81, v36 offset:6400
	ds_load_u8 v36, v36 offset:6144
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v30, v60, v30, 0xc0c0004
	v_perm_b32 v39, v42, v39, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v42, v64, v61, 0xc0c0004
	v_perm_b32 v60, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v1, v86, v1, 0xc0c0004
	v_perm_b32 v61, v87, v73, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[43:50], v[55:58], v[51:54], v[43:50] neg_lo:[1,1,0]
	v_lshl_or_b32 v54, v39, 16, v30
	v_lshl_or_b32 v53, v60, 16, v42
	v_perm_b32 v30, v41, v88, 0xc0c0004
	v_lshl_or_b32 v52, v1, 16, v61
	v_perm_b32 v1, v59, v70, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v39, v68, v65, 0xc0c0004
	v_perm_b32 v41, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v42, v74, v69, 0xc0c0004
	v_perm_b32 v55, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v56, v78, v75, 0xc0c0004
	v_perm_b32 v59, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v60, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v36, v79, 0xc0c0004
	v_lshl_or_b32 v51, v30, 16, v1
	v_lshl_or_b32 v58, v41, 16, v39
	v_lshl_or_b32 v57, v55, 16, v42
	v_lshl_or_b32 v56, v59, 16, v56
	v_lshl_or_b32 v55, v60, 16, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[55:58], v[51:54], v[43:50] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v42, v44
	v_cvt_f32_i32_e32 v43, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v41, v47
	v_cvt_f32_i32_e32 v44, v48
	v_cvt_f32_i32_e32 v45, v49
	v_cvt_f32_i32_e32 v47, v50
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s34, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s6, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s7, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s34, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, 0
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 6
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v30.h, v37.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v29, v29, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v28, v28, s0, 1
	v_add_lshl_u32 v27, v27, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v24, v24, s0, 1
	v_add_lshl_u32 v26, v26, s0, 1
	v_add_lshl_u32 v22, v22, s0, 1
	v_add_lshl_u32 v25, v25, s0, 1
	v_add_lshl_u32 v23, v23, s0, 1
	v_add_lshl_u32 v21, v21, s0, 1
	v_dual_cndmask_b32 v28, 0x80000000, v28 :: v_dual_cndmask_b32 v27, 0x80000000, v27
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v29, v29, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_and_b32 v0, 16, v0
	s_clause 0x7
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	buffer_load_u16 v24, v24, s[4:7], 0 offen
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v10.h, v40.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v31.h, v38.l
	v_mov_b16_e32 v32.h, v35.l
	v_mov_b16_e32 v33.h, v34.l
	v_mov_b16_e32 v34.h, v33.l
	v_mov_b16_e32 v35.h, v32.l
	v_mov_b16_e32 v36.h, v31.l
	v_mov_b16_e32 v37.h, v10.l
	v_mov_b16_e32 v10.l, v30.l
	v_mov_b16_e32 v31.l, v30.l
	v_mov_b16_e32 v32.l, v30.l
	v_mov_b16_e32 v33.l, v30.l
	v_mov_b16_e32 v34.l, v30.l
	v_mov_b16_e32 v35.l, v30.l
	v_mov_b16_e32 v36.l, v30.l
	v_mov_b16_e32 v37.l, v30.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v38, 0x5410 :: v_dual_mul_f32 v31, v30, v31
	v_dual_mov_b32 v39, 0x7632 :: v_dual_mul_f32 v10, v30, v10
	v_mov_b16_e32 v40.h, v30.l
	v_mov_b16_e32 v48.h, v30.l
	v_mov_b16_e32 v49.h, v30.l
	v_mov_b16_e32 v50.h, v30.l
	v_mov_b16_e32 v51.h, v30.l
	v_mov_b16_e32 v52.h, v30.l
	v_mov_b16_e32 v53.h, v30.l
	v_mov_b16_e32 v54.h, v30.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v33, v30, v33
	v_mul_f32_e32 v32, v30, v32
	v_mul_f32_e32 v35, v30, v35
	v_mul_f32_e32 v34, v30, v34
	v_mul_f32_e32 v37, v30, v37
	v_mul_f32_e32 v30, v30, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v31, v6, v12
	v_fma_f32 v9, v10, v9, v19
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v20, v20, s19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v37, v5, v14
	v_fma_f32 v8, v30, v8, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v12, v6, s3
	v_cndmask_b32_e64 v9, v19, v9, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s17, s17, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v14, v5, s3
	v_cndmask_b32_e64 v8, v13, v8, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v12, 16, v27
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v10, 16, v29
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v13, 16, v28
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v34, v4, v15
	v_fma_f32 v3, v33, v3, v18
	v_fma_f32 v2, v35, v2, v16
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v12, v10, v12 :: v_dual_lshlrev_b32 v19, 16, v23
	v_mul_f32_e32 v13, v10, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v15, v4, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v14, 16, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v12, v42, v9
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v15, 16, v26
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v1, v13, v1, v6
	v_fma_f32 v7, v32, v7, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v18, v3, s3
	v_cndmask_b32_e64 v2, v16, v2, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v15, v10, v15 :: v_dual_lshlrev_b32 v16, 16, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v6, v1, s2
	v_cndmask_b32_e64 v6, v9, v12, s2
	v_cndmask_b32_e64 v7, v17, v7, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v17, 16, v22
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v19, v10, v19 :: v_dual_lshlrev_b32 v18, 16, v21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.l, v6.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v14, v10, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_mov_b16_e32 v48.l, v1.h
	v_cmp_o_f32_e64 s0, v1, v1
	v_and_b32_e32 v9, 1, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v14, v46, v7
	v_fma_f32 v14, v15, v43, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v6, v6, v9, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v13, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v3, v3, v14, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v49.l, v7.h
	v_mov_b16_e32 v50.l, v3.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v16, v10, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_cmp_o_f32_e64 s1, v7, v7
	v_and_b32_e32 v14, 1, v49
	v_and_b32_e32 v9, 1, v50
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v15, v16, v44, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v15, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v51.l, v4.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v17, v10, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v4, v4
	v_and_b32_e32 v12, 1, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v17, v41, v2
	v_fma_f32 v17, v19, v45, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v4, v4, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v16, s2
	v_cndmask_b32_e64 v5, v5, v17, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v52.l, v2.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v10, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v54.l, v5.h
	v_cmp_o_f32_e64 s6, v5, v5
	v_and_b32_e32 v13, 1, v52
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v10, v47, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v2, v2, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v8, v10, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v10, 1, v48
	v_cmp_o_f32_e64 s2, v3, v3
	v_add3_u32 v3, v3, v9, 0x7fff
	v_cndmask_b32_e32 v9, 0x1054, v38, vcc_lo
	v_mov_b16_e32 v53.l, v8.h
	v_add3_u32 v1, v1, v10, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s4
	v_cmp_o_f32_e64 s5, v8, v8
	v_add3_u32 v7, v7, v14, 0x7fff
	v_and_b32_e32 v0, 1, v53
	v_cndmask_b16 v6.l, 0x7fff, v1.h, s0
	v_cndmask_b16 v1.h, 0x7fff, v4.h, s3
	v_and_b32_e32 v2, 1, v54
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s1
	v_add3_u32 v0, v8, v0, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v3.h, s2
	v_dual_cndmask_b32 v4, v1, v6 :: v_dual_cndmask_b32 v1, v6, v1
	v_add3_u32 v2, v5, v2, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s5
	v_lshl_or_b32 v5, v9, 8, v9
	s_mov_b32 s0, 0x76543210
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s6
	v_cndmask_b32_e32 v10, 0x3276, v39, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v3, 0x540054, v5
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v6, v0, v7, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v8, v10, 8, v10
	v_lshl_or_b32 v2, v3, 4, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v5, 0x760076, v8
	v_and_b32_e32 v2, 0x5040504, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v3, v5, 4, v5
	v_cndmask_b32_e32 v5, v7, v0, vcc_lo
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_and_or_b32 v7, 0x78, v11, s33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v0, v1, v4, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v3, 0x7060706, v3
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v1, v1, v4, v3
	v_perm_b32 v2, v5, v6, v2
	v_perm_b32 v3, v5, v6, v3
	v_add_lshl_u32 v4, v7, v20, 1
	buffer_store_b128 v[0:3], v4, s[16:19], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 187
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10480
; TotalNumSgprs: 45
; NumVgprs: 187
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 45
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
	.byte	1                               ; Abbrev [1] 0xb:0x5f DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x39 DW_TAG_subprogram
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     187
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
