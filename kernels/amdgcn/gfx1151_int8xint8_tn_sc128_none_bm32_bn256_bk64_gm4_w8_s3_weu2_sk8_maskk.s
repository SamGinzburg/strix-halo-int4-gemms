	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
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
	v_lshrrev_b32_e32 v62, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v58, 15, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v63, 2, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v61, 3, v0
	v_or_b32_e32 v70, 0x3f0, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v65, 32, v62
	v_or_b32_e32 v64, 16, v62
	v_or_b32_e32 v66, 48, v62
	v_or_b32_e32 v71, 0x7f0, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s34, 31
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
	s_lshr_b32 s10, s10, 27
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
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v3, s35, v62
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v53, v58, 4, v3
	v_lshl_add_u32 v67, s35, 5, v53
	v_mad_u64_u32 v[54:55], null, s35, 48, v[53:54]
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
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v1, s34, v63
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s31, s11
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s17, s17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s30, s10
	s_mov_b64 s[24:25], s[14:15]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s18, s18, s17
	s_mul_hi_u32 s2, s17, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s17, s17, s2
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
	v_or_b32_e32 v3, s26, v63
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
	s_lshl_b32 s49, s2, 8
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v3
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s44, s3, 5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s17, 0x1ff
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s26, v62
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v6, s26, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v2, 24, v61
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s20, s35, s26
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s26, v64
	v_or_b32_e32 v7, s26, v66
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s27, v4
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s7, s49, s20
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s27, v6
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v55, v1, v2, s44
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s7, v53
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s27, v5
	v_cmp_gt_i32_e64 s6, s27, v7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s7, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s2, s2, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v3, s7, v54
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v13, 0x80000000, v1, s2
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s2, s5, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s33, s35, 4
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s4, s4, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s2, s6, s3
	s_cmpk_gt_i32 s17, 0x3ff
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s16, s34, s26
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v69, s33, v53
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v2, 0x80000000, v3, s2
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s45, s26, 0x200
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v4, s16, v55
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v21, s45, v63
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v5, s7, v69
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v22, s45, v62
	v_or_b32_e32 v23, s45, v64
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	.loc	1 346 30 is_stmt 0              ; generate_amdgcn.py:346:30
	s_lshl_b32 s5, s34, 9
	.loc	1 352 30 is_stmt 1              ; generate_amdgcn.py:352:30
	s_lshl_b32 s6, s35, 9
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v21
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v24, s45, v65
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v4, 0x80000000, v5, s4
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v26, s16, s5, v55
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s7, s7, s6
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s27, v22
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v25, s45, v66
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[5:8], v1, s[28:31], 0 offen
	buffer_load_b128 v[9:12], v2, s[28:31], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[1:2], v3, s[8:11], 0 offen
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v3, s7, v53
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s27, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v27, s7, v69
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s6, s27, v24
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[13:16], v13, s[28:31], 0 offen
	buffer_load_b128 v[17:20], v4, s[28:31], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v4, 0x80000000, v26, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v28, s7, v67
	v_add_nc_u32_e32 v29, s7, v54
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s7, s27, v25
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s5, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v39, 0, v61
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v25, 0x80000000, v27, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s6, s2
	s_mov_b32 s16, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v30, 0x80000000, v28, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s7, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v40, v39, v61
	v_cndmask_b32_e32 v33, 0x80000000, v29, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[37:38], v4, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[21:24], v3, s[28:31], 0 offen
	buffer_load_b128 v[25:28], v25, s[28:31], 0 offen
	buffer_load_b128 v[29:32], v30, s[28:31], 0 offen
	buffer_load_b128 v[33:36], v33, s[28:31], 0 offen
	v_lshrrev_b32_e32 v3, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v4, 16, v58
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s17, 0x5ff
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v40, v[9:12] offset:12288
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(7)
	ds_store_b64 v39, v[1:2] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(6)
	ds_store_b128 v40, v[13:16]
	s_waitcnt vmcnt(5)
	ds_store_b128 v40, v[17:20] offset:4096
	ds_store_b128 v40, v[5:8] offset:8192
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v39, v[37:38] offset:34816
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v40, v[21:24] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v40, v[25:28] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v40, v[29:32] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v40, v[33:36] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v1, 0x3f0, v0
	v_or_b32_e32 v2, 0x7f0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_b32_e32 v68, 0x70, v3
	s_mov_b32 s4, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr68
