	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s27, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v16, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v17, 15, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v18, 2, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v45, 4, v0
	v_or_b32_e32 v44, 0x3f0, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v19, 16, v16
	v_or_b32_e32 v20, 32, v16
	v_or_b32_e32 v40, 48, v16
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s34, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v3, s34, v18
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
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
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s5, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s4, s5
	s_abs_i32 s16, s7
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v1, s35, v16
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v9, v17, 4, v1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s17, s17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b64 s[24:25], s[14:15]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s18, s18, s17
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[10:11], null, s35, 48, v[9:10]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s2, s17, s18
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v41, s35, 4, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_add_i32 s17, s17, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v42, s35, 5, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s2, s4, s17
	s_xor_b32 s17, s5, s7
	s_mul_i32 s18, s2, s16
	s_ashr_i32 s19, s17, 31
	s_sub_i32 s4, s4, s18
	s_add_i32 s17, s2, 1
	s_sub_i32 s18, s4, s16
	s_cmp_ge_u32 s4, s16
	s_cselect_b32 s2, s17, s2
	s_cselect_b32 s4, s18, s4
	s_add_i32 s17, s2, 1
	s_cmp_ge_u32 s4, s16
	s_cselect_b32 s2, s17, s2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s18, s27, 0x7f
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s2, s2, s19
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s26, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s3, s18, 31
.Ltmp15:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s2, s2, s19
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s7, s2, s7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s26, v18
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s18, s18, s3
.Ltmp19:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s5, s7
.Ltmp20:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s17, s27, 0x1ff
.Ltmp21:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s6
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s46, s2, 8
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v1
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s3, 4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s17, 0x1ff
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s26, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s26, v19
	v_or_b32_e32 v6, s26, v20
	v_or_b32_e32 v7, s26, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v15, 2, v0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s20, s35, s26
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s27, v4
	v_cmp_gt_i32_e64 s4, s27, v5
	v_cmp_gt_i32_e64 s5, s27, v6
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v2, 12, v15
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s6, s27, v7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s7, s46, s20
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s7, v9
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v11, v3, v2, s33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s2, s2, s3
	s_and_b32 s4, s4, s3
	s_and_b32 s5, s5, s3
	s_and_b32 s6, s6, s3
	s_cmpk_gt_i32 s17, 0x3ff
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s16, s34, s26
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s44, s26, 0x200
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s7, v41
	v_add_nc_u32_e32 v3, s7, v42
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v5, s16, v11
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v13, s44, v18
	v_or_b32_e32 v14, s44, v16
	v_or_b32_e32 v33, s44, v19
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v4, s7, v10
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v6, 0x80000000, v2, s4
	v_cndmask_b32_e64 v7, 0x80000000, v3, s5
	.loc	1 346 30 is_stmt 1              ; generate_amdgcn.py:346:30
	s_lshl_b32 s4, s34, 9
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s5, s35, 9
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v12, 0x80000000, v5, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v13
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v34, s44, v20
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s7, s7, s5
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v36, s16, s4, v11
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s27, v14
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v35, s44, v40
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v37, s7, v9
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s27, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v8, 0x80000000, v4, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v38, s7, v41
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s6, s27, v34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[2:5], v1, s[28:31], 0 offen
	buffer_load_b128 v[21:24], v6, s[28:31], 0 offen
	buffer_load_b128 v[25:28], v7, s[28:31], 0 offen
	buffer_load_b128 v[29:32], v8, s[28:31], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v6, v12, s[8:11], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v36, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v39, s7, v42
	v_add_nc_u32_e32 v43, s7, v10
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s7, s27, v35
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v7, 0x80000000, v37, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s5, s2
	s_mov_b32 s16, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v8, 0x80000000, v38, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s6, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v12, 0x80000000, v39, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s7, s2
	s_cmpk_gt_i32 s17, 0x5ff
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v13, 0x80000000, v43, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v14, v1, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[33:36], v7, s[28:31], 0 offen
	buffer_load_b128 v[46:49], v8, s[28:31], 0 offen
	buffer_load_b128 v[50:53], v12, s[28:31], 0 offen
	buffer_load_b128 v[54:57], v13, s[28:31], 0 offen
	v_add_nc_u32_e32 v7, 0, v45
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v8, 0, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v7, v[21:24] offset:4096
	s_waitcnt vmcnt(7)
	ds_store_b128 v7, v[25:28] offset:8192
	s_waitcnt vmcnt(6)
	ds_store_b128 v7, v[29:32] offset:12288
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(5)
	ds_store_b32 v8, v6 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v7, v[2:5]
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v8, v14 offset:33792
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v7, v[33:36] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v7, v[46:49] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v7, v[50:53] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v7, v[54:57] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v59, 0x3f0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_b32_e32 v43, 0x70, v1
	s_mov_b32 s4, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr59
                                        ; implicit-def: $vgpr43
.LBB0_3:                                ; %Flow133
	s_load_b64 s[6:7], s[0:1], 0x20
	v_or_b32_e32 v2, s33, v17
	v_and_b32_e32 v3, 0xf0, v0
	s_ashr_i32 s45, s18, 7
	v_or_b32_e32 v21, s46, v0
	v_lshlrev_b32_e32 v13, 1, v0
	v_mul_lo_u32 v39, v2, s45
	v_lshlrev_b32_e32 v12, 2, v3
	v_lshlrev_b32_e32 v14, 5, v0
	v_lshlrev_b32_e32 v23, 1, v3
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s48, s17, 9
	v_dual_mov_b32 v22, 0 :: v_dual_and_b32 v43, 0x70, v1
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v1, 32, v14
	v_and_b32_e32 v24, 28, v13
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v47, 0, v23
	v_mov_b32_e32 v27, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v25, 0, v12, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_add_nc_u32_e32 v46, v25, v24
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v31, 0
	v_mov_b32_e32 v38, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s15, s44, 0x200
	s_mov_b32 s47, 1
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_add_i32 s14, 0, 0x8000
	s_add_i32 s1, 0, 0x8400
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s48, s48, -3
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s4, s14
	s_mov_b32 s14, s1
	s_mov_b32 s1, s16
	s_mov_b32 s16, s0
	s_mov_b32 s0, s26
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s5, s17, 9
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v48, s1, v43, v17
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s0, 31
	s_mov_b32 s26, s44
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s44, s15, s5
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 25
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v53, s44, v18
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s0, s1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v49, s4, v17
	v_add_nc_u32_e32 v50, s4, v44
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v54, s44, v16
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[51:52], null, s44, s34, v[11:12]
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s4, s44, s35
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s18, s0, 7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s4, s46
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v53
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s18, s45
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v53, v39, s18, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s18, s18, s35
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s27, v54
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v54, v21, s18, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v55, s44, v19
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v124, v51, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v189, v54, s[40:43], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v190, v53, s[36:39], 0 offen
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v56, s44, v20
	v_or_b32_e32 v57, s44, v40
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v52, s4, v9
	v_add_nc_u32_e32 v58, s4, v41
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s1, s27, v55
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v59, s4, v42
	v_add_nc_u32_e32 v60, s4, v10
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s27, v56
	v_cmp_gt_i32_e64 s5, s27, v57
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v52, 0x80000000, v52, s0
	v_cndmask_b32_e64 v55, 0x80000000, v58, s1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v183, v48 offset:6400
	ds_load_u8 v184, v48 offset:6144
	ds_load_u8 v185, v48 offset:6912
	ds_load_u8 v186, v48 offset:6656
	ds_load_u8 v187, v48 offset:7040
	ds_load_u8 v188, v48 offset:6784
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v56, 0x80000000, v59, s4
	v_cndmask_b32_e64 v57, 0x80000000, v60, s5
	s_clause 0x3
	buffer_load_b128 v[64:67], v52, s[28:31], 0 offen
	buffer_load_b128 v[68:71], v55, s[28:31], 0 offen
	buffer_load_b128 v[72:75], v56, s[28:31], 0 offen
	buffer_load_b128 v[76:79], v57, s[28:31], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v49 offset:208
	ds_load_u8 v58, v49 offset:240
	ds_load_u8 v59, v49 offset:224
	ds_load_u8 v60, v49 offset:192
	ds_load_u8 v61, v49 offset:144
	ds_load_u8 v62, v49 offset:176
	ds_load_u8 v63, v49 offset:160
	ds_load_u8 v80, v49 offset:128
	ds_load_u8 v81, v49 offset:80
	ds_load_u8 v82, v49 offset:112
	ds_load_u8 v83, v49 offset:96
	ds_load_u8 v84, v49 offset:64
	ds_load_u8 v85, v49
	ds_load_u8 v86, v49 offset:16
	ds_load_u8 v87, v49 offset:32
	ds_load_u8 v88, v49 offset:48
	ds_load_u8 v89, v49 offset:464
	ds_load_u8 v90, v49 offset:496
	ds_load_u8 v91, v49 offset:480
	ds_load_u8 v92, v49 offset:448
	ds_load_u8 v93, v49 offset:400
	ds_load_u8 v94, v49 offset:432
	ds_load_u8 v95, v49 offset:416
	ds_load_u8 v96, v49 offset:384
	ds_load_u8 v97, v49 offset:336
	ds_load_u8 v98, v49 offset:368
	ds_load_u8 v99, v49 offset:352
	ds_load_u8 v100, v49 offset:320
	ds_load_u8 v101, v49 offset:272
	ds_load_u8 v102, v49 offset:304
	ds_load_u8 v103, v49 offset:288
	ds_load_u8 v104, v49 offset:256
	ds_load_u8 v105, v48 offset:4352
	ds_load_u8 v106, v48 offset:4096
	ds_load_u8 v107, v48 offset:4864
	ds_load_u8 v108, v49 offset:720
	ds_load_u8 v109, v49 offset:752
	ds_load_u8 v110, v49 offset:736
	ds_load_u8 v111, v49 offset:704
	ds_load_u8 v112, v49 offset:656
	ds_load_u8 v113, v49 offset:688
	ds_load_u8 v114, v49 offset:672
	ds_load_u8 v115, v49 offset:640
	ds_load_u8 v116, v49 offset:592
	ds_load_u8 v117, v49 offset:624
	ds_load_u8 v118, v49 offset:608
	ds_load_u8 v119, v49 offset:576
	ds_load_u8 v120, v49 offset:528
	ds_load_u8 v121, v49 offset:560
	ds_load_u8 v122, v49 offset:544
	ds_load_u8 v123, v49 offset:512
	ds_load_u8 v125, v49 offset:976
	ds_load_u8 v50, v50
	ds_load_u8 v126, v49 offset:992
	ds_load_u8 v127, v49 offset:960
	ds_load_u8 v128, v49 offset:912
	ds_load_u8 v129, v49 offset:944
	ds_load_u8 v130, v49 offset:928
	ds_load_u8 v131, v49 offset:896
	ds_load_u8 v132, v49 offset:848
	ds_load_u8 v133, v49 offset:880
	ds_load_u8 v134, v49 offset:864
	ds_load_u8 v135, v49 offset:832
	ds_load_u8 v136, v49 offset:784
	ds_load_u8 v137, v49 offset:816
	ds_load_u8 v138, v49 offset:800
	ds_load_u8 v49, v49 offset:768
	ds_load_u8 v139, v48 offset:12544
	ds_load_u8 v140, v48 offset:12288
	ds_load_u8 v141, v48 offset:13056
	ds_load_u8 v142, v48 offset:12800
	ds_load_u8 v143, v48 offset:3328
	ds_load_u8 v144, v48 offset:3072
	ds_load_u8 v145, v48 offset:3840
	ds_load_u8 v146, v48 offset:3584
	ds_load_u8 v147, v48 offset:3968
	ds_load_u8 v148, v48 offset:3712
	ds_load_u8 v149, v48 offset:3456
	ds_load_u8 v150, v48 offset:3200
	ds_load_u8 v151, v48 offset:2304
	ds_load_u8 v152, v48 offset:2048
	ds_load_u8 v153, v48 offset:2816
	ds_load_u8 v154, v48 offset:2560
	ds_load_u8 v155, v48 offset:2944
	ds_load_u8 v156, v48 offset:2688
	ds_load_u8 v157, v48 offset:2432
	ds_load_u8 v158, v48 offset:2176
	ds_load_u8 v159, v48 offset:1280
	ds_load_u8 v160, v48 offset:1024
	ds_load_u8 v161, v48 offset:1792
	ds_load_u8 v162, v48 offset:1536
	ds_load_u8 v163, v48 offset:1920
	ds_load_u8 v164, v48 offset:1664
	ds_load_u8 v165, v48 offset:1408
	ds_load_u8 v166, v48 offset:1152
	ds_load_u8 v167, v48 offset:256
	ds_load_u8 v168, v48
	ds_load_u8 v169, v48 offset:768
	ds_load_u8 v170, v48 offset:512
	ds_load_u8 v171, v48 offset:896
	ds_load_u8 v172, v48 offset:640
	ds_load_u8 v173, v48 offset:384
	ds_load_u8 v174, v48 offset:128
	ds_load_u8 v175, v48 offset:7424
	ds_load_u8 v176, v48 offset:7168
	ds_load_u8 v177, v48 offset:7936
	ds_load_u8 v178, v48 offset:7680
	ds_load_u8 v179, v48 offset:8064
	ds_load_u8 v180, v48 offset:7808
	ds_load_u8 v181, v48 offset:7552
	ds_load_u8 v182, v48 offset:7296
	ds_load_u8 v53, v48 offset:6528
	ds_load_u8 v54, v48 offset:6272
	ds_load_u8 v191, v48 offset:5376
	ds_load_u8 v192, v48 offset:5120
	ds_load_u8 v193, v48 offset:5888
	ds_load_u8 v194, v48 offset:5632
	ds_load_u8 v195, v48 offset:6016
	ds_load_u8 v196, v48 offset:5760
	ds_load_u8 v197, v48 offset:5504
	ds_load_u8 v198, v48 offset:5248
	ds_load_u8 v52, v48 offset:4608
	ds_load_u8 v55, v48 offset:4992
	ds_load_u8 v56, v48 offset:4736
	ds_load_u8 v57, v48 offset:4480
	ds_load_u8 v199, v48 offset:4224
	ds_load_u8 v200, v48 offset:11520
	ds_load_u8 v201, v48 offset:11264
	ds_load_u8 v202, v48 offset:12032
	ds_load_u8 v203, v48 offset:11776
	ds_load_u8 v204, v48 offset:12160
	ds_load_u8 v205, v48 offset:11904
	ds_load_u8 v206, v48 offset:11648
	ds_load_u8 v207, v48 offset:11392
	ds_load_u8 v208, v48 offset:10496
	ds_load_u8 v209, v48 offset:10240
	ds_load_u8 v210, v48 offset:11008
	ds_load_u8 v211, v48 offset:10752
	ds_load_u8 v212, v48 offset:11136
	ds_load_u8 v213, v48 offset:10880
	ds_load_u8 v214, v48 offset:10624
	ds_load_u8 v215, v48 offset:10368
	ds_load_u8 v216, v48 offset:9472
	ds_load_u8 v217, v48 offset:9216
	ds_load_u8 v218, v48 offset:9984
	ds_load_u8 v219, v48 offset:9728
	ds_load_u8 v220, v48 offset:10112
	ds_load_u8 v221, v48 offset:9856
	ds_load_u8 v222, v48 offset:9600
	ds_load_u8 v223, v48 offset:9344
	ds_load_u8 v224, v48 offset:8448
	ds_load_u8 v225, v48 offset:8192
	ds_load_u8 v226, v48 offset:8960
	ds_load_u8 v227, v48 offset:8704
	ds_load_u8 v228, v48 offset:9088
	ds_load_u8 v229, v48 offset:8832
	ds_load_u8 v230, v48 offset:8576
	ds_load_u8 v231, v48 offset:8320
	ds_load_u8 v232, v48 offset:15616
	ds_load_u8 v233, v48 offset:15360
	ds_load_u8 v234, v48 offset:16128
	ds_load_u8 v235, v48 offset:15872
	ds_load_u8 v236, v48 offset:16256
	ds_load_u8 v237, v48 offset:16000
	ds_load_u8 v238, v48 offset:15744
	ds_load_u8 v239, v48 offset:15488
	ds_load_u8 v240, v48 offset:14592
	ds_load_u8 v241, v48 offset:14336
	ds_load_u8 v242, v48 offset:15104
	ds_load_u8 v243, v48 offset:14848
	ds_load_u8 v244, v48 offset:15232
	ds_load_u8 v245, v48 offset:14976
	ds_load_u8 v246, v48 offset:14720
	ds_load_u8 v247, v48 offset:14464
	ds_load_u8 v248, v48 offset:13568
	ds_load_u8 v249, v48 offset:13312
	ds_load_u8 v250, v48 offset:14080
	ds_load_u8 v251, v48 offset:13824
	ds_load_u8 v252, v48 offset:14208
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v51, v60, v51, 0xc0c0004
	ds_load_u8 v60, v48 offset:13952
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v48 offset:13696
	v_perm_b32 v61, v80, v61, 0xc0c0004
	ds_load_u8 v80, v48 offset:13440
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v48 offset:13184
	v_perm_b32 v81, v84, v81, 0xc0c0004
	ds_load_u8 v84, v48 offset:12928
	v_perm_b32 v253, v83, v82, 0xc0c0004
	ds_load_u8 v82, v48 offset:12672
	ds_load_u8 v48, v48 offset:12416
	v_perm_b32 v85, v85, v86, 0xc0c0004
	v_perm_b32 v86, v87, v88, 0xc0c0004
	v_perm_b32 v87, v144, v143, 0xc0c0004
	v_perm_b32 v88, v146, v145, 0xc0c0004
	v_perm_b32 v143, v152, v151, 0xc0c0004
	v_perm_b32 v144, v154, v153, 0xc0c0004
	v_perm_b32 v145, v160, v159, 0xc0c0004
	v_perm_b32 v146, v162, v161, 0xc0c0004
	v_perm_b32 v151, v168, v167, 0xc0c0004
	v_perm_b32 v152, v170, v169, 0xc0c0004
	v_perm_b32 v89, v92, v89, 0xc0c0004
	v_perm_b32 v90, v91, v90, 0xc0c0004
	v_perm_b32 v91, v96, v93, 0xc0c0004
	v_perm_b32 v92, v95, v94, 0xc0c0004
	v_perm_b32 v93, v100, v97, 0xc0c0004
	v_perm_b32 v94, v99, v98, 0xc0c0004
	v_perm_b32 v95, v104, v101, 0xc0c0004
	v_perm_b32 v96, v103, v102, 0xc0c0004
	v_perm_b32 v97, v176, v175, 0xc0c0004
	v_perm_b32 v98, v178, v177, 0xc0c0004
	v_perm_b32 v99, v184, v183, 0xc0c0004
	v_perm_b32 v100, v186, v185, 0xc0c0004
	v_perm_b32 v101, v192, v191, 0xc0c0004
	v_perm_b32 v102, v194, v193, 0xc0c0004
	v_perm_b32 v103, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v52, v52, v107, 0xc0c0004
	v_perm_b32 v104, v111, v108, 0xc0c0004
	v_perm_b32 v105, v110, v109, 0xc0c0004
	v_perm_b32 v106, v115, v112, 0xc0c0004
	v_perm_b32 v107, v114, v113, 0xc0c0004
	v_perm_b32 v108, v119, v116, 0xc0c0004
	v_perm_b32 v109, v118, v117, 0xc0c0004
	v_perm_b32 v110, v123, v120, 0xc0c0004
	v_perm_b32 v111, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v112, v201, v200, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v113, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v114, v209, v208, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v115, v211, v210, 0xc0c0004
	v_perm_b32 v120, v127, v125, 0xc0c0004
	v_perm_b32 v50, v126, v50, 0xc0c0004
	v_perm_b32 v123, v135, v132, 0xc0c0004
	v_perm_b32 v125, v134, v133, 0xc0c0004
	v_perm_b32 v49, v49, v136, 0xc0c0004
	v_perm_b32 v126, v138, v137, 0xc0c0004
	v_perm_b32 v133, v140, v139, 0xc0c0004
	v_perm_b32 v134, v142, v141, 0xc0c0004
	v_perm_b32 v135, v150, v149, 0xc0c0004
	v_perm_b32 v136, v148, v147, 0xc0c0004
	v_perm_b32 v137, v158, v157, 0xc0c0004
	v_perm_b32 v138, v156, v155, 0xc0c0004
	v_perm_b32 v139, v166, v165, 0xc0c0004
	v_perm_b32 v140, v164, v163, 0xc0c0004
	v_perm_b32 v141, v174, v173, 0xc0c0004
	v_perm_b32 v142, v172, v171, 0xc0c0004
	v_perm_b32 v53, v54, v53, 0xc0c0004
	v_perm_b32 v54, v188, v187, 0xc0c0004
	v_perm_b32 v153, v199, v57, 0xc0c0004
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v166, v80, v59, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v48, v82, 0xc0c0004
	v_perm_b32 v63, v84, v63, 0xc0c0004
	v_lshl_or_b32 v83, v58, 16, v51
	v_lshl_or_b32 v82, v62, 16, v61
	v_lshl_or_b32 v81, v253, 16, v81
	v_lshl_or_b32 v80, v86, 16, v85
	v_lshl_or_b32 v59, v88, 16, v87
	v_lshl_or_b32 v58, v144, 16, v143
	v_lshl_or_b32 v57, v146, 16, v145
	v_lshl_or_b32 v56, v152, 16, v151
	v_perm_b32 v116, v217, v216, 0xc0c0004
	v_perm_b32 v117, v219, v218, 0xc0c0004
	v_perm_b32 v118, v225, v224, 0xc0c0004
	v_perm_b32 v119, v227, v226, 0xc0c0004
	v_perm_b32 v121, v131, v128, 0xc0c0004
	v_perm_b32 v122, v130, v129, 0xc0c0004
	v_perm_b32 v147, v182, v181, 0xc0c0004
	v_perm_b32 v148, v180, v179, 0xc0c0004
	v_perm_b32 v149, v198, v197, 0xc0c0004
	v_perm_b32 v150, v196, v195, 0xc0c0004
	v_perm_b32 v60, v60, v252, 0xc0c0004
	v_lshl_or_b32 v87, v90, 16, v89
	v_lshl_or_b32 v86, v92, 16, v91
	v_lshl_or_b32 v85, v94, 16, v93
	v_lshl_or_b32 v84, v96, 16, v95
	v_lshl_or_b32 v91, v98, 16, v97
	v_lshl_or_b32 v90, v100, 16, v99
	v_lshl_or_b32 v89, v102, 16, v101
	v_lshl_or_b32 v88, v52, 16, v103
	v_lshl_or_b32 v93, v109, 16, v108
	v_lshl_or_b32 v92, v111, 16, v110
	v_lshl_or_b32 v99, v113, 16, v112
	v_lshl_or_b32 v98, v115, 16, v114
	v_lshl_or_b32 v103, v50, 16, v120
	v_lshl_or_b32 v100, v126, 16, v49
	v_lshl_or_b32 v111, v136, 16, v135
	v_lshl_or_b32 v110, v138, 16, v137
	v_lshl_or_b32 v109, v140, 16, v139
	v_lshl_or_b32 v108, v142, 16, v141
	v_lshl_or_b32 v114, v54, 16, v53
	v_lshl_or_b32 v112, v55, 16, v153
	v_lshl_or_b32 v120, v63, 16, v48
	v_wmma_i32_16x16x16_iu8 v[48:55], v[56:59], v[80:83], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v127, v233, v232, 0xc0c0004
	v_perm_b32 v128, v235, v234, 0xc0c0004
	v_perm_b32 v129, v241, v240, 0xc0c0004
	v_perm_b32 v130, v243, v242, 0xc0c0004
	v_perm_b32 v131, v249, v248, 0xc0c0004
	v_perm_b32 v132, v251, v250, 0xc0c0004
	v_perm_b32 v154, v207, v206, 0xc0c0004
	v_perm_b32 v155, v205, v204, 0xc0c0004
	v_perm_b32 v156, v215, v214, 0xc0c0004
	v_perm_b32 v157, v213, v212, 0xc0c0004
	v_perm_b32 v158, v223, v222, 0xc0c0004
	v_perm_b32 v159, v221, v220, 0xc0c0004
	v_perm_b32 v160, v231, v230, 0xc0c0004
	v_perm_b32 v161, v229, v228, 0xc0c0004
	v_lshl_or_b32 v95, v105, 16, v104
	v_lshl_or_b32 v94, v107, 16, v106
	v_lshl_or_b32 v97, v117, 16, v116
	v_lshl_or_b32 v96, v119, 16, v118
	v_lshl_or_b32 v102, v122, 16, v121
	v_lshl_or_b32 v115, v148, 16, v147
	v_lshl_or_b32 v113, v150, 16, v149
	v_lshl_or_b32 v121, v60, 16, v166
	v_wmma_i32_16x16x16_iu8 v[56:63], v[108:111], v[80:83], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[88:91], v[84:87], v[48:55] neg_lo:[1,1,0]
	v_perm_b32 v162, v239, v238, 0xc0c0004
	v_perm_b32 v163, v237, v236, 0xc0c0004
	v_perm_b32 v164, v247, v246, 0xc0c0004
	v_perm_b32 v165, v245, v244, 0xc0c0004
	v_lshl_or_b32 v101, v125, 16, v123
	v_lshl_or_b32 v107, v128, 16, v127
	v_lshl_or_b32 v106, v130, 16, v129
	v_lshl_or_b32 v105, v132, 16, v131
	v_lshl_or_b32 v104, v134, 16, v133
	v_lshl_or_b32 v119, v155, 16, v154
	v_lshl_or_b32 v118, v157, 16, v156
	v_lshl_or_b32 v117, v159, 16, v158
	v_lshl_or_b32 v116, v161, 16, v160
	v_wmma_i32_16x16x16_iu8 v[56:63], v[112:115], v[84:87], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[96:99], v[92:95], v[48:55] neg_lo:[1,1,0]
	v_lshl_or_b32 v123, v163, 16, v162
	v_lshl_or_b32 v122, v165, 16, v164
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s18, s47, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[56:63], v[116:119], v[92:95], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[104:107], v[100:103], v[48:55] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s18, 2
	s_cselect_b32 s47, s18, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[56:63], v[120:123], v[100:103], v[56:63] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v80, v48
	v_cvt_f32_i32_e32 v81, v49
	v_cvt_f32_i32_e32 v82, v50
	v_cvt_f32_i32_e32 v83, v51
	v_cvt_f32_i32_e32 v84, v52
	v_cvt_f32_i32_e32 v85, v53
	v_cvt_f32_i32_e32 v86, v54
	v_cvt_f32_i32_e32 v87, v55
	v_cvt_f32_i32_e32 v88, v56
	v_cvt_f32_i32_e32 v89, v57
	v_cvt_f32_i32_e32 v90, v58
	v_cvt_f32_i32_e32 v91, v59
	v_cvt_f32_i32_e32 v92, v60
	v_cvt_f32_i32_e32 v93, v61
	v_cvt_f32_i32_e32 v94, v62
	v_cvt_f32_i32_e32 v95, v63
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s0, s47, 10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s1, s47, 14
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s5, s0, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s0, s1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s4, s17, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s1, s5, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s17, s48
	s_mov_b32 s17, s4
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v96, 16, v190
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v48, 16, v189
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v46, v48 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v47 offset:34816
	ds_load_b128 v[52:55], v47 offset:34832
	ds_load_b128 v[56:59], v47 offset:35328
	ds_load_b128 v[60:63], v47 offset:35344
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v254, s5, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v255, s0, v45
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v49, v49, v96
	v_mul_f32_e32 v51, v51, v96
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v53, v53, v96
	v_mul_f32_e32 v48, v48, v96
	v_mul_f32_e32 v50, v50, v96
	v_mul_f32_e32 v52, v52, v96
	v_mul_f32_e32 v55, v55, v96
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v56, v56, v96
	v_mul_f32_e32 v57, v57, v96
	v_mul_f32_e32 v54, v54, v96
	v_dual_mul_f32 v59, v59, v96 :: v_dual_fmac_f32 v24, v49, v81
	v_mul_f32_e32 v58, v58, v96
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v61, v61, v96 :: v_dual_fmac_f32 v26, v51, v83
	v_mul_f32_e32 v60, v60, v96
	v_dual_mul_f32 v63, v63, v96 :: v_dual_fmac_f32 v28, v53, v85
	v_mul_f32_e32 v62, v62, v96
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v22, v48, v80 :: v_dual_fmac_f32 v25, v50, v82
	v_dual_fmac_f32 v27, v52, v84 :: v_dual_fmac_f32 v30, v55, v87
	v_dual_fmac_f32 v32, v56, v88 :: v_dual_fmac_f32 v33, v57, v89
	v_fmac_f32_e32 v29, v54, v86
	v_dual_fmac_f32 v35, v59, v91 :: v_dual_fmac_f32 v34, v58, v90
	v_dual_fmac_f32 v37, v61, v93 :: v_dual_fmac_f32 v36, v60, v92
	v_dual_fmac_f32 v31, v63, v95 :: v_dual_fmac_f32 v38, v62, v94
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_store_b32 v254, v124 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v255, v[64:67]
	s_waitcnt vmcnt(2)
	ds_store_b128 v255, v[68:71] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v255, v[72:75] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v255, v[76:79] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v59, v44
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v22, 0
	s_add_i32 s14, 0, 0x8000
	s_add_i32 s1, 0, 0x8400
	s_add_i32 s0, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v18, v43, v17
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v56, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v57, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v5, s16, v18
	s_mov_b32 s16, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v57, s23 :: v_dual_add_nc_u32 v6, s14, v17
	ds_load_u8 v1, v6 offset:240
	ds_load_u8 v2, v6 offset:208
	ds_load_u8 v3, v6 offset:224
	ds_load_u8 v4, v6 offset:192
	ds_load_u8 v7, v6 offset:144
	ds_load_u8 v8, v6 offset:160
	ds_load_u8 v9, v6 offset:128
	ds_load_u8 v10, v6 offset:176
	ds_load_u8 v11, v6 offset:112
	ds_load_u8 v15, v6 offset:80
	ds_load_u8 v16, v6 offset:96
	ds_load_u8 v20, v6 offset:64
	ds_load_u8 v40, v6 offset:16
	ds_load_u8 v41, v6 offset:32
	ds_load_u8 v42, v6
	ds_load_u8 v43, v6 offset:48
	v_mov_b32_e32 v56, s22
	v_dual_mov_b32 v55, s21 :: v_dual_add_nc_u32 v44, s14, v59
	ds_load_u8 v61, v6 offset:464
	ds_load_u8 v62, v6 offset:480
	ds_load_u8 v63, v6 offset:448
	ds_load_u8 v64, v6 offset:496
	ds_load_u8 v65, v6 offset:400
	ds_load_u8 v66, v6 offset:432
	ds_load_u8 v67, v6 offset:416
	ds_load_u8 v69, v6 offset:384
	ds_load_u8 v70, v6 offset:368
	ds_load_u8 v71, v6 offset:336
	ds_load_u8 v82, v6 offset:352
	ds_load_u8 v83, v6 offset:320
	ds_load_u8 v84, v6 offset:272
	ds_load_u8 v85, v6 offset:304
	ds_load_u8 v58, v6 offset:288
	ds_load_u8 v60, v6 offset:256
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v2, v4, v2, 0xc0c0004
	ds_load_u8 v105, v6 offset:752
	v_dual_mov_b32 v54, s20 :: v_dual_mov_b32 v53, s19
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v3, v9, v7, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v7, v8, v10, 0xc0c0004
	ds_load_u8 v8, v5 offset:3328
	ds_load_u8 v9, v5 offset:3072
	ds_load_u8 v10, v5 offset:3840
	ds_load_u8 v45, v5 offset:3584
	v_lshl_or_b32 v4, v1, 16, v2
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v1, v20, v15, 0xc0c0004
	v_perm_b32 v2, v16, v11, 0xc0c0004
	v_lshl_or_b32 v3, v7, 16, v3
	ds_load_u8 v11, v44
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v7, v42, v40, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v15, v41, v43, 0xc0c0004
	ds_load_u8 v16, v5 offset:2304
	ds_load_u8 v20, v5 offset:2048
	ds_load_u8 v40, v5 offset:2816
	ds_load_u8 v41, v5 offset:2560
	ds_load_u8 v42, v5 offset:1280
	ds_load_u8 v43, v5 offset:1024
	ds_load_u8 v44, v5 offset:1792
	ds_load_u8 v46, v5 offset:1536
	ds_load_u8 v68, v5 offset:3968
	ds_load_u8 v72, v5 offset:3712
	ds_load_u8 v73, v5 offset:3456
	ds_load_u8 v74, v5 offset:3200
	v_lshl_or_b32 v2, v2, 16, v1
	v_dual_mov_b32 v52, s18 :: v_dual_mov_b32 v51, s17
	v_lshl_or_b32 v1, v15, 16, v7
	v_mov_b32_e32 v50, s16
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v60, v60, v84, 0xc0c0004
	v_perm_b32 v58, v58, v85, 0xc0c0004
	ds_load_u8 v86, v6 offset:592
	ds_load_u8 v87, v6 offset:608
	ds_load_u8 v88, v6 offset:576
	ds_load_u8 v89, v6 offset:528
	ds_load_u8 v90, v6 offset:560
	ds_load_u8 v91, v6 offset:544
	ds_load_u8 v92, v6 offset:512
	ds_load_u8 v127, v5 offset:9088
	ds_load_u8 v128, v5 offset:8832
	ds_load_u8 v129, v5 offset:8576
	ds_load_u8 v130, v5 offset:8320
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v16, v20, v16, 0xc0c0004
	v_perm_b32 v9, v45, v10, 0xc0c0004
	ds_load_u8 v45, v5 offset:256
	ds_load_u8 v47, v5
	ds_load_u8 v48, v5 offset:768
	ds_load_u8 v49, v5 offset:512
	ds_load_u8 v75, v5 offset:2944
	ds_load_u8 v76, v5 offset:2688
	ds_load_u8 v77, v5 offset:2432
	ds_load_u8 v78, v5 offset:2176
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_perm_b32 v20, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v43, v46, v44, 0xc0c0004
	v_lshl_or_b32 v10, v9, 16, v8
	ds_load_u8 v40, v5 offset:1920
	ds_load_u8 v41, v5 offset:1664
	ds_load_u8 v79, v5 offset:1408
	ds_load_u8 v80, v5 offset:1152
	ds_load_u8 v132, v5 offset:14208
	ds_load_u8 v133, v5 offset:13952
	ds_load_u8 v134, v5 offset:13696
	ds_load_u8 v135, v5 offset:13440
	v_lshl_or_b32 v9, v20, 16, v16
	v_lshl_or_b32 v8, v43, 16, v42
	ds_load_u8 v15, v5 offset:896
	ds_load_u8 v16, v5 offset:640
	ds_load_u8 v20, v5 offset:384
	ds_load_u8 v81, v5 offset:128
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v86, v88, v86, 0xc0c0004
	v_perm_b32 v72, v72, v68, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v7, v47, v45, 0xc0c0004
	v_perm_b32 v88, v91, v90, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v42, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v76, v76, v75, 0xc0c0004
	v_lshl_or_b32 v75, v72, 16, v73
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v74, v78, v77, 0xc0c0004
	v_lshl_or_b32 v7, v42, 16, v7
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v77, v80, v79, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[42:49], v[7:10], v[1:4], v[50:57] neg_lo:[1,1,0]
	v_perm_b32 v7, v63, v61, 0xc0c0004
	v_perm_b32 v8, v62, v64, 0xc0c0004
	ds_load_u8 v61, v5 offset:7424
	ds_load_u8 v62, v5 offset:7168
	ds_load_u8 v63, v5 offset:7936
	ds_load_u8 v64, v5 offset:7680
	v_perm_b32 v9, v69, v65, 0xc0c0004
	v_perm_b32 v65, v67, v66, 0xc0c0004
	v_perm_b32 v66, v83, v71, 0xc0c0004
	v_lshl_or_b32 v10, v8, 16, v7
	v_lshl_or_b32 v7, v58, 16, v60
	v_perm_b32 v67, v82, v70, 0xc0c0004
	v_lshl_or_b32 v9, v65, 16, v9
	ds_load_u8 v69, v5 offset:6400
	ds_load_u8 v70, v5 offset:6144
	ds_load_u8 v71, v5 offset:6912
	ds_load_u8 v82, v5 offset:6656
	ds_load_u8 v58, v5 offset:8064
	ds_load_u8 v83, v5 offset:7808
	ds_load_u8 v84, v5 offset:7552
	ds_load_u8 v85, v5 offset:7296
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v20, v81, v20, 0xc0c0004
	v_lshl_or_b32 v8, v67, 16, v66
	v_perm_b32 v15, v16, v15, 0xc0c0004
	v_lshl_or_b32 v74, v76, 16, v74
	v_lshl_or_b32 v73, v40, 16, v77
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v72, v15, 16, v20
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v60, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v61, v64, v63, 0xc0c0004
	ds_load_u8 v62, v5 offset:5376
	ds_load_u8 v63, v5 offset:5120
	ds_load_u8 v64, v5 offset:5888
	ds_load_u8 v65, v5 offset:5632
	ds_load_u8 v93, v5 offset:7040
	ds_load_u8 v94, v5 offset:6784
	ds_load_u8 v95, v5 offset:6528
	ds_load_u8 v96, v5 offset:6272
	v_wmma_i32_16x16x16_iu8 v[50:57], v[72:75], v[1:4], v[50:57] neg_lo:[1,1,0]
	v_perm_b32 v72, v130, v129, 0xc0c0004
	v_perm_b32 v73, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v66, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v16, v83, v58, 0xc0c0004
	v_perm_b32 v67, v82, v71, 0xc0c0004
	ds_load_u8 v69, v5 offset:4352
	ds_load_u8 v70, v5 offset:4096
	ds_load_u8 v71, v5 offset:4864
	ds_load_u8 v82, v5 offset:4608
	ds_load_u8 v97, v6 offset:720
	ds_load_u8 v98, v6 offset:736
	ds_load_u8 v99, v6 offset:704
	ds_load_u8 v100, v5 offset:6016
	ds_load_u8 v101, v5 offset:5760
	ds_load_u8 v102, v5 offset:5504
	ds_load_u8 v103, v5 offset:5248
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v15, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v104, v63, v62, 0xc0c0004
	v_lshl_or_b32 v63, v61, 16, v60
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v6 offset:656
	ds_load_u8 v106, v6 offset:688
	ds_load_u8 v107, v6 offset:672
	ds_load_u8 v108, v6 offset:640
	ds_load_u8 v109, v5 offset:4992
	ds_load_u8 v110, v5 offset:4736
	ds_load_u8 v111, v5 offset:4480
	ds_load_u8 v112, v5 offset:4224
	v_lshl_or_b32 v62, v67, 16, v66
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	v_perm_b32 v20, v96, v95, 0xc0c0004
	v_lshl_or_b32 v61, v64, 16, v104
	ds_load_u8 v64, v6 offset:624
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v70, v82, v71, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v66, v99, v97, 0xc0c0004
	v_perm_b32 v67, v98, v105, 0xc0c0004
	ds_load_u8 v71, v6 offset:784
	ds_load_u8 v82, v6 offset:848
	ds_load_u8 v97, v6 offset:864
	ds_load_u8 v98, v6 offset:832
	ds_load_u8 v99, v6 offset:816
	v_perm_b32 v40, v94, v93, 0xc0c0004
	v_lshl_or_b32 v60, v70, 16, v69
	ds_load_u8 v69, v6 offset:800
	ds_load_u8 v70, v6 offset:768
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v41, v103, v102, 0xc0c0004
	v_perm_b32 v58, v101, v100, 0xc0c0004
	v_lshl_or_b32 v4, v16, 16, v15
	v_wmma_i32_16x16x16_iu8 v[42:49], v[60:63], v[7:10], v[42:49] neg_lo:[1,1,0]
	v_lshl_or_b32 v63, v67, 16, v66
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v60, v108, v65, 0xc0c0004
	ds_load_u8 v65, v5 offset:11520
	ds_load_u8 v66, v5 offset:11264
	ds_load_u8 v67, v5 offset:12032
	ds_load_u8 v104, v5 offset:11776
	v_perm_b32 v61, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v76, v112, v111, 0xc0c0004
	v_perm_b32 v77, v110, v109, 0xc0c0004
	v_lshl_or_b32 v3, v40, 16, v20
	v_lshl_or_b32 v2, v58, 16, v41
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v64, v87, v64, 0xc0c0004
	v_perm_b32 v87, v92, v89, 0xc0c0004
	ds_load_u8 v89, v5 offset:10496
	ds_load_u8 v90, v5 offset:10240
	v_lshl_or_b32 v62, v61, 16, v60
	v_lshl_or_b32 v1, v77, 16, v76
	v_lshl_or_b32 v61, v64, 16, v86
	v_lshl_or_b32 v60, v88, 16, v87
	ds_load_u8 v64, v5 offset:11008
	ds_load_u8 v86, v5 offset:10752
	ds_load_u8 v87, v5 offset:9472
	ds_load_u8 v88, v5 offset:9216
	ds_load_u8 v91, v5 offset:12160
	ds_load_u8 v92, v5 offset:11904
	ds_load_u8 v105, v5 offset:11648
	ds_load_u8 v106, v5 offset:11392
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v69, v69, v99, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[50:57], v[1:4], v[7:10], v[50:57] neg_lo:[1,1,0]
	v_lshl_or_b32 v1, v73, 16, v72
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v66, v104, v67, 0xc0c0004
	ds_load_u8 v67, v5 offset:9984
	ds_load_u8 v104, v5 offset:9728
	ds_load_u8 v107, v5 offset:11136
	ds_load_u8 v108, v5 offset:10880
	ds_load_u8 v113, v5 offset:10624
	ds_load_u8 v114, v5 offset:10368
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v64, v86, v64, 0xc0c0004
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v5 offset:8448
	ds_load_u8 v115, v5 offset:8192
	ds_load_u8 v116, v5 offset:8960
	ds_load_u8 v117, v5 offset:8704
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v6 offset:976
	ds_load_u8 v121, v6 offset:992
	ds_load_u8 v122, v6 offset:960
	ds_load_u8 v123, v6 offset:912
	ds_load_u8 v124, v6 offset:944
	ds_load_u8 v125, v6 offset:928
	ds_load_u8 v126, v6 offset:896
	ds_load_u8 v6, v6 offset:880
	ds_load_u8 v86, v5 offset:10112
	ds_load_u8 v118, v5 offset:9856
	ds_load_u8 v119, v5 offset:9600
	ds_load_u8 v120, v5 offset:9344
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v15, v106, v105, 0xc0c0004
	v_perm_b32 v16, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v104, v104, v67, 0xc0c0004
	v_lshl_or_b32 v67, v66, 16, v65
	v_lshl_or_b32 v66, v64, 16, v89
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v40, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v20, v114, v113, 0xc0c0004
	v_lshl_or_b32 v65, v104, 16, v87
	v_lshl_or_b32 v4, v16, 16, v15
	v_perm_b32 v15, v135, v134, 0xc0c0004
	v_perm_b32 v16, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v11, v121, v11, 0xc0c0004
	v_perm_b32 v90, v115, v90, 0xc0c0004
	v_lshl_or_b32 v3, v40, 16, v20
	v_perm_b32 v115, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v58, v118, v86, 0xc0c0004
	v_perm_b32 v6, v97, v6, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v120, v119, 0xc0c0004
	v_lshl_or_b32 v64, v115, 16, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v58, 16, v41
	v_wmma_i32_16x16x16_iu8 v[42:49], v[64:67], v[60:63], v[42:49] neg_lo:[1,1,0]
	v_perm_b32 v64, v122, v88, 0xc0c0004
	v_perm_b32 v65, v126, v123, 0xc0c0004
	v_perm_b32 v66, v125, v124, 0xc0c0004
	ds_load_u8 v87, v5 offset:15616
	ds_load_u8 v88, v5 offset:15360
	ds_load_u8 v89, v5 offset:16128
	ds_load_u8 v90, v5 offset:15872
	v_wmma_i32_16x16x16_iu8 v[50:57], v[1:4], v[60:63], v[50:57] neg_lo:[1,1,0]
	v_lshl_or_b32 v67, v11, 16, v64
	v_perm_b32 v11, v98, v82, 0xc0c0004
	v_lshl_or_b32 v66, v66, 16, v65
	v_perm_b32 v64, v70, v71, 0xc0c0004
	ds_load_u8 v65, v5 offset:14592
	ds_load_u8 v70, v5 offset:14336
	ds_load_u8 v71, v5 offset:15104
	ds_load_u8 v82, v5 offset:14848
	ds_load_u8 v97, v5 offset:13568
	ds_load_u8 v98, v5 offset:13312
	ds_load_u8 v99, v5 offset:14080
	ds_load_u8 v104, v5 offset:13824
	ds_load_u8 v115, v5 offset:16256
	ds_load_u8 v116, v5 offset:16000
	ds_load_u8 v117, v5 offset:15744
	ds_load_u8 v121, v5 offset:15488
	v_lshl_or_b32 v2, v16, 16, v15
	v_lshl_or_b32 v64, v69, 16, v64
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v70, v70, v65, 0xc0c0004
	v_lshl_or_b32 v65, v6, 16, v11
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v82, v82, v71, 0xc0c0004
	v_perm_b32 v87, v88, v87, 0xc0c0004
	v_perm_b32 v88, v90, v89, 0xc0c0004
	ds_load_u8 v89, v5 offset:12544
	ds_load_u8 v90, v5 offset:12288
	ds_load_u8 v122, v5 offset:13056
	ds_load_u8 v123, v5 offset:12800
	ds_load_u8 v124, v5 offset:15232
	ds_load_u8 v125, v5 offset:14976
	ds_load_u8 v126, v5 offset:14720
	ds_load_u8 v131, v5 offset:14464
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	v_lshl_or_b32 v70, v82, 16, v70
	ds_load_u8 v6, v5 offset:13184
	ds_load_u8 v11, v5 offset:12928
	ds_load_u8 v82, v5 offset:12672
	ds_load_u8 v5, v5 offset:12416
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v98, v104, v99, 0xc0c0004
	v_lshl_or_b32 v71, v88, 16, v87
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v121, v117, 0xc0c0004
	v_perm_b32 v8, v116, v115, 0xc0c0004
	v_lshl_or_b32 v69, v98, 16, v97
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v4, v8, 16, v7
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v87, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v88, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v10, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v131, v126, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v6, v11, v6, 0xc0c0004
	v_lshl_or_b32 v68, v88, 16, v87
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v82, 0xc0c0004
	v_lshl_or_b32 v3, v10, 16, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[42:49], v[68:71], v[64:67], v[42:49] neg_lo:[1,1,0]
	v_lshl_or_b32 v1, v6, 16, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v41, v43
	v_wmma_i32_16x16x16_iu8 v[50:57], v[1:4], v[64:67], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v43, v44
	v_cvt_f32_i32_e32 v44, v45
	v_cvt_f32_i32_e32 v45, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v46, v42
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s26, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s4, s4, 25
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s4, s26, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s15
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s5, s4, s35
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s45
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v39, s4, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v21, s5, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s4, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s13, s13, 0xffff
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_mov_b32 v62, 0 :: v_dual_and_b32 v3, 32, v14
	v_mov_b32_e32 v20, 0
	buffer_load_u16 v60, v1, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v2, v2, s[24:27], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_and_b32_e32 v1, 28, v13
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v58, 0, v23
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or3_b32 v40, v12, v3, v1
	v_mov_b32_e32 v61, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v42, 0, v40
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v74, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v64, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v42, v1 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v58 offset:34816
	ds_load_b128 v[5:8], v58 offset:34832
	ds_load_b128 v[9:12], v58 offset:35328
	ds_load_b128 v[13:16], v58 offset:35344
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s16, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v62, s1, v17
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v17, v62 offset:240
	ds_load_u8 v19, v62 offset:208
	ds_load_u8 v20, v62 offset:224
	ds_load_u8 v63, v62 offset:192
	ds_load_u8 v64, v62 offset:144
	ds_load_u8 v65, v62 offset:160
	ds_load_u8 v66, v62 offset:128
	ds_load_u8 v67, v62 offset:176
	ds_load_u8 v68, v62 offset:112
	ds_load_u8 v69, v62 offset:80
	ds_load_u8 v70, v62 offset:96
	ds_load_u8 v71, v62 offset:64
	ds_load_u8 v72, v62 offset:16
	ds_load_u8 v73, v62 offset:32
	ds_load_u8 v74, v62
	ds_load_u8 v75, v62 offset:48
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v61, s0, v18
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v18, s1, v59
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v134, v62 offset:752
	ds_load_u8 v91, v18
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v19, v63, v19, 0xc0c0004
	v_perm_b32 v17, v20, v17, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v63, v66, v64, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v64, v65, v67, 0xc0c0004
	ds_load_u8 v65, v61 offset:3328
	ds_load_u8 v66, v61 offset:3072
	ds_load_u8 v67, v61 offset:3840
	ds_load_u8 v76, v61 offset:3584
	v_lshl_or_b32 v20, v17, 16, v19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v17, v71, v69, 0xc0c0004
	v_lshl_or_b32 v19, v64, 16, v63
	v_perm_b32 v63, v70, v68, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v64, v74, v72, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v68, v73, v75, 0xc0c0004
	ds_load_u8 v18, v61 offset:2304
	ds_load_u8 v69, v61 offset:2048
	ds_load_u8 v70, v61 offset:2816
	ds_load_u8 v71, v61 offset:2560
	ds_load_u8 v72, v61 offset:1280
	ds_load_u8 v73, v61 offset:1024
	ds_load_u8 v74, v61 offset:1792
	ds_load_u8 v75, v61 offset:1536
	ds_load_u8 v95, v61 offset:3968
	ds_load_u8 v96, v61 offset:3712
	ds_load_u8 v97, v61 offset:3456
	ds_load_u8 v98, v61 offset:3200
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v69, v69, v18, 0xc0c0004
	v_perm_b32 v66, v76, v67, 0xc0c0004
	ds_load_u8 v67, v61 offset:256
	ds_load_u8 v76, v61
	ds_load_u8 v77, v61 offset:768
	ds_load_u8 v78, v61 offset:512
	ds_load_u8 v99, v61 offset:2944
	ds_load_u8 v100, v61 offset:2688
	ds_load_u8 v101, v61 offset:2432
	ds_load_u8 v102, v61 offset:2176
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v71, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v72, v75, v74, 0xc0c0004
	v_lshl_or_b32 v18, v63, 16, v17
	v_lshl_or_b32 v17, v68, 16, v64
	v_lshl_or_b32 v66, v66, 16, v65
	v_lshl_or_b32 v65, v70, 16, v69
	v_lshl_or_b32 v64, v72, 16, v71
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v63, v76, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v98, v95, 16, v97
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v67, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v102, v101, 0xc0c0004
	v_lshl_or_b32 v63, v67, 16, v63
	v_dual_mov_b32 v74, s23 :: v_dual_mov_b32 v73, s22
	ds_load_u8 v84, v62 offset:464
	ds_load_u8 v85, v62 offset:480
	ds_load_u8 v86, v62 offset:448
	ds_load_u8 v87, v62 offset:496
	ds_load_u8 v88, v62 offset:400
	ds_load_u8 v89, v62 offset:432
	ds_load_u8 v90, v62 offset:416
	ds_load_u8 v92, v62 offset:384
	ds_load_u8 v93, v62 offset:368
	ds_load_u8 v94, v62 offset:336
	ds_load_u8 v111, v62 offset:352
	ds_load_u8 v112, v62 offset:320
	ds_load_u8 v113, v62 offset:272
	ds_load_u8 v114, v62 offset:304
	ds_load_u8 v59, v62 offset:288
	ds_load_u8 v83, v62 offset:256
	v_dual_mov_b32 v72, s21 :: v_dual_mov_b32 v69, s18
	v_dual_mov_b32 v71, s20 :: v_dual_mov_b32 v70, s19
	v_dual_mov_b32 v67, s16 :: v_dual_mov_b32 v68, s17
	ds_load_u8 v115, v62 offset:592
	ds_load_u8 v116, v62 offset:608
	ds_load_u8 v117, v62 offset:576
	ds_load_u8 v118, v62 offset:528
	ds_load_u8 v119, v62 offset:560
	ds_load_u8 v120, v62 offset:544
	ds_load_u8 v121, v62 offset:512
	ds_load_u8 v103, v61 offset:1920
	ds_load_u8 v104, v61 offset:1664
	ds_load_u8 v105, v61 offset:1408
	ds_load_u8 v106, v61 offset:1152
	ds_load_u8 v107, v61 offset:896
	ds_load_u8 v108, v61 offset:640
	ds_load_u8 v109, v61 offset:384
	ds_load_u8 v110, v61 offset:128
	ds_load_u8 v156, v61 offset:9088
	ds_load_u8 v157, v61 offset:8832
	ds_load_u8 v158, v61 offset:8576
	ds_load_u8 v159, v61 offset:8320
	v_wmma_i32_16x16x16_iu8 v[75:82], v[63:66], v[17:20], v[67:74] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v65, v92, v88, 0xc0c0004
	v_perm_b32 v88, v90, v89, 0xc0c0004
	ds_load_u8 v161, v61 offset:14208
	ds_load_u8 v162, v61 offset:13952
	ds_load_u8 v163, v61 offset:13696
	ds_load_u8 v164, v61 offset:13440
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v90, v111, v93, 0xc0c0004
	v_perm_b32 v64, v85, v87, 0xc0c0004
	v_perm_b32 v63, v86, v84, 0xc0c0004
	ds_load_u8 v84, v61 offset:7424
	ds_load_u8 v85, v61 offset:7168
	ds_load_u8 v86, v61 offset:7936
	ds_load_u8 v87, v61 offset:7680
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v83, v83, v113, 0xc0c0004
	v_perm_b32 v59, v59, v114, 0xc0c0004
	v_lshl_or_b32 v65, v88, 16, v65
	v_lshl_or_b32 v66, v64, 16, v63
	v_perm_b32 v89, v112, v94, 0xc0c0004
	ds_load_u8 v92, v61 offset:6400
	ds_load_u8 v93, v61 offset:6144
	ds_load_u8 v94, v61 offset:6912
	ds_load_u8 v111, v61 offset:6656
	v_lshl_or_b32 v63, v59, 16, v83
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v115, v117, v115, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v117, v120, v119, 0xc0c0004
	v_lshl_or_b32 v64, v90, 16, v89
	ds_load_u8 v59, v61 offset:8064
	ds_load_u8 v112, v61 offset:7808
	ds_load_u8 v113, v61 offset:7552
	ds_load_u8 v114, v61 offset:7296
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v100, v106, v105, 0xc0c0004
	v_perm_b32 v101, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v102, v110, v109, 0xc0c0004
	v_perm_b32 v103, v108, v107, 0xc0c0004
	v_lshl_or_b32 v97, v99, 16, v96
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v83, v85, v84, 0xc0c0004
	v_lshl_or_b32 v96, v101, 16, v100
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v84, v87, v86, 0xc0c0004
	ds_load_u8 v85, v61 offset:5376
	ds_load_u8 v86, v61 offset:5120
	ds_load_u8 v87, v61 offset:5888
	ds_load_u8 v88, v61 offset:5632
	ds_load_u8 v122, v61 offset:7040
	ds_load_u8 v123, v61 offset:6784
	ds_load_u8 v124, v61 offset:6528
	ds_load_u8 v125, v61 offset:6272
	v_lshl_or_b32 v95, v103, 16, v102
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v89, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v90, v111, v94, 0xc0c0004
	ds_load_u8 v92, v61 offset:4352
	ds_load_u8 v93, v61 offset:4096
	ds_load_u8 v94, v61 offset:4864
	ds_load_u8 v111, v61 offset:4608
	ds_load_u8 v126, v62 offset:720
	ds_load_u8 v127, v62 offset:736
	ds_load_u8 v128, v62 offset:704
	ds_load_u8 v129, v61 offset:6016
	ds_load_u8 v130, v61 offset:5760
	ds_load_u8 v131, v61 offset:5504
	ds_load_u8 v132, v61 offset:5248
	v_wmma_i32_16x16x16_iu8 v[67:74], v[95:98], v[17:20], v[67:74] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v59, v112, v59, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v99, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v133, v86, v85, 0xc0c0004
	v_lshl_or_b32 v86, v84, 16, v83
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v62 offset:656
	ds_load_u8 v135, v62 offset:688
	ds_load_u8 v136, v62 offset:672
	ds_load_u8 v137, v62 offset:640
	ds_load_u8 v138, v61 offset:4992
	ds_load_u8 v139, v61 offset:4736
	ds_load_u8 v140, v61 offset:4480
	ds_load_u8 v141, v61 offset:4224
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v93, v111, v94, 0xc0c0004
	v_lshl_or_b32 v85, v90, 16, v89
	v_lshl_or_b32 v84, v87, 16, v133
	ds_load_u8 v87, v62 offset:624
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v89, v128, v126, 0xc0c0004
	v_lshl_or_b32 v83, v93, 16, v92
	v_perm_b32 v90, v127, v134, 0xc0c0004
	ds_load_u8 v92, v62 offset:800
	ds_load_u8 v93, v62 offset:768
	ds_load_u8 v94, v62 offset:784
	ds_load_u8 v111, v62 offset:848
	ds_load_u8 v126, v62 offset:864
	ds_load_u8 v127, v62 offset:832
	ds_load_u8 v128, v62 offset:816
	v_perm_b32 v100, v125, v124, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[75:82], v[83:86], v[63:66], v[75:82] neg_lo:[1,1,0]
	v_lshl_or_b32 v86, v90, 16, v89
	v_perm_b32 v101, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v84, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v83, v137, v88, 0xc0c0004
	ds_load_u8 v88, v61 offset:11520
	ds_load_u8 v89, v61 offset:11264
	ds_load_u8 v90, v61 offset:12032
	ds_load_u8 v133, v61 offset:11776
	v_perm_b32 v102, v132, v131, 0xc0c0004
	v_perm_b32 v103, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v104, v141, v140, 0xc0c0004
	v_lshl_or_b32 v85, v84, 16, v83
	v_perm_b32 v105, v139, v138, 0xc0c0004
	v_lshl_or_b32 v20, v59, 16, v99
	v_lshl_or_b32 v19, v101, 16, v100
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v87, v116, v87, 0xc0c0004
	v_perm_b32 v116, v121, v118, 0xc0c0004
	ds_load_u8 v118, v61 offset:10496
	ds_load_u8 v119, v61 offset:10240
	v_lshl_or_b32 v18, v103, 16, v102
	v_lshl_or_b32 v17, v105, 16, v104
	v_lshl_or_b32 v84, v87, 16, v115
	v_lshl_or_b32 v83, v117, 16, v116
	ds_load_u8 v87, v61 offset:11008
	ds_load_u8 v115, v61 offset:10752
	ds_load_u8 v116, v61 offset:9472
	ds_load_u8 v117, v61 offset:9216
	ds_load_u8 v120, v61 offset:12160
	ds_load_u8 v121, v61 offset:11904
	ds_load_u8 v134, v61 offset:11648
	ds_load_u8 v135, v61 offset:11392
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v92, v92, v128, 0xc0c0004
	v_perm_b32 v100, v159, v158, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	v_perm_b32 v101, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v89, v133, v90, 0xc0c0004
	ds_load_u8 v90, v61 offset:9984
	ds_load_u8 v133, v61 offset:9728
	ds_load_u8 v136, v61 offset:11136
	ds_load_u8 v137, v61 offset:10880
	ds_load_u8 v142, v61 offset:10624
	ds_load_u8 v143, v61 offset:10368
	v_wmma_i32_16x16x16_iu8 v[67:74], v[17:20], v[63:66], v[67:74] neg_lo:[1,1,0]
	v_perm_b32 v66, v164, v163, 0xc0c0004
	v_lshl_or_b32 v17, v101, 16, v100
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v87, v115, v87, 0xc0c0004
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v61 offset:8448
	ds_load_u8 v144, v61 offset:8192
	ds_load_u8 v145, v61 offset:8960
	ds_load_u8 v146, v61 offset:8704
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v62 offset:976
	ds_load_u8 v150, v62 offset:992
	ds_load_u8 v151, v62 offset:960
	ds_load_u8 v152, v62 offset:912
	ds_load_u8 v153, v62 offset:944
	ds_load_u8 v154, v62 offset:928
	ds_load_u8 v155, v62 offset:896
	ds_load_u8 v62, v62 offset:880
	ds_load_u8 v115, v61 offset:10112
	ds_load_u8 v147, v61 offset:9856
	ds_load_u8 v148, v61 offset:9600
	ds_load_u8 v149, v61 offset:9344
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v59, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v133, v133, v90, 0xc0c0004
	v_lshl_or_b32 v90, v89, 16, v88
	v_lshl_or_b32 v89, v87, 16, v118
	v_perm_b32 v95, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v96, v143, v142, 0xc0c0004
	v_lshl_or_b32 v88, v133, 16, v116
	v_perm_b32 v97, v137, v136, 0xc0c0004
	v_lshl_or_b32 v20, v95, 16, v59
	v_perm_b32 v95, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v19, v97, 16, v96
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v119, v144, v119, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v144, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v99, v147, v115, 0xc0c0004
	v_perm_b32 v62, v126, v62, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v149, v148, 0xc0c0004
	v_lshl_or_b32 v87, v144, 16, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v18, v99, 16, v98
	v_wmma_i32_16x16x16_iu8 v[75:82], v[87:90], v[83:86], v[75:82] neg_lo:[1,1,0]
	v_perm_b32 v87, v151, v117, 0xc0c0004
	ds_load_u8 v116, v61 offset:15616
	ds_load_u8 v117, v61 offset:15360
	ds_load_u8 v118, v61 offset:16128
	ds_load_u8 v119, v61 offset:15872
	v_perm_b32 v88, v150, v91, 0xc0c0004
	v_perm_b32 v89, v155, v152, 0xc0c0004
	v_perm_b32 v91, v154, v153, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[67:74], v[17:20], v[83:86], v[67:74] neg_lo:[1,1,0]
	v_lshl_or_b32 v18, v95, 16, v66
	v_lshl_or_b32 v90, v88, 16, v87
	v_perm_b32 v87, v127, v111, 0xc0c0004
	v_lshl_or_b32 v89, v91, 16, v89
	v_perm_b32 v91, v93, v94, 0xc0c0004
	ds_load_u8 v88, v61 offset:14592
	ds_load_u8 v93, v61 offset:14336
	ds_load_u8 v94, v61 offset:15104
	ds_load_u8 v111, v61 offset:14848
	ds_load_u8 v126, v61 offset:13568
	ds_load_u8 v127, v61 offset:13312
	ds_load_u8 v128, v61 offset:14080
	ds_load_u8 v133, v61 offset:13824
	ds_load_u8 v144, v61 offset:16256
	ds_load_u8 v145, v61 offset:16000
	ds_load_u8 v146, v61 offset:15744
	ds_load_u8 v150, v61 offset:15488
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v117, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v93, v93, v88, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v111, v111, v94, 0xc0c0004
	ds_load_u8 v118, v61 offset:12544
	ds_load_u8 v119, v61 offset:12288
	ds_load_u8 v151, v61 offset:13056
	ds_load_u8 v152, v61 offset:12800
	ds_load_u8 v153, v61 offset:15232
	ds_load_u8 v154, v61 offset:14976
	ds_load_u8 v155, v61 offset:14720
	ds_load_u8 v160, v61 offset:14464
	v_lshl_or_b32 v88, v62, 16, v87
	v_lshl_or_b32 v94, v117, 16, v116
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	v_lshl_or_b32 v93, v111, 16, v93
	ds_load_u8 v62, v61 offset:13184
	ds_load_u8 v111, v61 offset:12928
	ds_load_u8 v116, v61 offset:12672
	ds_load_u8 v61, v61 offset:12416
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v127, v133, v128, 0xc0c0004
	v_lshl_or_b32 v87, v92, 16, v91
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v59, v150, v146, 0xc0c0004
	v_perm_b32 v63, v145, v144, 0xc0c0004
	v_lshl_or_b32 v92, v127, 16, v126
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v91, v119, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v20, v63, 16, v59
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v117, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v65, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v64, v160, v155, 0xc0c0004
	v_lshl_or_b32 v91, v117, 16, v91
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v62, v111, v62, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v61, v116, 0xc0c0004
	v_lshl_or_b32 v19, v65, 16, v64
	v_wmma_i32_16x16x16_iu8 v[75:82], v[91:94], v[87:90], v[75:82] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v17, v62, 16, v61
	v_cvt_f32_i32_e32 v61, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v62, v78
	v_cvt_f32_i32_e32 v63, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[17:20], v[87:90], v[67:74] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v19, v75
	v_cvt_f32_i32_e32 v20, v76
	v_cvt_f32_i32_e32 v64, v80
	v_cvt_f32_i32_e32 v65, v81
	v_cvt_f32_i32_e32 v66, v82
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s44, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s44, s0
	v_mov_b16_e32 v75.l, 0
	s_ashr_i32 s0, s0, 7
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v75.h, v60.l
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s0, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s45
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v17, v39, s0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v18, v21, s1, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s0, -1, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v4, v4, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v16, v16, v75 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	buffer_load_u16 v39, v18, s[24:27], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v59, v17, s[12:15], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v4, v44, v26
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[17:18], null, s33, s35, v[21:22]
	.loc	1 392 9 is_stmt 0               ; generate_amdgcn.py:392:9
	v_and_b32_e32 v21, 7, v0
	v_bfe_i32 v0, v0, 3, 1
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v15, v15, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v26, v4, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v23, v21, 2, v23
	v_and_b32_e32 v0, 0x2040, v0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v15, v15, v56, v38
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v18, 31, v17
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v16, v57, v31
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v23, v23, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v38, v15, s3
	v_cndmask_b32_e64 v16, v31, v16, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v59
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v5, v75
	v_mul_f32_e32 v3, v3, v75
	v_mul_f32_e32 v2, v2, v75
	v_mul_f32_e32 v1, v1, v75
	v_mul_f32_e32 v10, v10, v75
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v5, v45, v27
	v_fma_f32 v3, v3, v43, v25
	v_fma_f32 v41, v2, v41, v24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v2, 16, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v43, v1, v46, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v27, v5, s3
	v_cndmask_b32_e64 v25, v25, v3, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v8, v75
	ds_store_b32 v42, v2 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v58 offset:34816
	v_mul_f32_e32 v14, v14, v75
	v_mul_f32_e32 v12, v12, v75
	v_mul_f32_e32 v7, v7, v75
	v_mul_f32_e32 v6, v6, v75
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[0:1], 2, v[17:18]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v14, v14, v55, v37
	v_fma_f32 v12, v12, v53, v35
	v_fma_f32 v10, v10, v51, v33
	v_fma_f32 v8, v8, v49, v30
	v_fma_f32 v7, v7, v48, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v37, v14, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v37, v21, 10, v23
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v13, v13, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v35, v12, s3
	v_cndmask_b32_e64 v35, v24, v41, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v6, v47, v28
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v38, 0, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v13, v54, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v10, s3
	v_cndmask_b32_e64 v30, v30, v8, s3
	v_cndmask_b32_e64 v29, v29, v7, s3
	v_cndmask_b32_e64 v28, v28, v6, s3
	v_cndmask_b32_e64 v18, v36, v13, s3
	v_cndmask_b32_e64 v36, v22, v43, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[21:24], v58 offset:35344
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v11, v11, v75 :: v_dual_mul_f32 v2, v2, v44
	v_dual_mul_f32 v9, v9, v75 :: v_dual_mul_f32 v4, v4, v44
	v_mul_f32_e32 v3, v3, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v11, v11, v52, v34
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v5, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v9, v50, v32
	v_fma_f32 v2, v2, v19, v36
	v_fma_f32 v3, v3, v20, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v34, v11, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v4, v61, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v32, v9, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[6:9], v58 offset:34832
	ds_load_b128 v[10:13], v58 offset:35328
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v0, vcc_lo, s6, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v5, v62, v26
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_ci_u32_e64 v1, null, s7, v1, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v21, v21, v44
	v_mul_f32_e32 v22, v22, v44
	v_mul_f32_e32 v23, v23, v44
	v_mul_f32_e32 v24, v24, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v36, v2, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v19, v21, v71, v18
	v_fma_f32 v20, v22, v72, v14
	v_fma_f32 v21, v23, v73, v15
	v_fma_f32 v22, v24, v74, v16
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v39, v37, 4, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v35, v3, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v41, v37, 8, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v25, v4, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v6, v6, v44
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v10, v10, v44
	v_mul_f32_e32 v11, v11, v44
	v_mul_f32_e32 v12, v12, v44
	v_mul_f32_e32 v13, v13, v44
	v_mul_f32_e32 v7, v7, v44
	v_mul_f32_e32 v8, v8, v44
	v_mul_f32_e32 v9, v9, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v10, v67, v32
	v_fma_f32 v11, v11, v68, v33
	v_fma_f32 v12, v12, v69, v34
	v_fma_f32 v13, v13, v70, v31
	v_fma_f32 v6, v6, v63, v27
	v_fma_f32 v7, v7, v64, v28
	v_fma_f32 v8, v8, v65, v29
	v_fma_f32 v9, v9, v66, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v32, v10, s2
	v_cndmask_b32_e64 v11, v33, v11, s2
	v_cndmask_b32_e64 v12, v34, v12, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v43, v37, 12, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v26, v5, s2
	v_cndmask_b32_e64 v13, v31, v13, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v45, v37, 16, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v27, v6, s2
	v_cndmask_b32_e64 v18, v18, v19, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v46, v37, 20, 0
	v_xad_u32 v47, v37, 24, 0
	v_xad_u32 v37, v37, 28, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v28, v7, s2
	v_cndmask_b32_e64 v8, v29, v8, s2
	v_cndmask_b32_e64 v9, v30, v9, s2
	v_cndmask_b32_e64 v14, v14, v20, s2
	v_cndmask_b32_e64 v15, v15, v21, s2
	v_cndmask_b32_e64 v16, v16, v22, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_2addr_stride64_b32 v38, v2, v10 offset1:2
	ds_store_2addr_stride64_b32 v39, v3, v11 offset1:2
	ds_store_2addr_stride64_b32 v41, v4, v12 offset1:2
	ds_store_2addr_stride64_b32 v43, v5, v13 offset1:2
	ds_store_2addr_stride64_b32 v45, v6, v18 offset1:2
	ds_store_2addr_stride64_b32 v46, v7, v14 offset1:2
	ds_store_2addr_stride64_b32 v47, v8, v15 offset1:2
	ds_store_2addr_stride64_b32 v37, v9, v16 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v3, v[0:1], off
	v_xad_u32 v2, 0x404, v40, 0
	v_xad_u32 v4, 0x808, v40, 0
	v_xad_u32 v5, 0xc0c, v40, 0
	v_xad_u32 v6, 0x1010, v40, 0
	v_xad_u32 v7, 0x1414, v40, 0
	v_xad_u32 v8, 0x1818, v40, 0
	v_xad_u32 v9, 0x1c1c, v40, 0
	ds_load_b32 v20, v42
	ds_load_b32 v19, v2
	ds_load_b32 v18, v4
	ds_load_b32 v16, v5
	ds_load_b32 v15, v6
	ds_load_b32 v14, v7
	ds_load_b32 v13, v8
	ds_load_b32 v12, v9
	v_xad_u32 v2, 0x2040, v40, 0
	v_xad_u32 v4, 0x2444, v40, 0
	v_xad_u32 v5, 0x2848, v40, 0
	v_xad_u32 v6, 0x2c4c, v40, 0
	v_xad_u32 v7, 0x3050, v40, 0
	v_xad_u32 v21, 0x3454, v40, 0
	v_xad_u32 v22, 0x3858, v40, 0
	v_xad_u32 v23, 0x3c5c, v40, 0
	ds_load_b32 v11, v2
	ds_load_b32 v10, v4
	ds_load_b32 v9, v5
	ds_load_b32 v8, v6
	ds_load_b32 v7, v7
	ds_load_b32 v6, v21
	ds_load_b32 v5, v22
	ds_load_b32 v4, v23