.LBB0_3:                                ; %Flow244
	s_load_b64 s[6:7], s[0:1], 0x20
	v_or_b32_e32 v5, s44, v58
	v_or_b32_e32 v4, s44, v4
	v_and_b32_e32 v86, 0xf0, v0
	s_ashr_i32 s46, s18, 7
	v_or_b32_e32 v85, s49, v0
	v_mul_lo_u32 v120, v5, s46
	v_mul_lo_u32 v119, v4, s46
	v_lshlrev_b32_e32 v59, 2, v86
	v_lshlrev_b32_e32 v60, 1, v86
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s50, s17, 9
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_lshlrev_b32_e32 v1, 5, v0
	v_lshlrev_b32_e32 v2, 1, v0
	v_and_b32_e32 v68, 0x70, v3
	v_dual_mov_b32 v87, 0 :: v_dual_lshlrev_b32 v72, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v1, 32, v1
	v_and_b32_e32 v9, 28, v2
	v_add_nc_u32_e32 v74, 0, v60
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_mov_b32_e32 v90, 0
	v_add3_u32 v10, 0, v59, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_add_nc_u32_e32 v73, v10, v9
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v111, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s14, s45, 0x200
	s_mov_b32 s15, 1
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_add_i32 s1, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s48, 0, 0x4000
	s_add_i32 s50, s50, -3
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s5, s17, 9
	s_mov_b32 s0, s26
	s_mov_b32 s26, s45
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s45, s14, s5
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v75, s1, v58
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v11, s45, v63
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[9:10], null, s45, s34, v[55:56]
	s_mov_b32 s4, s16
	.loc	1 346 22 is_stmt 0              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v25, s1, v70
	.loc	1 343 23 is_stmt 1              ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v11
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v76, s4, v68, v58
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	s_mul_i32 s4, s45, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s4, s4, s49
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_b64 v[56:57], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v9, v75 offset:416
	ds_load_u8 v10, v75 offset:384
	ds_load_u8 v11, v75 offset:480
	ds_load_u8 v12, v75 offset:448
	ds_load_u8 v13, v75 offset:288
	ds_load_u8 v14, v75 offset:256
	ds_load_u8 v15, v75 offset:352
	ds_load_u8 v16, v75 offset:320
	ds_load_u8 v17, v75 offset:160
	ds_load_u8 v18, v75 offset:128
	ds_load_u8 v19, v75 offset:224
	ds_load_u8 v20, v75 offset:192
	ds_load_u8 v21, v75 offset:96
	ds_load_u8 v22, v75 offset:64
	ds_load_u8 v23, v75
	ds_load_u8 v24, v75 offset:32
	ds_load_u8 v26, v76 offset:3328
	ds_load_u8 v30, v76 offset:3072
	ds_load_u8 v31, v76 offset:3840
	ds_load_u8 v32, v76 offset:3584
	ds_load_u8 v33, v76 offset:2304
	ds_load_u8 v34, v76 offset:2048
	ds_load_u8 v35, v76 offset:2816
	ds_load_u8 v36, v76 offset:2560
	ds_load_u8 v37, v76 offset:1280
	ds_load_u8 v38, v76 offset:1024
	ds_load_u8 v39, v76 offset:1792
	ds_load_u8 v40, v76 offset:1536
	ds_load_u8 v41, v76 offset:256
	ds_load_u8 v42, v76
	ds_load_u8 v43, v76 offset:768
	ds_load_u8 v44, v76 offset:512
	ds_load_u8 v45, v75 offset:928
	ds_load_u8 v46, v75 offset:896
	ds_load_u8 v47, v75 offset:992
	ds_load_u8 v48, v75 offset:960
	ds_load_u8 v49, v75 offset:800
	ds_load_u8 v50, v75 offset:768
	ds_load_u8 v51, v75 offset:864
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v14, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v15, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v19, v23, v24, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v23, v32, v31, 0xc0c0004
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_lshl_or_b32 v28, v14, 16, v13
	v_perm_b32 v13, v18, v17, 0xc0c0004
	v_perm_b32 v17, v22, v21, 0xc0c0004
	v_perm_b32 v21, v30, v26, 0xc0c0004
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v14, v75 offset:704
	ds_load_u8 v16, v75 offset:544
	ds_load_u8 v18, v75 offset:576
	ds_load_u8 v78, v75 offset:400
	ds_load_u8 v79, v75 offset:496
	v_lshl_or_b32 v27, v15, 16, v13
	ds_load_u8 v13, v75 offset:512
	ds_load_u8 v15, v75 offset:608
	ds_load_u8 v20, v76 offset:7424
	ds_load_u8 v24, v76 offset:7936
	ds_load_u8 v31, v76 offset:7680
	ds_load_u8 v22, v76 offset:7168
	ds_load_u8 v52, v76 offset:6400
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v32, v36, v35, 0xc0c0004
	v_lshl_or_b32 v26, v17, 16, v19
	v_lshl_or_b32 v36, v23, 16, v21
	ds_load_u8 v17, v76 offset:6144
	ds_load_u8 v19, v76 offset:6912
	ds_load_u8 v23, v76 offset:6656
	ds_load_u8 v10, v75 offset:832
	ds_load_u8 v12, v75 offset:672
	v_lshl_or_b32 v29, v11, 16, v9
	ds_load_u8 v9, v75 offset:640
	ds_load_u8 v11, v75 offset:736
	v_perm_b32 v30, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v21, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v33, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v42, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v13, v13, v16, 0xc0c0004
	v_lshl_or_b32 v35, v32, 16, v30
	v_perm_b32 v30, v40, v39, 0xc0c0004
	v_perm_b32 v40, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v15, v18, v15, 0xc0c0004
	ds_load_u8 v32, v76 offset:5376
	ds_load_u8 v39, v76 offset:4352
	v_lshl_or_b32 v34, v30, 16, v21
	ds_load_u8 v21, v76 offset:5120
	ds_load_u8 v30, v76 offset:5888
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v17, v17, v52, 0xc0c0004
	ds_load_u8 v37, v76 offset:5632
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v19, v23, v19, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v10, v10, v51, 0xc0c0004
	v_lshl_or_b32 v48, v42, 16, v40
	ds_load_u8 v16, v76 offset:2688
	ds_load_u8 v18, v76 offset:1408
	ds_load_u8 v40, v76 offset:1664
	ds_load_u8 v23, v76 offset:384
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v11, v14, v11, 0xc0c0004
	ds_load_u8 v14, v76 offset:2432
	v_perm_b32 v20, v22, v20, 0xc0c0004
	ds_load_u8 v22, v76 offset:1152
	v_perm_b32 v24, v31, v24, 0xc0c0004
	ds_load_u8 v31, v76 offset:1920
	v_lshl_or_b32 v45, v15, 16, v13
	v_lshl_or_b32 v51, v19, 16, v17
	ds_load_u8 v13, v76 offset:128
	ds_load_u8 v15, v76 offset:896
	ds_load_u8 v19, v76 offset:640
	v_perm_b32 v38, v44, v43, 0xc0c0004
	ds_load_u8 v43, v76 offset:4864
	v_lshl_or_b32 v52, v24, 16, v20
	v_perm_b32 v44, v50, v49, 0xc0c0004
	ds_load_u8 v50, v76 offset:3456
	v_lshl_or_b32 v33, v38, 16, v33
	v_lshl_or_b32 v47, v10, 16, v44
	ds_load_u8 v10, v76 offset:3200
	ds_load_u8 v38, v76 offset:3968
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v18, v22, v18, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v31, v40, v31, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v13, v23, 0xc0c0004
	ds_load_u8 v23, v76 offset:5248
	ds_load_u8 v49, v76 offset:4608
	ds_load_u8 v41, v76 offset:4096
	v_perm_b32 v17, v21, v32, 0xc0c0004
	ds_load_u8 v21, v76 offset:7552
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v15, v19, v15, 0xc0c0004
	ds_load_u8 v19, v76 offset:6016
	ds_load_u8 v40, v76 offset:5504
	v_perm_b32 v20, v37, v30, 0xc0c0004
	ds_load_u8 v30, v76 offset:7296
	ds_load_u8 v37, v76 offset:8064
	ds_load_u8 v22, v76 offset:6784
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v32, v49, v43, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v21, v30, v21, 0xc0c0004
	ds_load_u8 v30, v76 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v30, v19, 0xc0c0004
	ds_load_u8 v30, v75 offset:432
	v_perm_b32 v9, v9, v12, 0xc0c0004
	ds_load_u8 v12, v76 offset:3712
	v_perm_b32 v24, v41, v39, 0xc0c0004
	ds_load_u8 v39, v76 offset:7808
	v_perm_b32 v10, v10, v50, 0xc0c0004
	v_lshl_or_b32 v46, v11, 16, v9
	ds_load_u8 v9, v76 offset:2176
	ds_load_u8 v11, v76 offset:2944
	v_lshl_or_b32 v50, v20, 16, v17
	v_lshl_or_b32 v49, v32, 16, v24
	ds_load_u8 v32, v75 offset:176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v12, v12, v38, 0xc0c0004
	ds_load_u8 v38, v76 offset:6528
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v9, v14, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v16, v11, 0xc0c0004
	ds_load_u8 v16, v76 offset:7040
	ds_load_u8 v14, v76 offset:6272
	v_perm_b32 v41, v39, v37, 0xc0c0004
	ds_load_u8 v37, v76 offset:4480
	ds_load_u8 v39, v76 offset:4736
	v_lshl_or_b32 v44, v41, 16, v21
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v16, v22, v16, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v14, v38, 0xc0c0004
	ds_load_u8 v38, v76 offset:4224
	ds_load_u8 v22, v76 offset:4992
	v_perm_b32 v23, v23, v40, 0xc0c0004
	v_lshl_or_b32 v40, v12, 16, v10
	v_lshl_or_b32 v43, v16, 16, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v42, v19, 16, v23
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v77, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v39, v22, 0xc0c0004
	v_lshl_or_b32 v39, v11, 16, v9
	v_lshl_or_b32 v38, v31, 16, v18
	v_lshl_or_b32 v37, v15, 16, v13
	ds_load_u8 v31, v75 offset:336
	v_lshl_or_b32 v41, v22, 16, v77
	v_wmma_i32_16x16x16_iu8 v[17:24], v[33:36], v[26:29], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[37:40], v[26:29], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v26, v75 offset:464
	ds_load_u8 v27, v75 offset:304
	ds_load_u8 v28, v75 offset:272
	ds_load_u8 v29, v75 offset:368
	v_wmma_i32_16x16x16_iu8 v[17:24], v[49:52], v[45:48], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[41:44], v[45:48], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v26, v26, v79, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v31, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v28, 16, v27
	ds_load_u8 v28, v75 offset:208
	v_perm_b32 v30, v78, v30, 0xc0c0004
	v_lshl_or_b32 v48, v26, 16, v30
	ds_load_u8 v26, v75 offset:144
	ds_load_u8 v27, v75 offset:240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v75 offset:112
	v_perm_b32 v26, v26, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v27, 16, v26
	ds_load_u8 v26, v75 offset:80
	ds_load_u8 v27, v75 offset:16
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	ds_load_u8 v28, v75 offset:48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v27, v28, 0xc0c0004
	ds_load_u8 v28, v75 offset:944
	v_lshl_or_b32 v45, v26, 16, v27
	ds_load_u8 v26, v75 offset:912
	ds_load_u8 v25, v25
	ds_load_u8 v27, v75 offset:976
	v_wmma_i32_16x16x16_iu8 v[77:84], v[37:40], v[45:48], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	ds_load_u8 v28, v75 offset:816
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v75 offset:784
	v_lshl_or_b32 v124, v25, 16, v26
	ds_load_u8 v25, v75 offset:688
	ds_load_u8 v26, v75 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v27, v28, 0xc0c0004
	ds_load_u8 v28, v75 offset:880
	ds_load_u8 v29, v75 offset:848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v123, v28, 16, v27
	ds_load_u8 v26, v75 offset:752
	ds_load_u8 v27, v75 offset:720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v122, v26, 16, v25
	ds_load_u8 v25, v75 offset:560
	ds_load_u8 v26, v75 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v75 offset:624
	ds_load_u8 v27, v75 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v121, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[33:36], v[45:48], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v33, v75 offset:1440
	ds_load_u8 v34, v75 offset:1408
	ds_load_u8 v35, v75 offset:1504
	ds_load_u8 v36, v75 offset:1472
	ds_load_u8 v37, v75 offset:1312
	ds_load_u8 v38, v75 offset:1280
	ds_load_u8 v39, v75 offset:1376
	ds_load_u8 v40, v75 offset:1344
	v_wmma_i32_16x16x16_iu8 v[77:84], v[41:44], v[121:124], v[77:84] neg_lo:[1,1,0]
	ds_load_u8 v41, v75 offset:1152
	v_wmma_i32_16x16x16_iu8 v[25:32], v[49:52], v[121:124], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v75 offset:1184
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v38, v40, v39, 0xc0c0004
	v_lshl_or_b32 v36, v35, 16, v33
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v35, v38, 16, v37
	ds_load_u8 v33, v75 offset:1248
	ds_load_u8 v37, v75 offset:1216
	ds_load_u8 v38, v75 offset:1056
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v34, v41, v34, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v37, v33, 0xc0c0004
	ds_load_u8 v37, v75 offset:1024
	v_lshl_or_b32 v34, v33, 16, v34
	ds_load_u8 v33, v75 offset:1120
	ds_load_u8 v39, v75 offset:1088
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	ds_load_u8 v38, v76 offset:11520
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v39, v33, 0xc0c0004
	ds_load_u8 v39, v76 offset:11264
	v_lshl_or_b32 v33, v33, 16, v37
	ds_load_u8 v37, v76 offset:12032
	ds_load_u8 v40, v76 offset:11776
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v39, v76 offset:10496
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v40, v37, 0xc0c0004
	ds_load_u8 v40, v76 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v76 offset:11008
	ds_load_u8 v41, v76 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v40, 0xc0c0004
	v_lshl_or_b32 v40, v37, 16, v38
	ds_load_u8 v37, v76 offset:9472
	ds_load_u8 v38, v76 offset:9216
	v_lshl_or_b32 v39, v41, 16, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v76 offset:9984
	ds_load_u8 v41, v76 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v41, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v76 offset:8448
	ds_load_u8 v41, v76 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v41, v37, 0xc0c0004
	ds_load_u8 v41, v76 offset:8960
	ds_load_u8 v42, v76 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v41, 16, v37
	ds_load_u8 v41, v76 offset:11648
	ds_load_u8 v42, v76 offset:11392
	v_wmma_i32_16x16x16_iu8 v[17:24], v[37:40], v[33:36], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v76 offset:12160
	ds_load_u8 v43, v76 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v76 offset:10624
	ds_load_u8 v44, v76 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v76 offset:11136
	ds_load_u8 v45, v76 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	v_lshl_or_b32 v44, v42, 16, v41
	ds_load_u8 v41, v76 offset:9600
	ds_load_u8 v42, v76 offset:9344
	v_lshl_or_b32 v43, v45, 16, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v76 offset:10112
	ds_load_u8 v45, v76 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v45, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v76 offset:8576
	ds_load_u8 v45, v76 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v45, v41, 0xc0c0004
	ds_load_u8 v45, v76 offset:9088
	ds_load_u8 v46, v76 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v45, 16, v41
	v_wmma_i32_16x16x16_iu8 v[9:16], v[41:44], v[33:36], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v33, v75 offset:1456
	ds_load_u8 v34, v75 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v75 offset:1520
	ds_load_u8 v35, v75 offset:1488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v75 offset:1328
	ds_load_u8 v36, v75 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v75 offset:1392
	ds_load_u8 v45, v75 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v36, 0xc0c0004
	v_lshl_or_b32 v36, v34, 16, v33
	ds_load_u8 v33, v75 offset:1200
	ds_load_u8 v34, v75 offset:1168
	v_lshl_or_b32 v35, v45, 16, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v75 offset:1264
	ds_load_u8 v45, v75 offset:1232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v45, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v75 offset:1072
	ds_load_u8 v45, v75 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v45, v33, 0xc0c0004
	ds_load_u8 v45, v75 offset:1136
	ds_load_u8 v46, v75 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v45, 16, v33
	v_wmma_i32_16x16x16_iu8 v[25:32], v[37:40], v[33:36], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[41:44], v[33:36], v[77:84] neg_lo:[1,1,0]
	ds_load_u8 v33, v75 offset:1952
	ds_load_u8 v34, v75 offset:1920
	ds_load_u8 v35, v75 offset:2016
	ds_load_u8 v36, v75 offset:1984
	ds_load_u8 v37, v75 offset:1824
	ds_load_u8 v38, v75 offset:1792
	ds_load_u8 v39, v75 offset:1888
	ds_load_u8 v40, v75 offset:1856
	ds_load_u8 v41, v75 offset:1664
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v75 offset:1696
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v38, v40, v39, 0xc0c0004
	v_lshl_or_b32 v36, v35, 16, v33
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v35, v38, 16, v37
	ds_load_u8 v33, v75 offset:1760
	ds_load_u8 v37, v75 offset:1728
	ds_load_u8 v38, v75 offset:1568
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v34, v41, v34, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v37, v33, 0xc0c0004
	ds_load_u8 v37, v75 offset:1536
	v_lshl_or_b32 v34, v33, 16, v34
	ds_load_u8 v33, v75 offset:1632
	ds_load_u8 v39, v75 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	ds_load_u8 v38, v76 offset:15616
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v39, v33, 0xc0c0004
	ds_load_u8 v39, v76 offset:15360
	v_lshl_or_b32 v33, v33, 16, v37
	ds_load_u8 v37, v76 offset:16128
	ds_load_u8 v40, v76 offset:15872
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v39, v76 offset:14592
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v40, v37, 0xc0c0004
	ds_load_u8 v40, v76 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v76 offset:15104
	ds_load_u8 v41, v76 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v40, 0xc0c0004
	v_lshl_or_b32 v40, v37, 16, v38
	ds_load_u8 v37, v76 offset:13568
	ds_load_u8 v38, v76 offset:13312
	v_lshl_or_b32 v39, v41, 16, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v76 offset:14080
	ds_load_u8 v41, v76 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v41, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v76 offset:12544
	ds_load_u8 v41, v76 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v41, v37, 0xc0c0004
	ds_load_u8 v41, v76 offset:13056
	ds_load_u8 v42, v76 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v41, 16, v37
	ds_load_u8 v41, v76 offset:15744
	ds_load_u8 v42, v76 offset:15488
	v_wmma_i32_16x16x16_iu8 v[17:24], v[37:40], v[33:36], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v76 offset:16256
	ds_load_u8 v43, v76 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v76 offset:14720
	ds_load_u8 v44, v76 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v76 offset:15232
	ds_load_u8 v45, v76 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	v_lshl_or_b32 v44, v42, 16, v41
	ds_load_u8 v41, v76 offset:13696
	ds_load_u8 v42, v76 offset:13440
	v_lshl_or_b32 v43, v45, 16, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v76 offset:14208
	ds_load_u8 v45, v76 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v45, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v76 offset:12672
	ds_load_u8 v45, v76 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v45, v41, 0xc0c0004
	ds_load_u8 v45, v76 offset:13184
	ds_load_u8 v46, v76 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v45, 16, v41
	v_wmma_i32_16x16x16_iu8 v[9:16], v[41:44], v[33:36], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v33, v75 offset:1968
	ds_load_u8 v34, v75 offset:1936
	v_cvt_f32_i32_e32 v47, v12
	v_cvt_f32_i32_e32 v48, v13
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v12, s4, v67
	v_add_nc_u32_e32 v13, s4, v54
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v49, v14
	v_cvt_f32_i32_e32 v50, v15
	v_cvt_f32_i32_e32 v51, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v34, s1, v71
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	ds_load_u8 v35, v75 offset:2000
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s0, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s1, s1, 25
	s_add_i32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s5, s0, 7
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s16, s5, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s5, s46
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v14, v119, s5, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v15, v85, s16, 1
	s_mov_b32 s16, s48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v75 offset:1840
	ds_load_u8 v36, v75 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v75 offset:1904
	ds_load_u8 v45, v75 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v36, 0xc0c0004
	v_lshl_or_b32 v36, v34, 16, v33
	ds_load_u8 v33, v75 offset:1712
	ds_load_u8 v34, v75 offset:1680
	v_lshl_or_b32 v35, v45, 16, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v75 offset:1776
	ds_load_u8 v45, v75 offset:1744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v45, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v75 offset:1584
	ds_load_u8 v45, v75 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v45, v33, 0xc0c0004
	ds_load_u8 v45, v75 offset:1648
	ds_load_u8 v46, v75 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	v_cvt_f32_i32_e32 v46, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v33, v45, 16, v33
	v_cvt_f32_i32_e32 v45, v10
	v_wmma_i32_16x16x16_iu8 v[77:84], v[41:44], v[33:36], v[77:84] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v44, v9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v9, s45, v66
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[25:32], v[37:40], v[33:36], v[25:32] neg_lo:[1,1,0]
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v38, s45, v64
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v34, v17
	v_cvt_f32_i32_e32 v35, v18
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v10, s4, v53
	v_add_nc_u32_e32 v11, s4, v69
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s27, v9
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v9, v120, s5, 1
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s27, v38
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v37, s45, v62
	v_or_b32_e32 v33, s45, v65
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v16, 0x80000000, v11, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v11, 0x80000000, v14, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v14, 0x80000000, v15, s5
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v15, v9, s[36:39], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v14, v14, s[40:43], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v17, v11, s[36:39], 0 offen
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v37
	v_cmp_gt_i32_e64 s1, s27, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v39, v20
	v_cvt_f32_i32_e32 v40, v21
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v21, 0x80000000, v13, s4
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_cndmask_b32_e64 v18, 0x80000000, v12, s1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v36, v19
	v_cvt_f32_i32_e32 v41, v22
	v_cvt_f32_i32_e32 v42, v23
	v_cvt_f32_i32_e32 v43, v24
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[9:12], v10, s[28:31], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v52, v25
	v_cvt_f32_i32_e32 v75, v26
	v_cvt_f32_i32_e32 v76, v27
	v_cvt_f32_i32_e32 v121, v28
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v83, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s0, s15, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s0, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s15, s0, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s5, s15, 14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v84, v84
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s48, s5, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s0, s15, 11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s4, s17, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s0, s0, 0
	s_mov_b32 s1, s47
	s_add_i32 s47, s0, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s17, s50
	s_mov_b32 s17, s4
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v37, 16, v17
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v13, 16, v14
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v33, 16, v15
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v73, v13 offset:36864
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2
	buffer_load_b128 v[13:16], v16, s[28:31], 0 offen
	buffer_load_b128 v[17:20], v18, s[28:31], 0 offen
	buffer_load_b128 v[21:24], v21, s[28:31], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v74 offset:36864
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v126, v26, v37
	v_mul_f32_e32 v124, v28, v33
	v_mul_f32_e32 v38, v25, v33
	v_mul_f32_e32 v122, v26, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v123, v27, v33 :: v_dual_fmac_f32 v104, v126, v75
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v90, v124, v39 :: v_dual_mul_f32 v125, v25, v37
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v127, v27, v37
	v_mul_f32_e32 v128, v28, v37
	ds_load_b128 v[25:28], v74 offset:36880
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v87, v38, v34
	v_dual_fmac_f32 v88, v122, v35 :: v_dual_fmac_f32 v89, v123, v36
	v_fmac_f32_e32 v103, v125, v52
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v129, v25, v33
	v_mul_f32_e32 v130, v26, v33
	v_mul_f32_e32 v131, v27, v33
	v_mul_f32_e32 v132, v28, v33
	v_mul_f32_e32 v133, v25, v37
	v_mul_f32_e32 v134, v26, v37
	v_mul_f32_e32 v135, v27, v37
	v_mul_f32_e32 v136, v28, v37
	ds_load_b128 v[25:28], v74 offset:37376
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v107, v133, v29
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v137, v25, v33
	v_mul_f32_e32 v139, v27, v33
	v_mul_f32_e32 v138, v26, v33
	v_mul_f32_e32 v140, v28, v33
	v_mul_f32_e32 v142, v26, v37
	v_mul_f32_e32 v143, v27, v37
	v_mul_f32_e32 v141, v25, v37
	v_mul_f32_e32 v144, v28, v37
	ds_load_b128 v[25:28], v74 offset:37392
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v92, v130, v41 :: v_dual_fmac_f32 v95, v137, v44
	v_dual_fmac_f32 v97, v139, v46 :: v_dual_fmac_f32 v110, v136, v32
	v_dual_fmac_f32 v114, v143, v79 :: v_dual_fmac_f32 v115, v144, v80
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v147, v27, v33
	v_mul_f32_e32 v27, v27, v37
	v_mul_f32_e32 v145, v25, v33
	v_mul_f32_e32 v25, v25, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v101, v147, v50
	v_dual_fmac_f32 v118, v27, v83 :: v_dual_fmac_f32 v99, v145, v48
	v_dual_fmac_f32 v98, v140, v47 :: v_dual_fmac_f32 v91, v129, v40
	v_fmac_f32_e32 v94, v132, v43
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v146, v26, v33 :: v_dual_fmac_f32 v105, v127, v76
	v_mul_f32_e32 v33, v28, v33
	v_mul_f32_e32 v26, v26, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v106, v128, v121 :: v_dual_fmac_f32 v113, v142, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v100, v146, v49
	v_dual_fmac_f32 v102, v33, v51 :: v_dual_fmac_f32 v93, v131, v42
	v_fmac_f32_e32 v108, v134, v30
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v28, v28, v37 :: v_dual_fmac_f32 v109, v135, v31
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v37, s0, v61
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v96, v138, v45 :: v_dual_add_nc_u32 v33, s48, v72
	v_dual_fmac_f32 v112, v141, v77 :: v_dual_fmac_f32 v117, v26, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v116, v25, v81 :: v_dual_fmac_f32 v111, v28, v84
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_store_b64 v37, v[56:57] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v33, v[9:12]
	s_waitcnt vmcnt(2)
	ds_store_b128 v33, v[13:16] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v33, v[17:20] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v33, v[21:24] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v1, v70 :: v_dual_mov_b32 v2, v71
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	s_add_i32 s1, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s48, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v3, v68, v58
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v154, 0
	v_mov_b32_e32 v153, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v26, s16, v3
	s_mov_b32 s16, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v54, s1, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v4, s1, v58
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v4 offset:416
	ds_load_u8 v6, v4 offset:384
	ds_load_u8 v7, v4 offset:480
	ds_load_u8 v8, v4 offset:448
	ds_load_u8 v10, v4 offset:288
	ds_load_u8 v11, v4 offset:256
	ds_load_u8 v12, v4 offset:352
	ds_load_u8 v13, v4 offset:320
	ds_load_u8 v14, v4 offset:160
	ds_load_u8 v15, v4 offset:128
	ds_load_u8 v16, v4 offset:224
	ds_load_u8 v17, v4 offset:192
	ds_load_u8 v18, v4 offset:32
	ds_load_u8 v19, v4
	ds_load_u8 v20, v4 offset:96
	ds_load_u8 v21, v4 offset:64
	ds_load_u8 v73, v4 offset:464
	ds_load_u8 v74, v4 offset:432
	ds_load_u8 v75, v4 offset:400
	ds_load_u8 v76, v4 offset:368
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v11, v10, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v11, s1, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v10, v13, v12, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v5, v15, v14, 0xc0c0004
	ds_load_u8 v121, v4 offset:80
	ds_load_u8 v122, v4 offset:48
	ds_load_u8 v123, v4 offset:16
	ds_load_u8 v124, v11
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v6, v17, v16, 0xc0c0004
	v_lshl_or_b32 v7, v10, 16, v7
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v19, v18, 0xc0c0004
	ds_load_u8 v12, v26 offset:3328
	ds_load_u8 v13, v26 offset:3072
	ds_load_u8 v14, v26 offset:3840
	ds_load_u8 v15, v26 offset:3584
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v11, v21, v20, 0xc0c0004
	v_lshl_or_b32 v6, v6, 16, v5
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v5, v11, 16, v10
	ds_load_u8 v10, v26 offset:2304
	ds_load_u8 v11, v26 offset:2048
	ds_load_u8 v16, v26 offset:2816
	ds_load_u8 v17, v26 offset:2560
	ds_load_u8 v18, v26 offset:1280
	ds_load_u8 v19, v26 offset:1024
	ds_load_u8 v20, v26 offset:1792
	ds_load_u8 v21, v26 offset:1536
	ds_load_u8 v22, v26 offset:256
	ds_load_u8 v23, v26
	ds_load_u8 v24, v26 offset:768
	ds_load_u8 v25, v26 offset:512
	ds_load_u8 v27, v26 offset:3968
	ds_load_u8 v28, v26 offset:3712
	ds_load_u8 v29, v26 offset:3456
	ds_load_u8 v30, v26 offset:3200
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
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v25, v24, 0xc0c0004
	v_lshl_or_b32 v45, v13, 16, v12
	v_lshl_or_b32 v44, v11, 16, v10
	v_lshl_or_b32 v43, v15, 16, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v42, v17, 16, v16
	v_dual_mov_b32 v10, s16 :: v_dual_mov_b32 v15, s21
	v_mov_b32_e32 v11, s17
	ds_load_u8 v34, v4 offset:928
	ds_load_u8 v35, v4 offset:896
	ds_load_u8 v36, v4 offset:992
	ds_load_u8 v37, v4 offset:960
	ds_load_u8 v38, v4 offset:800
	ds_load_u8 v39, v4 offset:768
	ds_load_u8 v40, v4 offset:864
	ds_load_u8 v41, v4 offset:832
	ds_load_u8 v46, v4 offset:672
	ds_load_u8 v47, v4 offset:640
	ds_load_u8 v48, v4 offset:736
	ds_load_u8 v49, v4 offset:704
	ds_load_u8 v125, v4 offset:976
	ds_load_u8 v126, v4 offset:944
	ds_load_u8 v127, v4 offset:912
	ds_load_u8 v128, v4 offset:880
	v_mov_b32_e32 v13, s19
	ds_load_u8 v77, v4 offset:336
	ds_load_u8 v78, v4 offset:304
	ds_load_u8 v79, v4 offset:272
	ds_load_u8 v80, v4 offset:240
	ds_load_u8 v81, v4 offset:208
	ds_load_u8 v82, v4 offset:176
	ds_load_u8 v83, v4 offset:144
	ds_load_u8 v84, v4 offset:112
	ds_load_u8 v133, v4 offset:720
	ds_load_u8 v134, v4 offset:688
	ds_load_u8 v135, v4 offset:656
	ds_load_u8 v136, v4 offset:624
	ds_load_u8 v137, v4 offset:592
	ds_load_u8 v138, v4 offset:560
	ds_load_u8 v139, v4 offset:528
	ds_load_u8 v140, v4 offset:496
	ds_load_u8 v165, v4 offset:1264
	ds_load_u8 v166, v4 offset:1232
	ds_load_u8 v167, v4 offset:1200
	ds_load_u8 v168, v4 offset:1168
	ds_load_u8 v31, v26 offset:2944
	ds_load_u8 v32, v26 offset:2688
	ds_load_u8 v33, v26 offset:2432
	ds_load_u8 v61, v26 offset:2176
	ds_load_u8 v62, v26 offset:1920
	ds_load_u8 v63, v26 offset:1664
	ds_load_u8 v64, v26 offset:1408
	ds_load_u8 v65, v26 offset:1152
	ds_load_u8 v66, v26 offset:896
	ds_load_u8 v67, v26 offset:640
	ds_load_u8 v68, v26 offset:384
	ds_load_u8 v69, v26 offset:128
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v146, v26 offset:6016
	ds_load_u8 v147, v26 offset:5760
	ds_load_u8 v148, v26 offset:5504
	ds_load_u8 v149, v26 offset:5248
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	ds_load_u8 v150, v26 offset:4992
	ds_load_u8 v151, v26 offset:4736
	ds_load_u8 v152, v26 offset:4480
	ds_load_u8 v153, v26 offset:4224
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v40, v47, v46, 0xc0c0004
	ds_load_u8 v185, v26 offset:10112
	ds_load_u8 v186, v26 offset:9856
	ds_load_u8 v187, v26 offset:9600
	ds_load_u8 v188, v26 offset:9344
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v41, v49, v48, 0xc0c0004
	ds_load_u8 v47, v26 offset:7424
	ds_load_u8 v48, v26 offset:7168
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v4 offset:544
	ds_load_u8 v50, v4 offset:512
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v4 offset:608
	ds_load_u8 v51, v4 offset:576
	ds_load_u8 v129, v4 offset:848
	ds_load_u8 v130, v4 offset:816
	ds_load_u8 v131, v4 offset:784
	ds_load_u8 v132, v4 offset:752
	v_mov_b32_e32 v12, s18
	v_dual_mov_b32 v14, s20 :: v_dual_mov_b32 v17, s23
	v_mov_b32_e32 v16, s22
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[18:25], v[42:45], v[5:8], v[10:17] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v49, v51, v37, 0xc0c0004
	v_lshl_or_b32 v37, v36, 16, v34
	v_perm_b32 v46, v50, v35, 0xc0c0004
	ds_load_u8 v50, v26 offset:7936
	ds_load_u8 v51, v26 offset:7680
	v_lshl_or_b32 v36, v39, 16, v38
	v_lshl_or_b32 v35, v41, 16, v40
	v_perm_b32 v47, v48, v47, 0xc0c0004
	v_lshl_or_b32 v34, v49, 16, v46
	ds_load_u8 v38, v26 offset:6400
	ds_load_u8 v39, v26 offset:6144
	ds_load_u8 v40, v26 offset:6912
	ds_load_u8 v41, v26 offset:6656
	ds_load_u8 v46, v26 offset:5376
	ds_load_u8 v49, v26 offset:5120
	ds_load_u8 v52, v26 offset:5888
	ds_load_u8 v53, v26 offset:5632
	ds_load_u8 v70, v26 offset:8064
	ds_load_u8 v71, v26 offset:7808
	ds_load_u8 v72, v26 offset:7552
	ds_load_u8 v141, v26 offset:7296
	ds_load_u8 v48, v26 offset:4352
	ds_load_u8 v55, v26 offset:4096
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v40, v49, v46, 0xc0c0004
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v41, v53, v52, 0xc0c0004
	ds_load_u8 v52, v4 offset:1440
	ds_load_u8 v53, v4 offset:1408
	ds_load_u8 v51, v26 offset:4864
	ds_load_u8 v56, v26 offset:4608
	ds_load_u8 v142, v26 offset:7040
	ds_load_u8 v143, v26 offset:6784
	ds_load_u8 v144, v26 offset:6528
	ds_load_u8 v145, v26 offset:6272
	v_lshl_or_b32 v49, v50, 16, v47
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v46, v55, v48, 0xc0c0004
	v_lshl_or_b32 v48, v39, 16, v38
	v_lshl_or_b32 v47, v41, 16, v40
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v51, v56, v51, 0xc0c0004
	ds_load_u8 v55, v4 offset:1504
	ds_load_u8 v56, v4 offset:1472
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v53, v4 offset:1056
	ds_load_u8 v159, v4 offset:1024
	v_lshl_or_b32 v46, v51, 16, v46
	ds_load_u8 v38, v4 offset:1312
	ds_load_u8 v39, v4 offset:1280
	ds_load_u8 v40, v4 offset:1376
	ds_load_u8 v41, v4 offset:1344
	ds_load_u8 v50, v4 offset:1184
	ds_load_u8 v51, v4 offset:1152
	ds_load_u8 v57, v4 offset:1248
	ds_load_u8 v154, v4 offset:1216
	ds_load_u8 v155, v4 offset:1520
	ds_load_u8 v156, v4 offset:1488
	ds_load_u8 v157, v4 offset:1456
	ds_load_u8 v158, v4 offset:1424
	v_wmma_i32_16x16x16_iu8 v[18:25], v[46:49], v[34:37], v[18:25] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v51, v154, v57, 0xc0c0004
	ds_load_u8 v56, v4 offset:1120
	ds_load_u8 v160, v4 offset:1088
	ds_load_u8 v161, v4 offset:1392
	ds_load_u8 v162, v4 offset:1360
	ds_load_u8 v163, v4 offset:1328
	ds_load_u8 v164, v4 offset:1296
	v_perm_b32 v53, v159, v53, 0xc0c0004
	ds_load_u8 v57, v26 offset:11520
	ds_load_u8 v159, v26 offset:11264
	ds_load_u8 v172, v26 offset:12032
	ds_load_u8 v173, v26 offset:11776
	v_lshl_or_b32 v41, v55, 16, v52
	v_lshl_or_b32 v40, v39, 16, v38
	v_lshl_or_b32 v39, v51, 16, v50
	ds_load_u8 v154, v4 offset:1136
	ds_load_u8 v169, v4 offset:1104
	ds_load_u8 v170, v4 offset:1072
	ds_load_u8 v171, v4 offset:1040
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v56, v160, v56, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v57, v159, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v38, v56, 16, v53
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v159, v173, v172, 0xc0c0004
	ds_load_u8 v172, v26 offset:8448
	ds_load_u8 v173, v26 offset:8192
	ds_load_u8 v179, v26 offset:8960
	ds_load_u8 v180, v26 offset:8704
	ds_load_u8 v181, v26 offset:11136
	ds_load_u8 v182, v26 offset:10880
	ds_load_u8 v183, v26 offset:10624
	ds_load_u8 v184, v26 offset:10368
	ds_load_u8 v50, v26 offset:10496
	ds_load_u8 v51, v26 offset:10240
	ds_load_u8 v52, v26 offset:11008
	ds_load_u8 v53, v26 offset:10752
	ds_load_u8 v55, v26 offset:9472
	ds_load_u8 v56, v26 offset:9216
	ds_load_u8 v160, v26 offset:9984
	ds_load_u8 v174, v26 offset:9728
	ds_load_u8 v175, v26 offset:12160
	ds_load_u8 v176, v26 offset:11904
	ds_load_u8 v177, v26 offset:11648
	ds_load_u8 v178, v26 offset:11392
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v51, v53, v52, 0xc0c0004
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	v_perm_b32 v173, v180, v179, 0xc0c0004
	ds_load_u8 v179, v4 offset:1824
	ds_load_u8 v180, v4 offset:1792
	ds_load_u8 v195, v4 offset:1888
	ds_load_u8 v196, v4 offset:1856
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v56, v174, v160, 0xc0c0004
	ds_load_u8 v160, v4 offset:1952
	ds_load_u8 v174, v4 offset:1920
	ds_load_u8 v189, v4 offset:2016
	ds_load_u8 v190, v4 offset:1984
	ds_load_u8 v191, v26 offset:9088
	ds_load_u8 v192, v26 offset:8832
	ds_load_u8 v193, v26 offset:8576
	ds_load_u8 v194, v26 offset:8320
	v_lshl_or_b32 v52, v51, 16, v50
	v_lshl_or_b32 v53, v159, 16, v57
	v_lshl_or_b32 v50, v173, 16, v172
	v_lshl_or_b32 v51, v56, 16, v55
	ds_load_u8 v159, v54
	ds_load_u8 v172, v4 offset:2000
	ds_load_u8 v173, v4 offset:1968
	ds_load_u8 v197, v4 offset:1936
	v_wmma_i32_16x16x16_iu8 v[18:25], v[50:53], v[38:41], v[18:25] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v54, v174, v160, 0xc0c0004
	v_perm_b32 v56, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v55, v190, v189, 0xc0c0004
	v_perm_b32 v179, v196, v195, 0xc0c0004
	ds_load_u8 v180, v4 offset:1568
	ds_load_u8 v195, v4 offset:1536
	ds_load_u8 v196, v4 offset:1632
	ds_load_u8 v202, v4 offset:1600
	ds_load_u8 v160, v4 offset:1696
	ds_load_u8 v174, v4 offset:1664
	ds_load_u8 v189, v4 offset:1760
	ds_load_u8 v190, v4 offset:1728
	ds_load_u8 v198, v4 offset:1904
	ds_load_u8 v199, v4 offset:1872
	ds_load_u8 v200, v4 offset:1840
	ds_load_u8 v201, v4 offset:1808
	v_lshl_or_b32 v57, v55, 16, v54
	v_lshl_or_b32 v56, v179, 16, v56
	ds_load_u8 v179, v4 offset:1776
	ds_load_u8 v203, v4 offset:1744
	ds_load_u8 v204, v4 offset:1712
	ds_load_u8 v205, v4 offset:1680
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v54, v174, v160, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v55, v190, v189, 0xc0c0004
	ds_load_u8 v160, v26 offset:15616
	ds_load_u8 v174, v26 offset:15360
	ds_load_u8 v189, v26 offset:16128
	ds_load_u8 v190, v26 offset:15872
	ds_load_u8 v206, v4 offset:1648
	ds_load_u8 v207, v4 offset:1616
	ds_load_u8 v208, v4 offset:1584
	ds_load_u8 v209, v4 offset:1552
	v_perm_b32 v4, v195, v180, 0xc0c0004
	v_perm_b32 v180, v202, v196, 0xc0c0004
	ds_load_u8 v195, v26 offset:14592
	ds_load_u8 v196, v26 offset:14336
	ds_load_u8 v202, v26 offset:15104
	ds_load_u8 v210, v26 offset:14848
	v_lshl_or_b32 v55, v55, 16, v54
	v_lshl_or_b32 v54, v180, 16, v4
	ds_load_u8 v4, v26 offset:13568
	ds_load_u8 v180, v26 offset:13312
	ds_load_u8 v211, v26 offset:14080
	ds_load_u8 v212, v26 offset:13824
	ds_load_u8 v213, v26 offset:16256
	ds_load_u8 v214, v26 offset:16000
	ds_load_u8 v215, v26 offset:15744
	ds_load_u8 v216, v26 offset:15488
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v160, v174, v160, 0xc0c0004
	ds_load_u8 v174, v26 offset:12544
	ds_load_u8 v217, v26 offset:12288
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	ds_load_u8 v190, v26 offset:15232
	ds_load_u8 v218, v26 offset:14976
	ds_load_u8 v219, v26 offset:14720
	ds_load_u8 v220, v26 offset:14464
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v195, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v180, v180, v4, 0xc0c0004
	v_perm_b32 v196, v210, v202, 0xc0c0004
	ds_load_u8 v202, v26 offset:13056
	ds_load_u8 v210, v26 offset:12800
	ds_load_u8 v221, v26 offset:14208
	ds_load_u8 v222, v26 offset:13952
	ds_load_u8 v223, v26 offset:13696
	ds_load_u8 v224, v26 offset:13440
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v211, v212, v211, 0xc0c0004
	ds_load_u8 v212, v26 offset:13184
	ds_load_u8 v225, v26 offset:12928
	ds_load_u8 v226, v26 offset:12672
	ds_load_u8 v227, v26 offset:12416
	v_perm_b32 v4, v30, v29, 0xc0c0004
	v_perm_b32 v26, v28, v27, 0xc0c0004
	v_perm_b32 v27, v61, v33, 0xc0c0004
	v_perm_b32 v28, v32, v31, 0xc0c0004
	v_perm_b32 v29, v65, v64, 0xc0c0004
	v_perm_b32 v30, v63, v62, 0xc0c0004
	v_perm_b32 v31, v69, v68, 0xc0c0004
	v_perm_b32 v32, v67, v66, 0xc0c0004
	v_lshl_or_b32 v64, v26, 16, v4
	v_lshl_or_b32 v63, v28, 16, v27
	v_lshl_or_b32 v62, v30, 16, v29
	v_perm_b32 v4, v141, v72, 0xc0c0004
	v_lshl_or_b32 v61, v32, 16, v31
	v_perm_b32 v65, v71, v70, 0xc0c0004
	v_perm_b32 v66, v145, v144, 0xc0c0004
	v_perm_b32 v67, v143, v142, 0xc0c0004
	v_perm_b32 v68, v149, v148, 0xc0c0004
	v_perm_b32 v70, v147, v146, 0xc0c0004
	v_perm_b32 v71, v153, v152, 0xc0c0004
	v_perm_b32 v72, v151, v150, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[26:33], v[61:64], v[5:8], v[10:17] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v65, 16, v4
	v_lshl_or_b32 v6, v67, 16, v66
	v_lshl_or_b32 v5, v70, 16, v68
	v_lshl_or_b32 v4, v72, 16, v71
	v_perm_b32 v8, v178, v177, 0xc0c0004
	v_perm_b32 v65, v176, v175, 0xc0c0004
	v_perm_b32 v66, v184, v183, 0xc0c0004
	v_perm_b32 v67, v182, v181, 0xc0c0004
	v_perm_b32 v70, v188, v187, 0xc0c0004
	v_perm_b32 v71, v186, v185, 0xc0c0004
	v_perm_b32 v72, v194, v193, 0xc0c0004
	v_perm_b32 v141, v192, v191, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[26:33], v[4:7], v[34:37], v[26:33] neg_lo:[1,1,0]
	v_lshl_or_b32 v68, v65, 16, v8
	v_lshl_or_b32 v67, v67, 16, v66
	v_lshl_or_b32 v66, v71, 16, v70
	v_lshl_or_b32 v65, v141, 16, v72
	v_perm_b32 v34, v75, v74, 0xc0c0004
	v_perm_b32 v35, v73, v140, 0xc0c0004
	v_perm_b32 v36, v79, v78, 0xc0c0004
	v_perm_b32 v37, v77, v76, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[26:33], v[65:68], v[38:41], v[26:33] neg_lo:[1,1,0]
	v_perm_b32 v38, v83, v82, 0xc0c0004
	v_perm_b32 v39, v81, v80, 0xc0c0004
	v_perm_b32 v40, v123, v122, 0xc0c0004
	v_perm_b32 v41, v121, v84, 0xc0c0004
	v_lshl_or_b32 v76, v35, 16, v34
	v_lshl_or_b32 v75, v37, 16, v36
	v_lshl_or_b32 v74, v39, 16, v38
	v_perm_b32 v78, v127, v126, 0xc0c0004
	v_lshl_or_b32 v73, v41, 16, v40
	v_perm_b32 v79, v125, v159, 0xc0c0004
	v_perm_b32 v80, v131, v130, 0xc0c0004
	v_perm_b32 v81, v129, v128, 0xc0c0004
	v_perm_b32 v82, v135, v134, 0xc0c0004
	v_perm_b32 v83, v133, v132, 0xc0c0004
	v_perm_b32 v84, v139, v138, 0xc0c0004
	v_perm_b32 v121, v137, v136, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[34:41], v[42:45], v[73:76], v[10:17] neg_lo:[1,1,0]
	v_lshl_or_b32 v45, v79, 16, v78
	v_lshl_or_b32 v44, v81, 16, v80
	v_lshl_or_b32 v43, v83, 16, v82
	v_lshl_or_b32 v42, v121, 16, v84
	v_perm_b32 v78, v158, v157, 0xc0c0004
	v_perm_b32 v79, v156, v155, 0xc0c0004
	v_perm_b32 v80, v164, v163, 0xc0c0004
	v_perm_b32 v81, v162, v161, 0xc0c0004
	v_perm_b32 v82, v168, v167, 0xc0c0004
	v_perm_b32 v83, v166, v165, 0xc0c0004
	v_perm_b32 v84, v171, v170, 0xc0c0004
	v_perm_b32 v121, v169, v154, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v8, v216, v215, 0xc0c0004
	v_perm_b32 v141, v214, v213, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[34:41], v[46:49], v[42:45], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v49, v79, 16, v78
	v_lshl_or_b32 v48, v81, 16, v80
	v_lshl_or_b32 v47, v83, 16, v82
	v_lshl_or_b32 v46, v121, 16, v84
	v_wmma_i32_16x16x16_iu8 v[10:17], v[61:64], v[73:76], v[10:17] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v174, v217, v174, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v69, v210, v202, 0xc0c0004
	v_perm_b32 v142, v220, v219, 0xc0c0004
	v_perm_b32 v143, v218, v190, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v144, v224, v223, 0xc0c0004
	v_perm_b32 v145, v222, v221, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v227, v226, 0xc0c0004
	v_perm_b32 v77, v225, v212, 0xc0c0004
	v_lshl_or_b32 v80, v141, 16, v8
	v_wmma_i32_16x16x16_iu8 v[34:41], v[50:53], v[46:49], v[34:41] neg_lo:[1,1,0]
	v_perm_b32 v8, v197, v173, 0xc0c0004
	v_perm_b32 v50, v172, v124, 0xc0c0004
	v_perm_b32 v51, v201, v200, 0xc0c0004
	v_perm_b32 v52, v199, v198, 0xc0c0004
	v_perm_b32 v53, v205, v204, 0xc0c0004
	v_perm_b32 v61, v203, v179, 0xc0c0004
	v_perm_b32 v62, v209, v208, 0xc0c0004
	v_perm_b32 v63, v207, v206, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[10:17], v[4:7], v[42:45], v[10:17] neg_lo:[1,1,0]
	v_lshl_or_b32 v72, v189, 16, v160
	v_lshl_or_b32 v71, v196, 16, v195
	v_lshl_or_b32 v70, v211, 16, v180
	v_lshl_or_b32 v69, v69, 16, v174
	v_lshl_or_b32 v79, v143, 16, v142
	v_lshl_or_b32 v78, v145, 16, v144
	v_lshl_or_b32 v77, v77, 16, v146
	v_lshl_or_b32 v7, v50, 16, v8
	v_lshl_or_b32 v6, v52, 16, v51
	v_lshl_or_b32 v5, v61, 16, v53
	v_lshl_or_b32 v4, v63, 16, v62
	v_wmma_i32_16x16x16_iu8 v[10:17], v[65:68], v[46:49], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[18:25], v[69:72], v[54:57], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[26:33], v[77:80], v[54:57], v[26:33] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[69:72], v[4:7], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[10:17], v[77:80], v[4:7], v[10:17] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v121, v19
	v_cvt_f32_i32_e32 v122, v20
	v_cvt_f32_i32_e32 v123, v21
	v_cvt_f32_i32_e32 v124, v22
	v_cvt_f32_i32_e32 v125, v23
	v_cvt_f32_i32_e32 v126, v24
	v_cvt_f32_i32_e32 v127, v25
	v_cvt_f32_i32_e32 v128, v26
	v_cvt_f32_i32_e32 v129, v27
	v_cvt_f32_i32_e32 v130, v28
	v_cvt_f32_i32_e32 v132, v29
	v_cvt_f32_i32_e32 v135, v30
	v_cvt_f32_i32_e32 v136, v31
	v_cvt_f32_i32_e32 v137, v32
	v_cvt_f32_i32_e32 v138, v33
	v_cvt_f32_i32_e32 v139, v34
	v_cvt_f32_i32_e32 v140, v35
	v_cvt_f32_i32_e32 v141, v36
	v_cvt_f32_i32_e32 v142, v37
	v_cvt_f32_i32_e32 v143, v38
	v_cvt_f32_i32_e32 v144, v39
	v_cvt_f32_i32_e32 v145, v40
	v_cvt_f32_i32_e32 v146, v41
	v_cvt_f32_i32_e32 v147, v10
	v_cvt_f32_i32_e32 v148, v11
	v_cvt_f32_i32_e32 v149, v12
	v_cvt_f32_i32_e32 v150, v13
	v_cvt_f32_i32_e32 v151, v14
	v_cvt_f32_i32_e32 v152, v15
	v_cvt_f32_i32_e32 v153, v16
	v_cvt_f32_i32_e32 v154, v17
	v_cvt_f32_i32_e32 v131, v18
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s26, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 25
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s26, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s15
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s0, s35
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s46
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v4, v120, s0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v5, v85, s1, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v6, v119, s0, 1
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	s_and_b32 s13, s13, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_and_b32 v133, 14, v0
	s_clause 0x1
	buffer_load_u16 v157, v4, s[12:15], 0 offen
	buffer_load_u16 v158, v6, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v5, v5, s[24:27], 0 offen
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v134, 1, v0
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v6, 1, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v21, 0 :: v_dual_lshlrev_b32 v4, 5, v134
	v_dual_mov_b32 v10, 0 :: v_dual_add_nc_u32 v155, 0, v60
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v12, 0
	v_mov_b32_e32 v13, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_add3_u32 v4, 0, v59, v4
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v156, v4, v6
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v51, 0
	v_mov_b32_e32 v28, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v7, 0
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v8, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s0, 0
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v29, 0 :: v_dual_lshlrev_b32 v4, 16, v5
	v_mov_b32_e32 v5, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v156, v4 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v155 offset:36864
	ds_load_b128 v[37:40], v155 offset:36880
	ds_load_b128 v[41:44], v155 offset:37376
	ds_load_b128 v[45:48], v155 offset:37392
	v_mov_b32_e32 v4, 0
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
	v_add_nc_u32_e32 v159, s47, v58
	v_add_nc_u32_e32 v160, s47, v2
	v_add_nc_u32_e32 v161, s47, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v159 offset:416
	ds_load_u8 v2, v159 offset:384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v25, s48, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v159 offset:480
	ds_load_u8 v3, v159 offset:448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v2, 16, v1
	ds_load_u8 v1, v159 offset:288
	ds_load_u8 v2, v159 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v159 offset:352
	ds_load_u8 v3, v159 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v2, 16, v1
	ds_load_u8 v1, v159 offset:160
	ds_load_u8 v2, v159 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v159 offset:224
	ds_load_u8 v3, v159 offset:192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v2, 16, v1
	ds_load_u8 v1, v159 offset:32
	ds_load_u8 v2, v159
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v159 offset:96
	ds_load_u8 v3, v159 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v2, 16, v1
	ds_load_u8 v1, v25 offset:3328
	ds_load_u8 v2, v25 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:3840
	ds_load_u8 v3, v25 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v2, 16, v1
	ds_load_u8 v1, v25 offset:2304
	ds_load_u8 v2, v25 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:2816
	ds_load_u8 v3, v25 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v2, 16, v1
	ds_load_u8 v1, v25 offset:1280
	ds_load_u8 v2, v25 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:1792
	ds_load_u8 v3, v25 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v2, 16, v1
	ds_load_u8 v1, v25 offset:256
	ds_load_u8 v2, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:768
	ds_load_u8 v3, v25 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v2, 16, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v4, s19
	ds_load_u8 v17, v159 offset:928
	ds_load_u8 v18, v159 offset:896
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v8, s23 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[26:29], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:992
	ds_load_u8 v19, v159 offset:960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v18, 16, v17
	ds_load_u8 v17, v159 offset:800
	ds_load_u8 v18, v159 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:864
	ds_load_u8 v19, v159 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v18, 16, v17
	ds_load_u8 v17, v159 offset:672
	ds_load_u8 v18, v159 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:736
	ds_load_u8 v19, v159 offset:704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v18, 16, v17
	ds_load_u8 v17, v159 offset:544
	ds_load_u8 v18, v159 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:608
	ds_load_u8 v19, v159 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v18, 16, v17
	ds_load_u8 v17, v25 offset:7424
	ds_load_u8 v18, v25 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:7936
	ds_load_u8 v19, v25 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v18, 16, v17
	ds_load_u8 v17, v25 offset:6400
	ds_load_u8 v18, v25 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:6912
	ds_load_u8 v19, v25 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v18, 16, v17
	ds_load_u8 v17, v25 offset:5376
	ds_load_u8 v18, v25 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:5888
	ds_load_u8 v19, v25 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v18, 16, v17
	ds_load_u8 v17, v25 offset:4352
	ds_load_u8 v18, v25 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:4864
	ds_load_u8 v19, v25 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v18, 16, v17
	ds_load_u8 v17, v159 offset:1440
	ds_load_u8 v18, v159 offset:1408
	v_wmma_i32_16x16x16_iu8 v[9:16], v[73:76], v[57:60], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:1504
	ds_load_u8 v19, v159 offset:1472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v18, 16, v17
	ds_load_u8 v17, v159 offset:1312
	ds_load_u8 v18, v159 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:1376
	ds_load_u8 v19, v159 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v18, 16, v17
	ds_load_u8 v17, v159 offset:1184
	ds_load_u8 v18, v159 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:1248
	ds_load_u8 v19, v159 offset:1216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v18, 16, v17
	ds_load_u8 v17, v159 offset:1056
	ds_load_u8 v18, v159 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:1120
	ds_load_u8 v19, v159 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v18, 16, v17
	ds_load_u8 v17, v25 offset:11520
	ds_load_u8 v18, v25 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:12032
	ds_load_u8 v19, v25 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v18, 16, v17
	ds_load_u8 v17, v25 offset:10496
	ds_load_u8 v18, v25 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:11008
	ds_load_u8 v19, v25 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v18, 16, v17
	ds_load_u8 v17, v25 offset:9472
	ds_load_u8 v18, v25 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:9984
	ds_load_u8 v19, v25 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v18, 16, v17
	ds_load_u8 v17, v25 offset:8448
	ds_load_u8 v18, v25 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:8960
	ds_load_u8 v19, v25 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v18, 16, v17
	ds_load_u8 v17, v159 offset:1952
	ds_load_u8 v18, v159 offset:1920
	v_wmma_i32_16x16x16_iu8 v[9:16], v[77:80], v[65:68], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:2016
	ds_load_u8 v19, v159 offset:1984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v18, 16, v17
	ds_load_u8 v17, v159 offset:1824
	ds_load_u8 v18, v159 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:1888
	ds_load_u8 v19, v159 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v18, 16, v17
	ds_load_u8 v17, v159 offset:1696
	ds_load_u8 v18, v159 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:1760
	ds_load_u8 v19, v159 offset:1728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v18, 16, v17
	ds_load_u8 v17, v159 offset:1568
	ds_load_u8 v18, v159 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:1632
	ds_load_u8 v19, v159 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v18, 16, v17
	ds_load_u8 v17, v25 offset:15616
	ds_load_u8 v18, v25 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:16128
	ds_load_u8 v19, v25 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v18, 16, v17
	ds_load_u8 v17, v25 offset:14592
	ds_load_u8 v18, v25 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:15104
	ds_load_u8 v19, v25 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v18, 16, v17
	ds_load_u8 v17, v25 offset:13568
	ds_load_u8 v18, v25 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:14080
	ds_load_u8 v19, v25 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v18, 16, v17
	ds_load_u8 v17, v25 offset:12544
	ds_load_u8 v18, v25 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:13056
	ds_load_u8 v19, v25 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v18, 16, v17
	ds_load_u8 v17, v25 offset:3456
	ds_load_u8 v18, v25 offset:3200
	v_wmma_i32_16x16x16_iu8 v[9:16], v[61:64], v[81:84], v[9:16] neg_lo:[1,1,0]
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
	ds_load_u8 v18, v25 offset:3968
	ds_load_u8 v19, v25 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v18, 16, v17
	ds_load_u8 v17, v25 offset:2432
	ds_load_u8 v18, v25 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:2944
	ds_load_u8 v19, v25 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v18, 16, v17
	ds_load_u8 v17, v25 offset:1408
	ds_load_u8 v18, v25 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:1920
	ds_load_u8 v19, v25 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v18, 16, v17
	ds_load_u8 v17, v25 offset:384
	ds_load_u8 v18, v25 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:896
	ds_load_u8 v19, v25 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[49:52], v[26:29], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v26, v25 offset:7552
	ds_load_u8 v27, v25 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:8064
	ds_load_u8 v28, v25 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v27, 16, v26
	ds_load_u8 v26, v25 offset:6528
	ds_load_u8 v27, v25 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:7040
	ds_load_u8 v28, v25 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v27, 16, v26
	ds_load_u8 v26, v25 offset:5504
	ds_load_u8 v27, v25 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:6016
	ds_load_u8 v28, v25 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v27, 16, v26
	ds_load_u8 v26, v25 offset:4480
	ds_load_u8 v27, v25 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:4992
	ds_load_u8 v28, v25 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v27, 16, v26
	ds_load_u8 v26, v25 offset:11648
	ds_load_u8 v27, v25 offset:11392
	v_wmma_i32_16x16x16_iu8 v[17:24], v[53:56], v[57:60], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:12160
	ds_load_u8 v28, v25 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v27, 16, v26
	ds_load_u8 v26, v25 offset:10624
	ds_load_u8 v27, v25 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:11136
	ds_load_u8 v28, v25 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v27, 16, v26
	ds_load_u8 v26, v25 offset:9600
	ds_load_u8 v27, v25 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:10112
	ds_load_u8 v28, v25 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v27, 16, v26
	ds_load_u8 v26, v25 offset:8576
	ds_load_u8 v27, v25 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:9088
	ds_load_u8 v28, v25 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v27, 16, v26
	ds_load_u8 v26, v25 offset:15744
	ds_load_u8 v27, v25 offset:15488
	v_wmma_i32_16x16x16_iu8 v[17:24], v[57:60], v[65:68], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:16256
	ds_load_u8 v28, v25 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v27, 16, v26
	ds_load_u8 v26, v25 offset:14720
	ds_load_u8 v27, v25 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:15232
	ds_load_u8 v28, v25 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v27, 16, v26
	ds_load_u8 v26, v25 offset:13696
	ds_load_u8 v27, v25 offset:13440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:14208
	ds_load_u8 v28, v25 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v27, 16, v26
	ds_load_u8 v26, v25 offset:12672
	ds_load_u8 v27, v25 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:13184
	ds_load_u8 v25, v25 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v25, 16, v26
	ds_load_u8 v25, v159 offset:432
	ds_load_u8 v26, v159 offset:400
	v_wmma_i32_16x16x16_iu8 v[17:24], v[65:68], v[81:84], v[17:24] neg_lo:[1,1,0]
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
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v159 offset:496
	ds_load_u8 v27, v159 offset:464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v26, 16, v25
	ds_load_u8 v25, v159 offset:304
	ds_load_u8 v26, v159 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v159 offset:368
	ds_load_u8 v27, v159 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v26, 16, v25
	ds_load_u8 v25, v159 offset:176
	ds_load_u8 v26, v159 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v159 offset:240
	ds_load_u8 v27, v159 offset:208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v26, 16, v25
	ds_load_u8 v25, v159 offset:48
	ds_load_u8 v26, v159 offset:16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v159 offset:112
	ds_load_u8 v27, v159 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[81:84], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v69, v159 offset:944
	ds_load_u8 v70, v159 offset:912
	v_wmma_i32_16x16x16_iu8 v[1:8], v[49:52], v[81:84], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v161
	ds_load_u8 v71, v159 offset:976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v159 offset:816
	ds_load_u8 v70, v159 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v159 offset:880
	ds_load_u8 v71, v159 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v70, 16, v69
	ds_load_u8 v69, v159 offset:688
	ds_load_u8 v70, v159 offset:656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v159 offset:752
	ds_load_u8 v161, v159 offset:720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v161, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v159 offset:560
	ds_load_u8 v161, v159 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v161, v69, 0xc0c0004
	ds_load_u8 v161, v159 offset:624
	ds_load_u8 v162, v159 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v161, 16, v69
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[69:72], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v73, v159 offset:1456
	ds_load_u8 v74, v159 offset:1424
	v_wmma_i32_16x16x16_iu8 v[1:8], v[53:56], v[69:72], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:1520
	ds_load_u8 v75, v159 offset:1488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v74, 16, v73
	ds_load_u8 v73, v159 offset:1328
	ds_load_u8 v74, v159 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:1392
	ds_load_u8 v75, v159 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v74, 16, v73
	ds_load_u8 v73, v159 offset:1200
	ds_load_u8 v74, v159 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:1264
	ds_load_u8 v161, v159 offset:1232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v161, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v159 offset:1072
	ds_load_u8 v161, v159 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v161, v73, 0xc0c0004
	ds_load_u8 v161, v159 offset:1136
	ds_load_u8 v162, v159 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v161, 16, v73
	v_wmma_i32_16x16x16_iu8 v[25:32], v[77:80], v[73:76], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v77, v159 offset:1968
	ds_load_u8 v78, v159 offset:1936
	v_wmma_i32_16x16x16_iu8 v[1:8], v[57:60], v[73:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v160
	ds_load_u8 v79, v159 offset:2000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v159 offset:1840
	ds_load_u8 v78, v159 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v159 offset:1904
	ds_load_u8 v79, v159 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v78, 16, v77
	ds_load_u8 v77, v159 offset:1712
	ds_load_u8 v78, v159 offset:1680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v159 offset:1776
	ds_load_u8 v160, v159 offset:1744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v160, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v159 offset:1584
	ds_load_u8 v160, v159 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v160, v77, 0xc0c0004
	ds_load_u8 v160, v159 offset:1648
	ds_load_u8 v159, v159 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v159, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v159, 16, v77
	v_wmma_i32_16x16x16_iu8 v[25:32], v[61:64], v[77:80], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[65:68], v[77:80], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v49, v1
	v_cvt_f32_i32_e32 v50, v2
	v_cvt_f32_i32_e32 v51, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s45, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s1, s45, s1
	v_mov_b16_e32 v3.l, 0
	s_ashr_i32 s1, s1, 7
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v3.h, v158.l
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s1, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s1, s46
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v120, s1, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v85, s4, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s4, -1, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v59, v45, v3 :: v_dual_lshlrev_b32 v0, 2, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s4
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v61, v43, v3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v0, 0x3f8, v0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v62, v42, v3
	v_mul_f32_e32 v64, v40, v3
	v_mul_f32_e32 v65, v39, v3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v52, v2, s[24:27], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v2, v119, s1, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v55, v47, v3
	v_mul_f32_e32 v63, v41, v3
	v_mul_f32_e32 v66, v38, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v67, v37, v3 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v56, v1, s[12:15], 0 offen
	buffer_load_u16 v57, v2, s[12:15], 0 offen
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v134
	.loc	1 392 23 is_stmt 0              ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s44, s35, v[85:86]
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v58, v46, v3
	v_mul_f32_e32 v60, v44, v3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_cndmask_b32_e64 v53, 0x840, 0, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v36, v3
	v_mul_f32_e32 v69, v35, v3
	v_mul_f32_e32 v70, v34, v3
	v_mul_f32_e32 v71, v33, v3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v0, v53, v0
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v55, v55, v153, v118
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v0, v133, 11, v0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v54, v48, v3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v3.h, v157.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v118, v55, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v61, v61, v149, v114
	v_fma_f32 v59, v59, v151, v116
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v48, v48, v3
	v_mul_f32_e32 v47, v47, v3
	v_mul_f32_e32 v46, v46, v3
	v_mul_f32_e32 v45, v45, v3
	v_mul_f32_e32 v44, v44, v3
	v_mul_f32_e32 v43, v43, v3
	v_mul_f32_e32 v41, v41, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v48, v48, v138, v102
	v_fma_f32 v47, v47, v137, v101
	v_fma_f32 v46, v46, v136, v100
	v_fma_f32 v43, v43, v130, v97
	v_fma_f32 v41, v41, v128, v95
	v_fma_f32 v45, v45, v135, v99
	v_fma_f32 v44, v44, v132, v98
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v100, v46, s3
	v_cndmask_b32_e64 v79, v97, v43, s3
	v_cndmask_b32_e64 v81, v95, v41, s3
	v_cndmask_b32_e64 v77, v99, v45, s3
	v_cndmask_b32_e64 v78, v98, v44, s3
	v_cndmask_b32_e64 v61, v114, v61, s3
	v_cndmask_b32_e64 v59, v116, v59, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v42, v42, v3 :: v_dual_lshlrev_b32 v57, 16, v57
	v_mul_f32_e32 v40, v40, v3
	v_mul_f32_e32 v39, v39, v3
	v_mul_f32_e32 v38, v38, v3
	v_mul_f32_e32 v37, v37, v3
	v_mul_f32_e32 v36, v36, v3
	v_mul_f32_e32 v35, v35, v3
	v_mul_f32_e32 v34, v34, v3
	v_mul_f32_e32 v33, v33, v3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v42, v42, v129, v96
	v_fma_f32 v40, v40, v127, v94
	v_fma_f32 v75, v34, v121, v88
	v_fma_f32 v33, v33, v131, v87
	v_fma_f32 v39, v39, v126, v93
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v34, vcc_lo, s6, v2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v2, 16, v52
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v53, v38, v125, v92
	v_fma_f32 v55, v36, v123, v90
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v96, v42, s3
	v_cndmask_b32_e64 v82, v94, v40, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v156, v2 offset:36864
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v87, v33, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v87, 0, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v54, v54, v154, v111
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v93, v39, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[40:43], v155 offset:36880
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v111, v54, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v54, v37, v124, v91
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[36:39], v155 offset:36864
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v33, 16, v56
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v84, v92, v53, s3
	v_cndmask_b32_e64 v90, v90, v55, s3
	v_cndmask_b32_e64 v85, v91, v54, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[52:55], v155 offset:37392
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v63, v63, v147, v112
	v_fma_f32 v60, v60, v150, v115
	v_fma_f32 v58, v58, v152, v117
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v88, v75, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v88, v0, 8, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v63, v112, v63, s3
	v_cndmask_b32_e64 v60, v115, v60, s3
	v_cndmask_b32_e64 v58, v117, v58, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v91, v0, 24, 0
	v_xad_u32 v92, v0, 32, 0
	v_xad_u32 v56, v0, 40, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v98, v40, v33
	v_mul_f32_e32 v40, v40, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v74, v35, v122, v89
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_ci_u32_e64 v35, null, s7, v3, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v102, v48, s3
	v_cndmask_b32_e64 v48, v101, v47, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[44:47], v155 offset:37376
	v_mul_f32_e32 v100, v42, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v71, v71, v139, v103
	v_fma_f32 v69, v69, v141, v105
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v96, v38, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v67, v67, v143, v107
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v99, v41, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v66, v144, v108
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v103, v71, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v101, v43, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v68, v68, v142, v106
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v95, v37, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v62, v62, v148, v113
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v94, v36, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v65, v65, v145, v109
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v97, v39, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v146, v110
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v108, v66, s3
	v_cndmask_b32_e64 v67, v107, v67, s3
	v_cndmask_b32_e64 v68, v106, v68, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v103, v45, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v70, v70, v140, v104
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v105, v69, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v102, v44, v33
	v_mul_f32_e32 v105, v47, v33
	v_mul_f32_e32 v106, v52, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v104, v70, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v104, v46, v33
	v_mul_f32_e32 v107, v53, v33
	v_mul_f32_e32 v108, v54, v33
	v_mul_f32_e32 v33, v55, v33
	v_mul_f32_e32 v36, v36, v57
	v_mul_f32_e32 v44, v44, v57
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v113, v62, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v37, v37, v57
	v_mul_f32_e32 v38, v38, v57
	v_mul_f32_e32 v41, v41, v57
	v_mul_f32_e32 v45, v45, v57
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v109, v65, s3
	v_cndmask_b32_e64 v74, v89, v74, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v42, v42, v57
	v_mul_f32_e32 v46, v46, v57
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v110, v64, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v39, v39, v57
	v_mul_f32_e32 v43, v43, v57
	v_mul_f32_e32 v47, v47, v57
	v_mul_f32_e32 v52, v52, v57
	v_mul_f32_e32 v53, v53, v57
	v_mul_f32_e32 v54, v54, v57
	v_mul_f32_e32 v55, v55, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v94, v9, v2
	v_fma_f32 v17, v102, v17, v81
	v_fma_f32 v19, v104, v19, v79
	v_fma_f32 v33, v33, v24, v3
	v_fma_f32 v25, v36, v25, v71
	v_fma_f32 v29, v40, v29, v67
	v_fma_f32 v40, v44, v49, v63
	v_fma_f32 v10, v95, v10, v75
	v_fma_f32 v57, v103, v18, v80
	v_fma_f32 v21, v106, v21, v77
	v_fma_f32 v36, v37, v26, v70
	v_fma_f32 v27, v38, v27, v69
	v_fma_f32 v38, v41, v30, v66
	v_fma_f32 v41, v45, v50, v62
	v_fma_f32 v11, v96, v11, v74
	v_fma_f32 v23, v108, v23, v48
	v_fma_f32 v31, v42, v31, v65
	v_fma_f32 v42, v46, v51, v61
	v_fma_f32 v12, v97, v12, v90
	v_fma_f32 v94, v105, v20, v78
	v_fma_f32 v37, v39, v28, v68
	v_fma_f32 v39, v43, v32, v64
	v_fma_f32 v43, v47, v4, v60
	v_fma_f32 v13, v98, v13, v85
	v_fma_f32 v44, v52, v5, v59
	v_fma_f32 v14, v99, v14, v84
	v_fma_f32 v15, v100, v15, v83
	v_fma_f32 v16, v101, v16, v82
	v_fma_f32 v95, v107, v22, v76
	v_fma_f32 v45, v53, v6, v58
	v_fma_f32 v46, v54, v7, v73
	v_fma_f32 v47, v55, v8, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v9, s2
	v_cndmask_b32_e64 v18, v81, v17, s2
	v_cndmask_b32_e64 v22, v79, v19, s2
	v_cndmask_b32_e64 v32, v3, v33, s2
	v_cndmask_b32_e64 v3, v71, v25, s2
	v_cndmask_b32_e64 v19, v63, v40, s2
	v_cndmask_b32_e64 v4, v75, v10, s2
	v_cndmask_b32_e64 v20, v80, v57, s2
	v_cndmask_b32_e64 v26, v77, v21, s2
	v_cndmask_b32_e64 v5, v70, v36, s2
	v_cndmask_b32_e64 v21, v62, v41, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v89, v0, 16, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v74, v11, s2
	v_cndmask_b32_e64 v30, v48, v23, s2
	v_cndmask_b32_e64 v7, v69, v27, s2
	v_cndmask_b32_e64 v23, v61, v42, s2
	v_cndmask_b32_e64 v8, v90, v12, s2
	v_cndmask_b32_e64 v24, v78, v94, s2
	v_cndmask_b32_e64 v9, v68, v37, s2
	v_cndmask_b32_e64 v25, v60, v43, s2
	v_cndmask_b32_e64 v10, v85, v13, s2
	v_cndmask_b32_e64 v11, v67, v29, s2
	v_cndmask_b32_e64 v27, v59, v44, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v93, v0, 48, 0
	v_xad_u32 v0, v0, 56, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v84, v14, s2
	v_cndmask_b32_e64 v14, v83, v15, s2
	v_cndmask_b32_e64 v16, v82, v16, s2
	v_cndmask_b32_e64 v28, v76, v95, s2
	v_cndmask_b32_e64 v13, v66, v38, s2
	v_cndmask_b32_e64 v15, v65, v31, s2
	v_cndmask_b32_e64 v17, v64, v39, s2
	v_cndmask_b32_e64 v29, v58, v45, s2
	v_cndmask_b32_e64 v31, v73, v46, s2
	v_cndmask_b32_e64 v33, v72, v47, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_2addr_stride64_b64 v87, v[2:3], v[18:19] offset1:2
	ds_store_2addr_stride64_b64 v88, v[4:5], v[20:21] offset1:2
	ds_store_2addr_stride64_b64 v89, v[6:7], v[22:23] offset1:2
	ds_store_2addr_stride64_b64 v91, v[8:9], v[24:25] offset1:2
	ds_store_2addr_stride64_b64 v92, v[10:11], v[26:27] offset1:2
	ds_store_2addr_stride64_b64 v56, v[12:13], v[28:29] offset1:2
	ds_store_2addr_stride64_b64 v93, v[14:15], v[30:31] offset1:2
	ds_store_2addr_stride64_b64 v0, v[16:17], v[32:33] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v37, v[34:35], off
	v_lshlrev_b32_e32 v0, 3, v86
	v_lshlrev_b32_e32 v2, 2, v133
	v_lshlrev_b32_e32 v3, 6, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or3_b32 v0, v0, v3, v2
	v_add_nc_u32_e32 v2, 0, v0
	v_xad_u32 v3, 0x840, v0, 0
	v_xad_u32 v4, 0x1008, v0, 0
	v_xad_u32 v5, 0x1848, v0, 0
	v_xad_u32 v6, 0x2010, v0, 0
	v_xad_u32 v7, 0x2850, v0, 0
	v_xad_u32 v8, 0x3018, v0, 0
	v_xad_u32 v9, 0x3858, v0, 0
	ds_load_b64 v[32:33], v2
	ds_load_b64 v[30:31], v3
	ds_load_b64 v[28:29], v4
	ds_load_b64 v[26:27], v5
	ds_load_b64 v[24:25], v6
	ds_load_b64 v[22:23], v7
	ds_load_b64 v[20:21], v8
	ds_load_b64 v[18:19], v9
	v_xad_u32 v2, 0x4020, v0, 0
	v_xad_u32 v3, 0x4860, v0, 0
	v_xad_u32 v4, 0x5028, v0, 0
	v_xad_u32 v5, 0x5868, v0, 0
	v_xad_u32 v6, 0x6030, v0, 0
	v_xad_u32 v7, 0x6870, v0, 0
	v_xad_u32 v36, 0x7038, v0, 0
	v_xad_u32 v0, 0x7878, v0, 0
	ds_load_b64 v[16:17], v2
	ds_load_b64 v[14:15], v3
	ds_load_b64 v[12:13], v4
	ds_load_b64 v[10:11], v5
	ds_load_b64 v[8:9], v6
	ds_load_b64 v[6:7], v7
	ds_load_b64 v[4:5], v36
	ds_load_b64 v[2:3], v0
.LBB0_13:                               ; %atomicrmw.start182
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v36, v37, v32
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end181
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v34, s35, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s6, v34
	v_add_co_ci_u32_e64 v35, null, s7, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_15:                               ; %atomicrmw.start176
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(14)
	v_add_f32_e32 v36, v37, v30
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end175
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v34, s35, 1, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s6, v34
	v_add_co_ci_u32_e64 v35, null, s7, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_17:                               ; %atomicrmw.start170
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v36, v37, v28
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end169
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[34:35], null, s35, 3, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s6, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s7, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_19:                               ; %atomicrmw.start164
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v26
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end163
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v34, s35, 2, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s6, v34
	v_add_co_ci_u32_e64 v35, null, s7, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_21:                               ; %atomicrmw.start158
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v24
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end157
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 5, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s6, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s7, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_23:                               ; %atomicrmw.start152
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v22
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end151
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 6, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s6, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s7, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_25:                               ; %atomicrmw.start146
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v20
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end145
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 7, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s6, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s7, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_27:                               ; %atomicrmw.start140
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v18
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end139
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v34, s35, 3, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s6, v34
	v_add_co_ci_u32_e64 v35, null, s7, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_29:                               ; %atomicrmw.start134
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v16
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end133
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 9, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s6, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s7, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_31:                               ; %atomicrmw.start128
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v14
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end127
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 10, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s6, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s7, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_33:                               ; %atomicrmw.start122
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v12
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end121
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 11, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s6, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s7, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_35:                               ; %atomicrmw.start116
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v10
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end115
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 12, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s6, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s7, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_37:                               ; %atomicrmw.start110
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v8
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end109
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 13, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s6, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s7, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_39:                               ; %atomicrmw.start104
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v6
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_39
; %bb.40:                               ; %atomicrmw.end103
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 14, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s6, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s7, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_41:                               ; %atomicrmw.start98
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v4
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_41
; %bb.42:                               ; %atomicrmw.end97
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s35, 15, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s6, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s7, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_43:                               ; %atomicrmw.start92
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v2
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_43
; %bb.44:                               ; %atomicrmw.end91
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v34, s33, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s6, v34
	v_add_co_ci_u32_e64 v35, null, s7, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_45:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v33
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_45
; %bb.46:                               ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s35, 17, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s6, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s7, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_47:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v31
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_47
; %bb.48:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[30:31], null, s35, 18, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v31, 31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[30:31], 2, v[30:31]
	v_add_co_u32 v30, vcc_lo, s6, v30
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v31, null, s7, v31, vcc_lo
	global_load_b32 v33, v[30:31], off
.LBB0_49:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v32, v33, v29
	global_atomic_cmpswap_b32 v0, v[30:31], v[32:33], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v33
	v_mov_b32_e32 v33, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_49
; %bb.50:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[28:29], null, s35, 19, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v28, vcc_lo, s6, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s7, v29, vcc_lo
	global_load_b32 v31, v[28:29], off
.LBB0_51:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v30, v31, v27
	global_atomic_cmpswap_b32 v0, v[28:29], v[30:31], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v31
	v_mov_b32_e32 v31, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_51
; %bb.52:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[26:27], null, s35, 20, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v27, 31, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[26:27], 2, v[26:27]
	v_add_co_u32 v26, vcc_lo, s6, v26
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v27, null, s7, v27, vcc_lo
	global_load_b32 v29, v[26:27], off
.LBB0_53:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v25
	global_atomic_cmpswap_b32 v0, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_53
; %bb.54:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[24:25], null, s35, 21, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v24, vcc_lo, s6, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s7, v25, vcc_lo
	global_load_b32 v27, v[24:25], off
.LBB0_55:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v26, v27, v23
	global_atomic_cmpswap_b32 v0, v[24:25], v[26:27], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v27
	v_mov_b32_e32 v27, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_55
; %bb.56:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[22:23], null, s35, 22, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v23, 31, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[22:23], 2, v[22:23]
	v_add_co_u32 v22, vcc_lo, s6, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v23, null, s7, v23, vcc_lo
	global_load_b32 v25, v[22:23], off
.LBB0_57:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v24, v25, v21
	global_atomic_cmpswap_b32 v0, v[22:23], v[24:25], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v25
	v_mov_b32_e32 v25, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_57
; %bb.58:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[20:21], null, s35, 23, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v20, vcc_lo, s6, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s7, v21, vcc_lo
	global_load_b32 v23, v[20:21], off
.LBB0_59:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v22, v23, v19
	global_atomic_cmpswap_b32 v0, v[20:21], v[22:23], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v23
	v_mov_b32_e32 v23, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_59
; %bb.60:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[18:19], null, s35, 24, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s6, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s7, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_61:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v17
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_61
; %bb.62:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[16:17], null, s35, 25, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s6, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s7, v17, vcc_lo
	global_load_b32 v19, v[16:17], off
.LBB0_63:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v18, v19, v15
	global_atomic_cmpswap_b32 v0, v[16:17], v[18:19], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v19
	v_mov_b32_e32 v19, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_63
; %bb.64:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[14:15], null, s35, 26, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v15, 31, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[14:15], 2, v[14:15]
	v_add_co_u32 v14, vcc_lo, s6, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s7, v15, vcc_lo
	global_load_b32 v17, v[14:15], off
.LBB0_65:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v13
	global_atomic_cmpswap_b32 v0, v[14:15], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_65
; %bb.66:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[12:13], null, s35, 27, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s6, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s7, v13, vcc_lo
	global_load_b32 v15, v[12:13], off
.LBB0_67:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v14, v15, v11
	global_atomic_cmpswap_b32 v0, v[12:13], v[14:15], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v15
	v_mov_b32_e32 v15, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_67
; %bb.68:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[10:11], null, s35, 28, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v11, 31, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_co_u32 v10, vcc_lo, s6, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s7, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_69:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v9
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_69
; %bb.70:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[8:9], null, s35, 29, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s6, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s7, v9, vcc_lo
	global_load_b32 v11, v[8:9], off
.LBB0_71:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v10, v11, v7
	global_atomic_cmpswap_b32 v0, v[8:9], v[10:11], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v11
	v_mov_b32_e32 v11, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_71
; %bb.72:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[6:7], null, s35, 30, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v7, 31, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_co_u32 v6, vcc_lo, s6, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, s7, v7, vcc_lo
	global_load_b32 v9, v[6:7], off
.LBB0_73:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v5
	global_atomic_cmpswap_b32 v0, v[6:7], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_73
; %bb.74:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 31, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s6, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s7, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_75:                               ; %atomicrmw.start
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
	s_cbranch_execnz .LBB0_75
; %bb.76:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
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
		.amdhsa_next_free_sgpr 51
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_vgpr, 228
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 23184
; TotalNumSgprs: 53
; NumVgprs: 228
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 53
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc128_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     228
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