.LBB0_13:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v2, v3, v20
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s4, vcc_lo, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s4
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end85
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_ashr_i32 s1, s35, 31
	s_mov_b32 s0, s35
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b64 s[0:1], s[0:1], 2
	v_add_co_u32 v0, vcc_lo, v0, s0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	s_mov_b32 s0, 0
	global_load_b32 v3, v[0:1], off
.LBB0_15:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(14)
	v_add_f32_e32 v2, v3, v19
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v0, s35, 1, v17
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s6, v0
	v_add_co_ci_u32_e64 v1, null, s7, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_17:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v2, v3, v18
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 3, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s6, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s7, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_19:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(12)
	v_add_f32_e32 v2, v3, v16
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v0, s35, 2, v17
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s6, v0
	v_add_co_ci_u32_e64 v1, null, s7, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_21:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(11)
	v_add_f32_e32 v2, v3, v15
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 5, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s6, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s7, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_23:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(10)
	v_add_f32_e32 v2, v3, v14
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 6, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s6, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s7, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_25:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(9)
	v_add_f32_e32 v2, v3, v13
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 7, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s6, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s7, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_27:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(8)
	v_add_f32_e32 v2, v3, v12
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v0, s35, 3, v17
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s6, v0
	v_add_co_ci_u32_e64 v1, null, s7, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_29:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v2, v3, v11
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 9, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s6, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s7, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_31:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v2, v3, v10
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 10, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s6, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s7, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_33:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v2, v3, v9
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 11, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s6, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s7, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_35:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v2, v3, v8
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 12, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s6, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s7, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_37:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v2, v3, v7
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 13, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s6, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s7, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_39:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v2, v3, v6
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_39
; %bb.40:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 14, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s6, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s7, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_41:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v2, v3, v5
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_41
; %bb.42:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 15, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s6, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s7, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_43:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v2, v3, v4
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
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
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 49
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15868
; TotalNumSgprs: 51
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 51
; NumVGPRsForWavesPerEU: 256
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
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
