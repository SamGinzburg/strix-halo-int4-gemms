	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	v_mov_b32_e32 v242, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v13, 4, v242
	v_and_b32_e32 v15, 48, v13
	v_lshrrev_b32_e32 v2, 2, v242
	v_lshrrev_b32_e32 v14, 4, v242
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v16, 16, v14
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s26, 63
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
	s_lshr_b32 s10, s10, 26
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
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v17, 32, v14
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v18, 48, v14
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s26, s27, 48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
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
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v1, s31, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v2, s27, v14
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s39, s11
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s17, s17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s38, s10
	s_mov_b64 s[28:29], s[14:15]
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
	s_add_i32 s18, s31, 0x7f
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s2, s2, s19
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s30, s3, 6
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
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s18, s18, s3
.Ltmp19:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s5, s7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s30, v14
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s6
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s2, 8
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s48, s3, 6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s30, v16
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s7, s48, s31
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s31, v3
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v26, v1, v15, s7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s30, v17
	v_or_b32_e32 v6, s30, v18
.Ltmp20:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s17, s31, 63
.Ltmp21:
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s16, s27, s30
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v3, s30, v26
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v0, 15, v242
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s17, 63
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s31, v4
	v_cmp_gt_i32_e64 s5, s31, v5
	v_cmp_gt_i32_e64 s6, s31, v6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v20, v0, 4, v2
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v2, s30, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s16, s33, s16
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s16, v20
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v25, s26, v20
	s_lshl_b32 s34, s27, 4
	s_lshl_b32 s35, s27, 5
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s6, s6, s3
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s4, s4, s3
	s_and_b32 s5, s5, s3
	s_and_b32 s2, s2, s3
	s_cmpk_gt_i32 s17, 0x7f
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v27, s34, v20
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s49, s30, 64
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v28, s35, v20
	v_add_nc_u32_e32 v2, s16, v25
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v6, s49, v15
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v4, s16, v27
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v11, s49, v14
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v5, s16, v28
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v12, s49, v16
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	s_lshl_b32 s6, s27, 6
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v19, s49, v17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	s_add_i32 s16, s16, s6
	.loc	1 348 30 is_stmt 1              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v42, s49, v26
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s31, v11
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v29, s49, v18
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s5
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v43, s16, v20
	.loc	1 344 23 is_stmt 1              ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s31, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v44, s16, v27
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s6, s31, v19
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v45, s16, v28
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[7:10], v3, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[21:24], v1, s[36:39], 0 offen
	buffer_load_b128 v[30:33], v4, s[36:39], 0 offen
	buffer_load_b128 v[34:37], v5, s[36:39], 0 offen
	buffer_load_b128 v[38:41], v2, s[36:39], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v1, 0x80000000, v42, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s7, s31, v29
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v2, 0x80000000, v43, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s5, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v46, s16, v25
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v3, 0x80000000, v44, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s6, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v12, 0, v13
	v_cndmask_b32_e32 v4, 0x80000000, v45, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s7, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v6, 48, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v5, 0x80000000, v46, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[42:45], v1, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[46:49], v2, s[36:39], 0 offen
	buffer_load_b128 v[50:53], v3, s[36:39], 0 offen
	buffer_load_b128 v[54:57], v4, s[36:39], 0 offen
	buffer_load_b128 v[58:61], v5, s[36:39], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v2, 1, v242
	v_lshlrev_b32_e32 v3, 3, v242
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v4, 16, v0
	v_or_b32_e32 v5, 32, v0
	s_mov_b32 s16, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v1, 48, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s17, 0xbf
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v29, v13, v1
	v_lshrrev_b32_e32 v1, 1, v242
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v11, 0, v29
	s_waitcnt vmcnt(9)
	ds_store_b128 v11, v[7:10] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v12, v[21:24]
	s_waitcnt vmcnt(7)
	ds_store_b128 v12, v[30:33] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v12, v[34:37] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v12, v[38:41] offset:12288
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v11, v[42:45] offset:36864
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v12, v[46:49] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v12, v[50:53] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v12, v[54:57] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v12, v[58:61] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v7, 48, v3
	v_and_b32_e32 v0, 15, v242
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_b32_e32 v19, 0x70, v1
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v33, v0, 6, v7
	v_xor_b32_e32 v35, 16, v33
	v_xor_b32_e32 v36, 32, v33
	v_xor_b32_e32 v34, 48, v33
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr19
.LBB0_3:                                ; %Flow94
	s_load_b64 s[24:25], s[0:1], 0x20
	v_and_b32_e32 v7, 15, v242
	v_or_b32_e32 v4, s48, v4
	v_or_b32_e32 v5, s48, v5
	v_or_b32_e32 v6, s48, v6
	v_and_b32_e32 v0, 0xf0, v242
	v_or_b32_e32 v7, s48, v7
	s_ashr_i32 s50, s18, 7
	v_or_b32_e32 v102, s33, v242
	v_mul_lo_u32 v101, v4, s50
	v_mul_lo_u32 v99, v5, s50
	v_mul_lo_u32 v103, v7, s50
	v_mul_lo_u32 v254, v6, s50
	v_lshlrev_b32_e32 v22, 2, v0
	v_and_b32_e32 v21, 28, v2
	v_lshlrev_b32_e32 v24, 5, v242
	v_lshlrev_b32_e32 v23, 1, v0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s15, s17, 6
	v_dual_mov_b32 v66, 0 :: v_dual_and_b32 v19, 0x70, v1
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v2, 48, v3
	v_and_b32_e32 v0, 15, v242
	v_and_b32_e32 v1, 32, v24
	v_add_nc_u32_e32 v31, 0, v23
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_mov_b32_e32 v69, 0
	v_lshl_or_b32 v33, v0, 6, v2
	v_add3_u32 v9, 0, v22, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_mov_b32_e32 v3, s18
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v35, 16, v33
	v_xor_b32_e32 v36, 32, v33
	v_xor_b32_e32 v34, 48, v33
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_mov_b32_e32 v8, s23
	v_add_nc_u32_e32 v30, v9, v21
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v128, 0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_add_i32 s14, s49, 64
	s_mov_b32 s51, 1
	s_and_b32 s41, s13, 0xffff
	s_mov_b32 s40, s12
	s_and_b32 s45, s29, 0xffff
	s_mov_b32 s44, s28
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s6, 0, 0x9000
	s_add_i32 s7, 0, 0x4000
	s_add_i32 s15, s15, -3
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s4, s17, 6
	s_mov_b32 s5, s30
	s_mov_b32 s30, s49
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s49, s14, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_b32_e32 v0, 15, v242
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v9, s49, v15
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v10, s49, v26
	s_mov_b32 s1, s16
	.loc	1 348 22 is_stmt 0              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v82, s0, v33
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add3_u32 v32, s1, v19, v0
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v172, s0, v35
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s16, s5, 31
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s18, s49, s27
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s16, s16, 25
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s5, s5, s16
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s18, s18, s33
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s16, s5, 7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[9:12], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v32 offset:3328
	ds_load_u8 v38, v32 offset:3072
	ds_load_u8 v39, v32 offset:3840
	ds_load_u8 v40, v32 offset:3584
	ds_load_u8 v41, v32 offset:2304
	ds_load_u8 v42, v32 offset:2048
	ds_load_u8 v43, v32 offset:2816
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[53:56], v82
	ds_load_b128 v[57:60], v172
	ds_load_b128 v[144:147], v82 offset:1024
	ds_load_b128 v[148:151], v172 offset:1024
	ds_load_b128 v[160:163], v82 offset:2048
	ds_load_b128 v[164:167], v172 offset:2048
	ds_load_b128 v[184:187], v82 offset:3072
	ds_load_b128 v[188:191], v172 offset:3072
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s19, s16, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s16, s50
	s_cselect_b32 s5, -1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v32 offset:2560
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v32 offset:1280
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	v_lshl_or_b32 v64, v39, 16, v37
	ds_load_u8 v39, v32 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v38, v38, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v38, 16, v41
	ds_load_u8 v37, v32 offset:1024
	ds_load_u8 v38, v32 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v39, v32 offset:256
	v_perm_b32 v37, v37, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v38, 16, v37
	ds_load_u8 v37, v32
	ds_load_u8 v38, v32 offset:768
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v37, v39, 0xc0c0004
	ds_load_u8 v39, v32 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v39, v32 offset:7424
	v_lshl_or_b32 v61, v38, 16, v37
	ds_load_u8 v37, v32 offset:7168
	ds_load_u8 v38, v32 offset:7936
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v37, v39, 0xc0c0004
	ds_load_u8 v39, v32 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v39, v32 offset:6400
	ds_load_u8 v40, v32 offset:6144
	v_lshl_or_b32 v171, v38, 16, v37
	ds_load_u8 v37, v32 offset:5376
	ds_load_u8 v38, v32 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v32 offset:6912
	ds_load_u8 v41, v32 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v170, v40, 16, v39
	ds_load_u8 v38, v32 offset:5888
	ds_load_u8 v39, v32 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	v_lshl_or_b32 v169, v38, 16, v37
	ds_load_u8 v37, v32 offset:4352
	ds_load_u8 v38, v32 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v32 offset:4864
	ds_load_u8 v39, v32 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v38, 16, v37
	ds_load_u8 v37, v32 offset:3456
	ds_load_u8 v38, v32 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v32 offset:3968
	ds_load_u8 v39, v32 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v39, v32 offset:2432
	ds_load_u8 v40, v32 offset:2176
	v_lshl_or_b32 v179, v38, 16, v37
	ds_load_u8 v37, v32 offset:1408
	ds_load_u8 v38, v32 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v32 offset:2944
	ds_load_u8 v41, v32 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v178, v40, 16, v39
	ds_load_u8 v38, v32 offset:1920
	ds_load_u8 v39, v32 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	v_lshl_or_b32 v177, v38, 16, v37
	ds_load_u8 v37, v32 offset:384
	ds_load_u8 v38, v32 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v32 offset:896
	ds_load_u8 v39, v32 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v38, 16, v37
	ds_load_u8 v37, v32 offset:7552
	ds_load_u8 v38, v32 offset:7296
	v_wmma_i32_16x16x16_iu8 v[45:52], v[176:179], v[53:56], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[176:179], v[144:147], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[152:159], v[176:179], v[160:163], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v32 offset:8064
	ds_load_u8 v39, v32 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v39, v32 offset:6528
	ds_load_u8 v40, v32 offset:6272
	v_lshl_or_b32 v183, v38, 16, v37
	ds_load_u8 v37, v32 offset:5504
	ds_load_u8 v38, v32 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v32 offset:7040
	ds_load_u8 v41, v32 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v182, v40, 16, v39
	ds_load_u8 v38, v32 offset:6016
	ds_load_u8 v39, v32 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	v_lshl_or_b32 v181, v38, 16, v37
	ds_load_u8 v37, v32 offset:4480
	ds_load_u8 v38, v32 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v32 offset:4992
	ds_load_u8 v39, v32 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v180, v38, 16, v37
	v_wmma_i32_16x16x16_iu8 v[37:44], v[61:64], v[53:56], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[180:183], v[57:60], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[168:171], v[57:60], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[61:64], v[144:147], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[180:183], v[148:151], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[152:159], v[180:183], v[164:167], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[168:171], v[148:151], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[61:64], v[160:163], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[144:151], v[168:171], v[164:167], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[160:167], v[61:64], v[184:187], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v61, v32 offset:11520
	ds_load_u8 v62, v32 offset:11264
	v_wmma_i32_16x16x16_iu8 v[160:167], v[168:171], v[188:191], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[168:175], v[176:179], v[184:187], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[168:175], v[180:183], v[188:191], v[168:175] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v32 offset:12032
	ds_load_u8 v63, v32 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v32 offset:10496
	ds_load_u8 v64, v32 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v32 offset:11008
	ds_load_u8 v82, v32 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v32 offset:9472
	ds_load_u8 v62, v32 offset:9216
	v_lshl_or_b32 v63, v82, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v32 offset:9984
	ds_load_u8 v82, v32 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v82, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v32 offset:8448
	ds_load_u8 v82, v32 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v82, v61, 0xc0c0004
	ds_load_u8 v82, v32 offset:8960
	ds_load_u8 v176, v32 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v176, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v82, 16, v61
	ds_load_u8 v82, v32 offset:11648
	ds_load_u8 v176, v32 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v176, v82, 0xc0c0004
	ds_load_u8 v176, v32 offset:12160
	ds_load_u8 v177, v32 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	ds_load_u8 v177, v32 offset:10624
	ds_load_u8 v178, v32 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	ds_load_u8 v178, v32 offset:11136
	ds_load_u8 v179, v32 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	v_lshl_or_b32 v179, v176, 16, v82
	ds_load_u8 v82, v32 offset:9600
	ds_load_u8 v176, v32 offset:9344
	v_lshl_or_b32 v178, v178, 16, v177
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v176, v82, 0xc0c0004
	ds_load_u8 v176, v32 offset:10112
	ds_load_u8 v177, v32 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v176, 16, v82
	ds_load_u8 v82, v32 offset:8576
	ds_load_u8 v176, v32 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v176, v82, 0xc0c0004
	ds_load_u8 v176, v32 offset:9088
	ds_load_u8 v180, v32 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v180, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v176, 16, v82
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v82, s0, v36
	ds_load_b128 v[180:183], v82
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[61:64], v[180:183], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[176:179], v[180:183], v[45:52] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[180:183], v82 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[61:64], v[180:183], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[176:179], v[180:183], v[136:143] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[180:183], v82 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[144:151], v[61:64], v[180:183], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[152:159], v[176:179], v[180:183], v[152:159] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[180:183], v82 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[160:167], v[61:64], v[180:183], v[160:167] neg_lo:[1,1,0]
	ds_load_u8 v61, v32 offset:15616
	ds_load_u8 v62, v32 offset:15360
	v_wmma_i32_16x16x16_iu8 v[168:175], v[176:179], v[180:183], v[168:175] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v32 offset:16128
	ds_load_u8 v63, v32 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v32 offset:14592
	ds_load_u8 v64, v32 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v32 offset:15104
	ds_load_u8 v82, v32 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v32 offset:13568
	ds_load_u8 v62, v32 offset:13312
	v_lshl_or_b32 v63, v82, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v32 offset:14080
	ds_load_u8 v82, v32 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v82, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v32 offset:12544
	ds_load_u8 v82, v32 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v82, v61, 0xc0c0004
	ds_load_u8 v82, v32 offset:13056
	ds_load_u8 v176, v32 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v176, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v82, 16, v61
	ds_load_u8 v82, v32 offset:15744
	ds_load_u8 v176, v32 offset:15488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v176, v82, 0xc0c0004
	ds_load_u8 v176, v32 offset:16256
	ds_load_u8 v177, v32 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	ds_load_u8 v177, v32 offset:14720
	ds_load_u8 v178, v32 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	ds_load_u8 v178, v32 offset:15232
	ds_load_u8 v179, v32 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	v_lshl_or_b32 v179, v176, 16, v82
	ds_load_u8 v82, v32 offset:13696
	ds_load_u8 v176, v32 offset:13440
	v_lshl_or_b32 v178, v178, 16, v177
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v176, v82, 0xc0c0004
	ds_load_u8 v176, v32 offset:14208
	ds_load_u8 v177, v32 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v176, 16, v82
	ds_load_u8 v82, v32 offset:12672
	ds_load_u8 v176, v32 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v176, v82, 0xc0c0004
	ds_load_u8 v176, v32 offset:13184
	ds_load_u8 v32, v32 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v32, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v176, v32, 16, v82
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v82, s49, v14
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v32, s0, v34
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v82
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v82, s49, v16
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[180:183], v32
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s31, v82
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v82, s49, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s1, s31, v82
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v82, s49, v18
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s31, v82
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v82, v102, s19, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s19, s51, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[61:64], v[180:183], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[176:179], v[180:183], v[45:52] neg_lo:[1,1,0]
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v82, 0x80000000, v82, s5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[180:183], v32 offset:1024
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s19, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s51, s19, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v82, v82, s[44:47], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[61:64], v[180:183], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[176:179], v[180:183], v[136:143] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[180:183], v32 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[144:151], v[61:64], v[180:183], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[152:159], v[176:179], v[180:183], v[152:159] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[180:183], v32 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[160:167], v[61:64], v[180:183], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[168:175], v[176:179], v[180:183], v[168:175] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v64, v139
	v_cvt_f32_i32_e32 v139, v143
	v_cvt_f32_i32_e32 v143, v147
	v_cvt_f32_i32_e32 v147, v151
	v_cvt_f32_i32_e32 v151, v155
	v_cvt_f32_i32_e32 v155, v159
	v_cvt_f32_i32_e32 v159, v163
	v_cvt_f32_i32_e32 v163, v167
	v_cvt_f32_i32_e32 v167, v171
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v171, s18, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v32, v175
	v_cvt_f32_i32_e32 v61, v136
	v_cvt_f32_i32_e32 v136, v140
	v_cvt_f32_i32_e32 v140, v144
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v175, 0x80000000, v171, s0
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v171, s18, v28
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v144, v148
	v_cvt_f32_i32_e32 v148, v152
	v_cvt_f32_i32_e32 v152, v156
	v_cvt_f32_i32_e32 v156, v160
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v179, 0x80000000, v171, s1
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v171, s18, v25
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v160, v164
	v_cvt_f32_i32_e32 v164, v168
	v_cvt_f32_i32_e32 v168, v172
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v172, v101, s16, 1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v183, 0x80000000, v171, s4
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v171, v103, s16, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v62, v137
	v_cvt_f32_i32_e32 v137, v141
	v_cvt_f32_i32_e32 v141, v145
	v_cvt_f32_i32_e32 v145, v149
	v_cvt_f32_i32_e32 v149, v153
	v_cvt_f32_i32_e32 v153, v157
	v_cvt_f32_i32_e32 v157, v161
	v_cvt_f32_i32_e32 v161, v165
	v_cvt_f32_i32_e32 v165, v169
	v_cvt_f32_i32_e32 v169, v173
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v173, v99, s16, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v63, v138
	v_cvt_f32_i32_e32 v138, v142
	v_cvt_f32_i32_e32 v142, v146
	v_cvt_f32_i32_e32 v146, v150
	v_cvt_f32_i32_e32 v150, v154
	v_cvt_f32_i32_e32 v154, v158
	v_cvt_f32_i32_e32 v158, v162
	v_cvt_f32_i32_e32 v162, v166
	v_cvt_f32_i32_e32 v166, v170
	v_cvt_f32_i32_e32 v170, v174
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v174, v254, s16, 1
	v_cndmask_b32_e64 v171, 0x80000000, v171, s5
	v_cndmask_b32_e64 v172, 0x80000000, v172, s5
	v_cndmask_b32_e64 v173, 0x80000000, v173, s5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s0, s51, 12
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v174, 0x80000000, v174, s5
	s_clause 0x3
	buffer_load_u16 v203, v171, s[40:43], 0 offen
	buffer_load_u16 v204, v172, s[40:43], 0 offen
	buffer_load_u16 v205, v173, s[40:43], 0 offen
	buffer_load_u16 v206, v174, s[40:43], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s1, s0, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s0, s51, 14
	s_mov_b32 s16, s7
	s_add_i32 s7, s0, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s4, s17, 1
	s_mov_b32 s0, s6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s6, s1, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s17, s15
	s_mov_b32 s17, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v30, v82 offset:40960
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v82, s18, v20
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[171:174], v82, s[36:39], 0 offen
	buffer_load_b128 v[175:178], v175, s[36:39], 0 offen
	buffer_load_b128 v[179:182], v179, s[36:39], 0 offen
	buffer_load_b128 v[183:186], v183, s[36:39], 0 offen
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[187:190], v31 offset:40960
	ds_load_b128 v[191:194], v31 offset:40976
	ds_load_b128 v[195:198], v31 offset:41472
	ds_load_b128 v[199:202], v31 offset:41488
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v82, s1, v29
	ds_store_b128 v82, v[9:12] offset:32768
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v10, 16, v203
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v11, 16, v204
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v9, s7, v13
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v82, 16, v206
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v9, v[171:174]
	s_waitcnt vmcnt(2)
	ds_store_b128 v9, v[175:178] offset:4096
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(5)
	v_dual_mul_f32 v213, v193, v11 :: v_dual_lshlrev_b32 v12, 16, v205
	v_mul_f32_e32 v171, v187, v10
	v_mul_f32_e32 v172, v188, v10
	v_mul_f32_e32 v173, v189, v10
	v_dual_mul_f32 v174, v190, v10 :: v_dual_mul_f32 v175, v187, v11
	v_mul_f32_e32 v176, v188, v11
	v_mul_f32_e32 v177, v189, v11
	v_dual_mul_f32 v178, v190, v11 :: v_dual_mul_f32 v203, v187, v12
	v_dual_mul_f32 v187, v187, v82 :: v_dual_mul_f32 v204, v188, v12
	v_mul_f32_e32 v205, v189, v12
	v_mul_f32_e32 v206, v190, v12
	v_dual_mul_f32 v188, v188, v82 :: v_dual_mul_f32 v215, v191, v12
	v_mul_f32_e32 v189, v189, v82
	v_dual_mul_f32 v190, v190, v82 :: v_dual_mul_f32 v217, v193, v12
	v_mul_f32_e32 v207, v191, v10
	s_waitcnt lgkmcnt(4)
	v_dual_mul_f32 v208, v192, v10 :: v_dual_mul_f32 v223, v195, v11
	v_mul_f32_e32 v209, v193, v10
	v_dual_mul_f32 v210, v194, v10 :: v_dual_mul_f32 v225, v197, v11
	v_mul_f32_e32 v211, v191, v11
	v_dual_mul_f32 v212, v192, v11 :: v_dual_mul_f32 v193, v193, v82
	v_dual_mul_f32 v214, v194, v11 :: v_dual_mul_f32 v219, v195, v10
	v_dual_mul_f32 v216, v192, v12 :: v_dual_mul_f32 v221, v197, v10
	v_dual_mul_f32 v218, v194, v12 :: v_dual_mul_f32 v191, v191, v82
	v_dual_mul_f32 v192, v192, v82 :: v_dual_mul_f32 v227, v195, v12
	v_dual_mul_f32 v194, v194, v82 :: v_dual_mul_f32 v229, v197, v12
	v_mul_f32_e32 v220, v196, v10
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v222, v198, v10 :: v_dual_mul_f32 v235, v200, v11
	v_dual_mul_f32 v224, v196, v11 :: v_dual_mul_f32 v197, v197, v82
	v_dual_mul_f32 v226, v198, v11 :: v_dual_mul_f32 v231, v199, v10
	v_dual_mul_f32 v228, v196, v12 :: v_dual_mul_f32 v233, v201, v10
	v_dual_mul_f32 v230, v198, v12 :: v_dual_mul_f32 v195, v195, v82
	v_dual_mul_f32 v196, v196, v82 :: v_dual_mul_f32 v237, v199, v12
	v_dual_mul_f32 v198, v198, v82 :: v_dual_mul_f32 v239, v201, v12
	v_dual_mul_f32 v232, v200, v10 :: v_dual_fmac_f32 v69, v174, v40
	v_dual_mul_f32 v10, v202, v10 :: v_dual_fmac_f32 v83, v175, v53
	v_mul_f32_e32 v234, v199, v11
	v_dual_mul_f32 v236, v201, v11 :: v_dual_fmac_f32 v67, v172, v38
	v_dual_mul_f32 v11, v202, v11 :: v_dual_mul_f32 v238, v200, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v85, v177, v55 :: v_dual_mul_f32 v12, v202, v12
	v_fmac_f32_e32 v71, v208, v42
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v199, v199, v82
	v_dual_mul_f32 v200, v200, v82 :: v_dual_fmac_f32 v73, v210, v44
	v_mul_f32_e32 v201, v201, v82
	v_dual_mul_f32 v82, v202, v82 :: v_dual_fmac_f32 v87, v211, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v66, v171, v37 :: v_dual_fmac_f32 v75, v220, v46
	v_dual_fmac_f32 v68, v173, v39 :: v_dual_fmac_f32 v77, v222, v48
	v_dual_fmac_f32 v70, v207, v41 :: v_dual_fmac_f32 v79, v232, v50
	v_dual_fmac_f32 v72, v209, v43 :: v_dual_fmac_f32 v81, v10, v52
	v_dual_fmac_f32 v74, v219, v45 :: v_dual_fmac_f32 v89, v213, v59
	v_dual_fmac_f32 v76, v221, v47 :: v_dual_fmac_f32 v91, v223, v61
	v_dual_fmac_f32 v78, v231, v49 :: v_dual_fmac_f32 v93, v225, v63
	v_dual_fmac_f32 v80, v233, v51 :: v_dual_fmac_f32 v95, v234, v136
	v_dual_fmac_f32 v84, v176, v54 :: v_dual_fmac_f32 v107, v206, v143
	v_dual_fmac_f32 v86, v178, v56 :: v_dual_fmac_f32 v97, v236, v138
	v_dual_fmac_f32 v88, v212, v58 :: v_dual_fmac_f32 v111, v218, v147
	v_dual_fmac_f32 v90, v214, v60 :: v_dual_fmac_f32 v105, v204, v141
	v_dual_fmac_f32 v92, v224, v62 :: v_dual_fmac_f32 v115, v230, v151
	v_dual_fmac_f32 v94, v226, v64 :: v_dual_fmac_f32 v109, v216, v145
	v_dual_fmac_f32 v96, v235, v137 :: v_dual_fmac_f32 v119, v12, v155
	v_dual_fmac_f32 v98, v11, v139 :: v_dual_fmac_f32 v113, v228, v149
	v_dual_fmac_f32 v104, v203, v140 :: v_dual_fmac_f32 v117, v238, v153
	v_dual_fmac_f32 v106, v205, v142 :: v_dual_fmac_f32 v121, v188, v157
	v_dual_fmac_f32 v108, v215, v144 :: v_dual_fmac_f32 v123, v190, v159
	v_dual_fmac_f32 v110, v217, v146 :: v_dual_fmac_f32 v125, v192, v161
	v_dual_fmac_f32 v112, v227, v148 :: v_dual_fmac_f32 v127, v194, v163
	v_dual_fmac_f32 v114, v229, v150 :: v_dual_fmac_f32 v129, v195, v164
	v_fmac_f32_e32 v116, v237, v152
	v_fmac_f32_e32 v118, v239, v154
	v_dual_fmac_f32 v120, v187, v156 :: v_dual_fmac_f32 v131, v197, v166
	v_dual_fmac_f32 v122, v189, v158 :: v_dual_fmac_f32 v133, v199, v168
	v_dual_fmac_f32 v124, v191, v160 :: v_dual_fmac_f32 v135, v201, v170
	v_fmac_f32_e32 v126, v193, v162
	v_fmac_f32_e32 v130, v196, v165
	v_fmac_f32_e32 v132, v198, v167
	v_fmac_f32_e32 v134, v200, v169
	v_fmac_f32_e32 v128, v82, v32
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v9, v[179:182] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[183:186] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s6, 0, 0x9000
	s_add_i32 s7, 0, 0x4000
.LBB0_7:                                ; %._crit_edge
	v_dual_mov_b32 v245, 0 :: v_dual_and_b32 v0, 15, v242
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v229, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v38, v19, v0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v162, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v30, s16, v38
	s_mov_b32 s16, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v30 offset:2304
	ds_load_u8 v43, v30 offset:2048
	ds_load_u8 v44, v30 offset:2816
	ds_load_u8 v45, v30 offset:2560
	ds_load_u8 v46, v30 offset:1280
	ds_load_u8 v47, v30 offset:1024
	ds_load_u8 v48, v30 offset:1792
	ds_load_u8 v49, v30 offset:1536
	ds_load_u8 v56, v30 offset:3968
	ds_load_u8 v57, v30 offset:3712
	ds_load_u8 v58, v30 offset:3456
	ds_load_u8 v59, v30 offset:3200
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v25, s0, v34
	v_add_nc_u32_e32 v17, s0, v36
	v_add_nc_u32_e32 v31, s0, v35
	ds_load_b128 v[1:4], v25 offset:1024
	ds_load_b128 v[26:29], v25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v32, v30 offset:3328
	ds_load_u8 v39, v30 offset:3072
	ds_load_u8 v40, v30 offset:3840
	ds_load_u8 v41, v30 offset:3584
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[5:8], v17 offset:3072
	ds_load_b128 v[9:12], v17 offset:2048
	ds_load_b128 v[13:16], v17 offset:1024
	ds_load_b128 v[136:139], v17
	ds_load_b128 v[17:20], v31 offset:1024
	ds_load_b128 v[140:143], v31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v43, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v44, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v45, v49, v48, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v55, s0, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	v_lshl_or_b32 v162, v43, 16, v42
	v_lshl_or_b32 v161, v45, 16, v44
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v32, v39, v32, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	ds_load_u8 v40, v30 offset:256
	ds_load_u8 v41, v30
	ds_load_u8 v50, v30 offset:768
	ds_load_u8 v51, v30 offset:512
	ds_load_u8 v60, v30 offset:2944
	ds_load_u8 v61, v30 offset:2688
	ds_load_u8 v62, v30 offset:2432
	ds_load_u8 v63, v30 offset:2176
	v_lshl_or_b32 v163, v39, 16, v32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v40, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v63, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v160, v40, 16, v39
	v_dual_mov_b32 v46, s23 :: v_dual_mov_b32 v45, s22
	ds_load_u8 v47, v30 offset:7424
	ds_load_u8 v48, v30 offset:7168
	ds_load_u8 v49, v30 offset:7936
	ds_load_u8 v50, v30 offset:7680
	ds_load_u8 v51, v30 offset:6400
	ds_load_u8 v52, v30 offset:6144
	ds_load_u8 v53, v30 offset:6912
	ds_load_u8 v54, v30 offset:6656
	ds_load_u8 v157, v30 offset:5376
	ds_load_u8 v158, v30 offset:5120
	ds_load_u8 v159, v30 offset:5888
	ds_load_u8 v164, v30 offset:5632
	ds_load_u8 v168, v30 offset:8064
	ds_load_u8 v169, v30 offset:7808
	ds_load_u8 v170, v30 offset:7552
	ds_load_u8 v171, v30 offset:7296
	ds_load_u8 v208, v30 offset:15616
	ds_load_u8 v209, v30 offset:15360
	v_mov_b32_e32 v40, s17
	ds_load_u8 v64, v30 offset:1920
	ds_load_u8 v82, v30 offset:1664
	ds_load_u8 v152, v30 offset:1408
	ds_load_u8 v153, v30 offset:1152
	ds_load_u8 v32, v30 offset:896
	ds_load_u8 v154, v30 offset:640
	ds_load_u8 v155, v30 offset:384
	ds_load_u8 v156, v30 offset:128
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[144:147], v55 offset:1024
	ds_load_b128 v[148:151], v55
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v178, v30 offset:6016
	ds_load_u8 v179, v30 offset:5760
	ds_load_u8 v180, v30 offset:5504
	ds_load_u8 v181, v30 offset:5248
	v_mov_b32_e32 v42, s19
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[192:195], v31 offset:3072
	ds_load_b128 v[196:199], v31 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v44, s21
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v176, v52, v51, 0xc0c0004
	v_mov_b32_e32 v43, s20
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v177, v54, v53, 0xc0c0004
	v_mov_b32_e32 v41, s18
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	v_mov_b32_e32 v39, s16
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v158, v164, v159, 0xc0c0004
	v_perm_b32 v165, v48, v47, 0xc0c0004
	ds_load_u8 v159, v30 offset:11520
	ds_load_u8 v182, v30 offset:11264
	ds_load_u8 v183, v30 offset:12032
	ds_load_u8 v184, v30 offset:11776
	ds_load_u8 v188, v30 offset:4992
	ds_load_u8 v189, v30 offset:4736
	ds_load_u8 v190, v30 offset:4480
	ds_load_u8 v191, v30 offset:4224
	v_perm_b32 v166, v50, v49, 0xc0c0004
	ds_load_u8 v47, v30 offset:4352
	ds_load_u8 v48, v30 offset:4096
	ds_load_u8 v49, v30 offset:4864
	ds_load_u8 v50, v30 offset:4608
	ds_load_u8 v172, v30 offset:7040
	ds_load_u8 v173, v30 offset:6784
	ds_load_u8 v174, v30 offset:6528
	ds_load_u8 v175, v30 offset:6272
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v231, v209, v208, 0xc0c0004
	ds_load_u8 v208, v30 offset:12544
	ds_load_u8 v209, v30 offset:12288
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v32, v154, v32, 0xc0c0004
	v_lshl_or_b32 v167, v166, 16, v165
	v_lshl_or_b32 v166, v177, 16, v176
	v_lshl_or_b32 v165, v158, 16, v157
	ds_load_u8 v157, v30 offset:10496
	ds_load_u8 v158, v30 offset:10240
	ds_load_u8 v176, v30 offset:11008
	ds_load_u8 v177, v30 offset:10752
	ds_load_u8 v212, v30 offset:12160
	ds_load_u8 v213, v30 offset:11904
	ds_load_u8 v214, v30 offset:11648
	ds_load_u8 v215, v30 offset:11392
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v154, v179, v178, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v159, v182, v159, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v164, v48, v47, 0xc0c0004
	v_perm_b32 v182, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v185, v50, v49, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[47:54], v[160:163], v[148:151], v[39:46] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v203, v182, 16, v159
	v_lshl_or_b32 v164, v185, 16, v164
	ds_load_u8 v183, v30 offset:9472
	ds_load_u8 v184, v30 offset:9216
	ds_load_u8 v185, v30 offset:9984
	ds_load_u8 v186, v30 offset:9728
	ds_load_u8 v187, v30 offset:8448
	ds_load_u8 v200, v30 offset:8192
	ds_load_u8 v201, v30 offset:8960
	ds_load_u8 v204, v30 offset:8704
	ds_load_u8 v216, v30 offset:11136
	ds_load_u8 v217, v30 offset:10880
	ds_load_u8 v218, v30 offset:10624
	ds_load_u8 v219, v30 offset:10368
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v158, v177, v176, 0xc0c0004
	v_perm_b32 v241, v209, v208, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[47:54], v[164:167], v[140:143], v[47:54] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v202, v158, 16, v157
	ds_load_u8 v31, v30 offset:10112
	ds_load_u8 v157, v30 offset:9856
	ds_load_u8 v158, v30 offset:9600
	ds_load_u8 v159, v30 offset:9344
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v176, v184, v183, 0xc0c0004
	ds_load_u8 v182, v30 offset:9088
	ds_load_u8 v183, v30 offset:8832
	ds_load_u8 v220, v30 offset:8576
	ds_load_u8 v221, v30 offset:8320
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v177, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v184, v200, v187, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v185, v204, v201, 0xc0c0004
	v_lshl_or_b32 v201, v177, 16, v176
	ds_load_u8 v176, v30 offset:16128
	ds_load_u8 v177, v30 offset:15872
	v_lshl_or_b32 v200, v185, 16, v184
	ds_load_u8 v210, v30 offset:14592
	ds_load_u8 v211, v30 offset:14336
	ds_load_u8 v222, v30 offset:15104
	ds_load_u8 v223, v30 offset:14848
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[204:207], v55 offset:3072
	ds_load_b128 v[184:187], v55 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v55, v30 offset:13568
	ds_load_u8 v224, v30 offset:13312
	ds_load_u8 v225, v30 offset:14080
	ds_load_u8 v226, v30 offset:13824
	ds_load_u8 v227, v30 offset:16256
	ds_load_u8 v228, v30 offset:16000
	ds_load_u8 v229, v30 offset:15744
	ds_load_u8 v230, v30 offset:15488
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v31, v157, v31, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[47:54], v[200:203], v[136:139], v[47:54] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v224, v224, v55, 0xc0c0004
	v_perm_b32 v235, v211, v210, 0xc0c0004
	v_perm_b32 v176, v177, v176, 0xc0c0004
	v_perm_b32 v222, v223, v222, 0xc0c0004
	ds_load_u8 v210, v30 offset:13056
	ds_load_u8 v211, v30 offset:12800
	ds_load_u8 v223, v30 offset:14208
	ds_load_u8 v236, v30 offset:13952
	ds_load_u8 v237, v30 offset:13696
	ds_load_u8 v238, v30 offset:13440
	ds_load_u8 v177, v30 offset:15232
	ds_load_u8 v232, v30 offset:14976
	ds_load_u8 v233, v30 offset:14720
	ds_load_u8 v234, v30 offset:14464
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v225, v226, v225, 0xc0c0004
	ds_load_u8 v226, v30 offset:13184
	ds_load_u8 v239, v30 offset:12928
	ds_load_u8 v240, v30 offset:12672
	ds_load_u8 v30, v30 offset:12416
	v_perm_b32 v55, v59, v58, 0xc0c0004
	v_perm_b32 v58, v61, v60, 0xc0c0004
	v_perm_b32 v59, v153, v152, 0xc0c0004
	v_perm_b32 v60, v82, v64, 0xc0c0004
	v_perm_b32 v61, v156, v155, 0xc0c0004
	v_perm_b32 v64, v169, v168, 0xc0c0004
	v_perm_b32 v82, v175, v174, 0xc0c0004
	v_perm_b32 v152, v173, v172, 0xc0c0004
	v_lshl_or_b32 v209, v60, 16, v59
	v_lshl_or_b32 v208, v32, 16, v61
	v_perm_b32 v32, v171, v170, 0xc0c0004
	v_perm_b32 v153, v181, v180, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v63, v211, v210, 0xc0c0004
	v_lshl_or_b32 v211, v56, 16, v55
	v_lshl_or_b32 v210, v58, 16, v57
	v_perm_b32 v155, v191, v190, 0xc0c0004
	v_perm_b32 v156, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v168, v239, v226, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[55:62], v[208:211], v[148:151], v[39:46] neg_lo:[1,1,0]
	v_lshl_or_b32 v151, v64, 16, v32
	v_lshl_or_b32 v150, v152, 16, v82
	v_lshl_or_b32 v149, v154, 16, v153
	v_lshl_or_b32 v148, v156, 16, v155
	v_perm_b32 v32, v215, v214, 0xc0c0004
	v_perm_b32 v64, v213, v212, 0xc0c0004
	v_perm_b32 v82, v219, v218, 0xc0c0004
	v_perm_b32 v152, v217, v216, 0xc0c0004
	v_perm_b32 v153, v159, v158, 0xc0c0004
	v_perm_b32 v154, v221, v220, 0xc0c0004
	v_perm_b32 v155, v183, v182, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[55:62], v[148:151], v[140:143], v[55:62] neg_lo:[1,1,0]
	v_lshl_or_b32 v143, v64, 16, v32
	v_lshl_or_b32 v142, v152, 16, v82
	v_lshl_or_b32 v141, v31, 16, v153
	v_lshl_or_b32 v140, v155, 16, v154
	v_lshl_or_b32 v212, v63, 16, v241
	v_perm_b32 v31, v230, v229, 0xc0c0004
	v_perm_b32 v32, v228, v227, 0xc0c0004
	v_perm_b32 v63, v234, v233, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[55:62], v[140:143], v[136:139], v[55:62] neg_lo:[1,1,0]
	v_perm_b32 v64, v232, v177, 0xc0c0004
	v_perm_b32 v82, v238, v237, 0xc0c0004
	v_perm_b32 v136, v236, v223, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v30, v240, 0xc0c0004
	v_lshl_or_b32 v215, v176, 16, v231
	v_lshl_or_b32 v214, v222, 16, v235
	v_lshl_or_b32 v213, v225, 16, v224
	v_lshl_or_b32 v139, v32, 16, v31
	v_lshl_or_b32 v138, v64, 16, v63
	v_lshl_or_b32 v137, v136, 16, v82
	v_lshl_or_b32 v136, v168, 16, v30
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[216:219], v25 offset:3072
	ds_load_b128 v[220:223], v25 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[152:159], v[160:163], v[144:147], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[47:54], v[212:215], v[26:29], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[55:62], v[136:139], v[26:29], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[208:211], v[144:147], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[168:175], v[160:163], v[184:187], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[176:183], v[208:211], v[184:187], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[184:191], v[160:163], v[204:207], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[208:211], v[204:207], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[152:159], v[164:167], v[17:20], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[148:151], v[17:20], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[168:175], v[164:167], v[196:199], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[176:183], v[148:151], v[196:199], v[176:183] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[184:191], v[164:167], v[192:195], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[148:151], v[192:195], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[152:159], v[200:203], v[13:16], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[140:143], v[13:16], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[168:175], v[200:203], v[9:12], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[176:183], v[140:143], v[9:12], v[176:183] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[184:191], v[200:203], v[5:8], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[140:143], v[5:8], v[39:46] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[152:159], v[212:215], v[1:4], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[136:139], v[1:4], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[168:175], v[212:215], v[220:223], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[176:183], v[136:139], v[220:223], v[176:183] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[184:191], v[212:215], v[216:219], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[136:139], v[216:219], v[39:46] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v202, v48
	v_cvt_f32_i32_e32 v203, v49
	v_cvt_f32_i32_e32 v204, v50
	v_cvt_f32_i32_e32 v228, v51
	v_cvt_f32_i32_e32 v229, v52
	v_cvt_f32_i32_e32 v250, v53
	v_cvt_f32_i32_e32 v251, v54
	v_cvt_f32_i32_e32 v252, v55
	v_cvt_f32_i32_e32 v253, v56
	v_cvt_f32_i32_e32 v37, v57
	v_cvt_f32_i32_e32 v192, v58
	v_cvt_f32_i32_e32 v205, v59
	v_cvt_f32_i32_e32 v166, v60
	v_cvt_f32_i32_e32 v167, v61
	v_cvt_f32_i32_e32 v230, v62
	v_cvt_f32_i32_e32 v231, v152
	v_cvt_f32_i32_e32 v232, v153
	v_cvt_f32_i32_e32 v233, v154
	v_cvt_f32_i32_e32 v234, v155
	v_cvt_f32_i32_e32 v235, v156
	v_cvt_f32_i32_e32 v196, v157
	v_cvt_f32_i32_e32 v197, v158
	v_cvt_f32_i32_e32 v195, v159
	v_cvt_f32_i32_e32 v236, v25
	v_cvt_f32_i32_e32 v237, v26
	v_cvt_f32_i32_e32 v238, v27
	v_cvt_f32_i32_e32 v239, v28
	v_cvt_f32_i32_e32 v240, v29
	v_cvt_f32_i32_e32 v241, v30
	v_cvt_f32_i32_e32 v243, v31
	v_cvt_f32_i32_e32 v244, v32
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v193, v174
	v_cvt_f32_i32_e32 v194, v175
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v198, v179
	v_cvt_f32_i32_e32 v199, v180
	v_cvt_f32_i32_e32 v201, v181
	v_cvt_f32_i32_e32 v182, v182
	v_cvt_f32_i32_e32 v255, v183
	v_cvt_f32_i32_e32 v147, v184
	v_cvt_f32_i32_e32 v148, v185
	v_cvt_f32_i32_e32 v149, v186
	v_cvt_f32_i32_e32 v150, v187
	v_cvt_f32_i32_e32 v151, v188
	v_cvt_f32_i32_e32 v152, v189
	v_cvt_f32_i32_e32 v153, v190
	v_cvt_f32_i32_e32 v154, v191
	v_cvt_f32_i32_e32 v155, v39
	v_cvt_f32_i32_e32 v184, v40
	v_cvt_f32_i32_e32 v157, v41
	v_cvt_f32_i32_e32 v158, v42
	v_cvt_f32_i32_e32 v159, v43
	v_cvt_f32_i32_e32 v160, v44
	v_cvt_f32_i32_e32 v161, v45
	v_cvt_f32_i32_e32 v162, v46
	v_cvt_f32_i32_e32 v156, v47
.LBB0_9:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 25
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s30, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s0, s27
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s50
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v103, s0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v102, s1, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v3, v101, s0, 1
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_add_lshl_u32 v4, v99, s0, 1
	v_add_lshl_u32 v5, v254, s0, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_and_b32 s13, s13, 0xffff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_add_nc_u32_e32 v200, 0, v23
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x3
	buffer_load_u16 v164, v1, s[12:15], 0 offen
	buffer_load_u16 v165, v3, s[12:15], 0 offen
	buffer_load_u16 v185, v4, s[12:15], 0 offen
	buffer_load_u16 v65, v5, s[12:15], 0 offen
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v1, 32, v24
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v12, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_add3_u32 v1, 0, v22, v1
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_add_nc_u32_e32 v163, v1, v21
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v226, 0
	v_mov_b32_e32 v223, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v7, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v220, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	v_mov_b32_e32 v2, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v163, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v200 offset:40960
	ds_load_b128 v[21:24], v200 offset:40976
	ds_load_b128 v[25:28], v200 offset:41472
	ds_load_b128 v[29:32], v200 offset:41488
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	s_mov_b32 s5, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v206, s6, v36
	v_add_nc_u32_e32 v209, s6, v35
	v_add_nc_u32_e32 v208, s6, v34
	v_add_nc_u32_e32 v13, s6, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s6, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v207, s7, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v207 offset:3328
	ds_load_u8 v2, v207 offset:3072
	ds_load_u8 v3, v207 offset:3840
	ds_load_u8 v4, v207 offset:3584
	ds_load_u8 v5, v207 offset:2304
	ds_load_u8 v6, v207 offset:2048
	ds_load_u8 v7, v207 offset:2816
	ds_load_u8 v8, v207 offset:2560
	ds_load_u8 v9, v207 offset:1280
	ds_load_u8 v10, v207 offset:1024
	ds_load_u8 v11, v207 offset:1792
	ds_load_u8 v12, v207 offset:1536
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[136:139], v209
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v207 offset:256
	ds_load_u8 v15, v207
	ds_load_u8 v16, v207 offset:768
	ds_load_u8 v45, v207 offset:512
	s_mov_b32 s7, s4
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v147, off offset:8
	scratch_store_b32 off, v148, off offset:12
	scratch_store_b32 off, v149, off offset:16
	scratch_store_b32 off, v150, off offset:20
	scratch_store_b32 off, v151, off offset:24
	scratch_store_b32 off, v152, off offset:28
	scratch_store_b32 off, v153, off offset:32
	scratch_store_b32 off, v154, off offset:36
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v178, off offset:48
	scratch_store_b32 off, v195, off offset:64
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	v_mov_b32_e32 v175, v235
	v_mov_b32_e32 v195, v176
	v_lshl_or_b32 v48, v2, 16, v1
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v1, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v2, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v4, v12, v11, 0xc0c0004
	v_mov_b32_e32 v176, v196
	v_mov_b32_e32 v196, v177
	v_lshl_or_b32 v47, v1, 16, v3
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v15, v14, 0xc0c0004
	v_lshl_or_b32 v46, v4, 16, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v45, v16, 0xc0c0004
	v_mov_b32_e32 v177, v197
	v_dual_mov_b32 v197, v204 :: v_dual_mov_b32 v204, v203
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v155, off offset:40
	scratch_store_b32 off, v169, off offset:80
	v_lshl_or_b32 v45, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	ds_load_u8 v9, v207 offset:7424
	ds_load_u8 v10, v207 offset:7168
	ds_load_u8 v11, v207 offset:7936
	ds_load_u8 v12, v207 offset:7680
	ds_load_u8 v53, v207 offset:6400
	ds_load_u8 v54, v207 offset:6144
	ds_load_u8 v14, v207 offset:6912
	ds_load_u8 v15, v207 offset:6656
	ds_load_u8 v61, v207 offset:5376
	ds_load_u8 v62, v207 offset:5120
	ds_load_u8 v148, v207 offset:11776
	ds_load_u8 v149, v207 offset:10496
	ds_load_u8 v151, v207 offset:11008
	ds_load_u8 v152, v207 offset:10752
	ds_load_u8 v153, v207 offset:9472
	ds_load_u8 v154, v207 offset:9216
	ds_load_u8 v203, v207 offset:10880
	ds_load_u8 v150, v207 offset:10240
	ds_load_u8 v155, v207 offset:8192
	ds_load_u8 v210, v207 offset:8960
	ds_load_u8 v211, v207 offset:8704
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[33:36], v206
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v212, v207 offset:15616
	ds_load_u8 v213, v207 offset:15360
	ds_load_u8 v214, v207 offset:16128
	ds_load_u8 v215, v207 offset:15872
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v178, v228
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v55, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v56, v12, v11, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[57:60], v13 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v207 offset:5888
	ds_load_u8 v63, v207 offset:5632
	ds_load_u8 v64, v207 offset:4352
	ds_load_u8 v144, v207 offset:4096
	ds_load_u8 v145, v207 offset:4864
	ds_load_u8 v146, v207 offset:4608
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v147, v15, v14, 0xc0c0004
	v_lshl_or_b32 v56, v56, 16, v55
	ds_load_u8 v228, v207 offset:5504
	ds_load_u8 v235, v207 offset:4736
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v168, off offset:44
	scratch_store_b32 off, v167, off offset:52
	scratch_store_b32 off, v166, off offset:56
	scratch_store_b32 off, v205, off offset:60
	scratch_store_b32 off, v192, off offset:68
	scratch_store_b32 off, v37, off offset:72
	scratch_store_b32 off, v253, off offset:76
	v_lshl_or_b32 v55, v147, 16, v53
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v53, v62, v61, 0xc0c0004
	ds_load_u8 v61, v207 offset:11520
	ds_load_u8 v62, v207 offset:11264
	ds_load_u8 v147, v207 offset:12032
	v_dual_mov_b32 v168, v250 :: v_dual_mov_b32 v167, v229
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(16)
	scratch_store_b128 off, v[33:36], off offset:84 ; 16-byte Folded Spill
	v_dual_mov_b32 v169, v230 :: v_dual_mov_b32 v190, v171
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v230, v207 offset:6016
	v_mov_b32_e32 v171, v231
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v54, v63, v54, 0xc0c0004
	ds_load_u8 v231, v207 offset:5760
	ds_load_u8 v229, v207 offset:5248
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v63, v144, v64, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v64, v146, v145, 0xc0c0004
	ds_load_u8 v144, v207 offset:9984
	ds_load_u8 v145, v207 offset:9728
	ds_load_u8 v146, v207 offset:8448
	v_lshl_or_b32 v54, v54, 16, v53
	v_dual_mov_b32 v191, v172 :: v_dual_mov_b32 v188, v173
	v_lshl_or_b32 v53, v64, 16, v63
	v_perm_b32 v63, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v62, v148, v147, 0xc0c0004
	v_perm_b32 v147, v152, v151, 0xc0c0004
	v_perm_b32 v148, v154, v153, 0xc0c0004
	ds_load_u8 v149, v207 offset:3456
	ds_load_u8 v150, v207 offset:3200
	ds_load_u8 v151, v207 offset:3968
	ds_load_u8 v152, v207 offset:3712
	ds_load_u8 v153, v207 offset:2432
	ds_load_u8 v154, v207 offset:2176
	v_mov_b32_e32 v172, v232
	v_lshl_or_b32 v64, v62, 16, v61
	v_lshl_or_b32 v63, v147, 16, v63
	ds_load_u8 v232, v207 offset:4480
	v_dual_mov_b32 v173, v233 :: v_dual_mov_b32 v174, v234
	ds_load_u8 v233, v207 offset:4224
	ds_load_u8 v234, v207 offset:4992
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v145, v155, v146, 0xc0c0004
	v_perm_b32 v146, v211, v210, 0xc0c0004
	v_perm_b32 v155, v215, v214, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[41:44], v13 offset:3072
	ds_load_b128 v[49:52], v13 offset:2048
	ds_load_b128 v[140:143], v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v62, v144, 16, v148
	v_perm_b32 v148, v213, v212, 0xc0c0004
	v_lshl_or_b32 v61, v146, 16, v145
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v144, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v145, v152, v151, 0xc0c0004
	v_mov_b32_e32 v4, s7
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v146, v154, v153, 0xc0c0004
	ds_load_u8 v147, v207 offset:2944
	ds_load_u8 v149, v207 offset:2688
	ds_load_u8 v150, v207 offset:1408
	ds_load_u8 v151, v207 offset:1152
	ds_load_u8 v152, v207 offset:1920
	ds_load_u8 v153, v207 offset:1664
	ds_load_u8 v154, v207 offset:384
	ds_load_u8 v210, v207 offset:128
	ds_load_u8 v211, v207 offset:896
	ds_load_u8 v212, v207 offset:640
	ds_load_u8 v213, v207 offset:7552
	ds_load_u8 v214, v207 offset:7296
	ds_load_u8 v215, v207 offset:8064
	ds_load_u8 v216, v207 offset:7808
	ds_load_u8 v217, v207 offset:6528
	ds_load_u8 v225, v207 offset:6272
	ds_load_u8 v226, v207 offset:7040
	ds_load_u8 v227, v207 offset:6784
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[33:36], v209 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v218, v207 offset:14592
	ds_load_u8 v219, v207 offset:14336
	ds_load_u8 v220, v207 offset:15104
	ds_load_u8 v221, v207 offset:14848
	ds_load_u8 v222, v207 offset:13568
	ds_load_u8 v223, v207 offset:13312
	ds_load_u8 v224, v207 offset:14080
	v_mov_b32_e32 v3, s6
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v147, v149, v147, 0xc0c0004
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v8, s11
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v149, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v150, v153, v152, 0xc0c0004
	ds_load_u8 v153, v207 offset:13824
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v151, v210, v154, 0xc0c0004
	v_dual_mov_b32 v205, v252 :: v_dual_mov_b32 v192, v251
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v152, v212, v211, 0xc0c0004
	v_lshl_or_b32 v253, v145, 16, v144
	v_lshl_or_b32 v252, v147, 16, v146
	v_lshl_or_b32 v251, v150, 16, v149
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v144, v214, v213, 0xc0c0004
	v_lshl_or_b32 v250, v152, 16, v151
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v145, v216, v215, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v146, v225, v217, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v151, v227, v226, 0xc0c0004
	v_perm_b32 v152, v229, v228, 0xc0c0004
	v_perm_b32 v154, v231, v230, 0xc0c0004
	v_perm_b32 v225, v233, v232, 0xc0c0004
	v_perm_b32 v226, v235, v234, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[45:48], v[140:143], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[210:217], v[250:253], v[140:143], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v147, v145, 16, v144
	v_lshl_or_b32 v146, v151, 16, v146
	v_lshl_or_b32 v145, v154, 16, v152
	v_lshl_or_b32 v144, v226, 16, v225
	v_wmma_i32_16x16x16_iu8 v[9:16], v[53:56], v[136:139], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v151, v219, v218, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v152, v221, v220, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v154, v223, v222, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v153, v224, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[210:217], v[144:147], v[136:139], v[210:217] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[218:225], v[45:48], v[57:60], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[226:233], v[250:253], v[57:60], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v179, v236 :: v_dual_mov_b32 v180, v237
	v_mov_b32_e32 v181, v238
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v187.l, v165.l
	v_mov_b16_e64 v165.l, v164.l
	v_dual_mov_b32 v164, v163 :: v_dual_mov_b32 v163, v162
	v_dual_mov_b32 v162, v161 :: v_dual_mov_b32 v161, v160
	v_dual_mov_b32 v160, v159 :: v_dual_mov_b32 v159, v158
	v_dual_mov_b32 v158, v157 :: v_dual_mov_b32 v157, v103
	v_dual_mov_b32 v103, v102 :: v_dual_mov_b32 v102, v101
	v_dual_mov_b32 v101, v99 :: v_dual_mov_b32 v100, v184
	v_dual_mov_b32 v99, v182 :: v_dual_mov_b32 v184, v241
	v_dual_mov_b32 v182, v239 :: v_dual_mov_b32 v183, v240
	v_wmma_i32_16x16x16_iu8 v[234:241], v[45:48], v[49:52], v[1:8] neg_lo:[1,1,0]
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v0.l, v185.l
	v_dual_mov_b32 v185, v243 :: v_dual_mov_b32 v186, v244
	v_mov_b32_e32 v189, v242
	v_wmma_i32_16x16x16_iu8 v[242:249], v[250:253], v[49:52], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[45:48], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[250:253], v[41:44], v[1:8] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[44:47], v209 offset:3072
	scratch_store_b128 off, v[33:36], off offset:100 ; 16-byte Folded Spill
	scratch_load_b128 v[35:38], off, off offset:100 ; 16-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v149, v207 offset:11648
	ds_load_u8 v150, v207 offset:11392
	v_mov_b32_e32 v166, v202
	ds_load_u8 v202, v207 offset:11904
	ds_load_u8 v33, v207 offset:10624
	ds_load_u8 v34, v207 offset:10368
	ds_load_u8 v82, v207 offset:11136
	ds_load_u8 v50, v207 offset:9600
	ds_load_u8 v51, v207 offset:9344
	ds_load_u8 v52, v207 offset:10112
	ds_load_u8 v57, v207 offset:9856
	ds_load_u8 v58, v207 offset:8576
	ds_load_u8 v59, v207 offset:8320
	ds_load_u8 v60, v207 offset:9088
	ds_load_u8 v250, v207 offset:8832
	v_lshl_or_b32 v43, v155, 16, v148
	v_lshl_or_b32 v42, v152, 16, v151
	v_lshl_or_b32 v41, v153, 16, v154
	ds_load_u8 v152, v207 offset:15232
	ds_load_u8 v153, v207 offset:14976
	ds_load_u8 v154, v207 offset:13696
	ds_load_u8 v155, v207 offset:13440
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[136:143], v[53:56], v[44:47], v[136:143] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v51, v57, v52, 0xc0c0004
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v207 offset:12160
	ds_load_u8 v57, v207 offset:12800
	v_perm_b32 v82, v203, v82, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v59, v250, v60, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[144:147], v[44:47], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v47, v51, 16, v50
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[250:253], v206 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v46, v59, 16, v58
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v59, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v48, v202, v150, 0xc0c0004
	v_perm_b32 v150, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v49, v48, 16, v149
	v_lshl_or_b32 v48, v82, 16, v150
	ds_load_u8 v82, v207 offset:12544
	ds_load_u8 v148, v207 offset:12288
	ds_load_u8 v149, v207 offset:13056
	ds_load_u8 v60, v207 offset:15744
	ds_load_u8 v150, v207 offset:15488
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v58, v57, v149, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[218:225], v[53:56], v[35:38], v[218:225] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[226:233], v[144:147], v[35:38], v[226:233] neg_lo:[1,1,0]
	scratch_load_b128 v[33:36], off, off offset:84 ; 16-byte Folded Reload
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[37:40], v209 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[234:241], v[53:56], v[37:40], v[234:241] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[242:249], v[144:147], v[37:40], v[242:249] neg_lo:[1,1,0]
	ds_load_u8 v37, v207 offset:16256
	ds_load_u8 v38, v207 offset:16000
	ds_load_u8 v39, v207 offset:14720
	ds_load_u8 v151, v207 offset:14464
	ds_load_u8 v44, v207 offset:14208
	ds_load_u8 v45, v207 offset:13952
	ds_load_u8 v202, v207 offset:12672
	ds_load_u8 v203, v207 offset:12416
	ds_load_u8 v209, v207 offset:13184
	ds_load_u8 v207, v207 offset:12928
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[144:147], v206 offset:1024
	ds_load_b128 v[50:53], v208 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v40, v148, v82, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[54:57], v208
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[234:241], v[61:64], v[250:253], v[234:241] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[242:249], v[46:49], v[250:253], v[242:249] neg_lo:[1,1,0]
	v_dual_mov_b32 v251, v192 :: v_dual_mov_b32 v252, v205
	v_lshl_or_b32 v40, v58, 16, v40
	v_perm_b32 v58, v150, v60, 0xc0c0004
	v_mov_b32_e32 v250, v168
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v45, v203, v202, 0xc0c0004
	v_perm_b32 v38, v151, v39, 0xc0c0004
	v_perm_b32 v39, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v60, v207, v209, 0xc0c0004
	v_lshl_or_b32 v151, v37, 16, v58
	v_lshl_or_b32 v149, v44, 16, v59
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[226:233], v[46:49], v[144:147], v[226:233] neg_lo:[1,1,0]
	v_lshl_or_b32 v150, v39, 16, v38
	v_lshl_or_b32 v148, v60, 16, v45
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[152:155], v208 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[218:225], v[61:64], v[144:147], v[218:225] neg_lo:[1,1,0]
	scratch_load_b32 v147, off, off offset:8 ; 4-byte Folded Reload
	v_dual_mov_b32 v203, v204 :: v_dual_mov_b32 v202, v166
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[226:233], v[148:151], v[50:53], v[226:233] neg_lo:[1,1,0]
	v_mov_b32_e32 v204, v197
	v_mov_b32_e32 v197, v177
	v_mov_b32_e32 v177, v196
	v_mov_b32_e32 v196, v176
	v_cvt_f32_i32_e32 v58, v230
	v_mov_b32_e32 v230, v169
	scratch_load_b32 v169, off, off offset:80 ; 4-byte Folded Reload
	v_mov_b32_e32 v176, v195
	v_wmma_i32_16x16x16_iu8 v[218:225], v[40:43], v[50:53], v[218:225] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v59, v231
	v_mov_b32_e32 v231, v171
	v_mov_b32_e32 v171, v190
	v_cvt_f32_i32_e32 v60, v232
	v_cvt_f32_i32_e32 v50, v222
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[234:241], v[40:43], v[152:155], v[234:241] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[242:249], v[148:151], v[152:155], v[242:249] neg_lo:[1,1,0]
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v155, off, off offset:40
	scratch_load_b32 v154, off, off offset:36
	scratch_load_b32 v153, off, off offset:32
	scratch_load_b32 v152, off, off offset:28
	v_cvt_f32_i32_e32 v51, v223
	v_cvt_f32_i32_e32 v52, v224
	v_cvt_f32_i32_e32 v53, v225
	v_mov_b32_e32 v232, v172
	v_mov_b32_e32 v172, v191
	s_waitcnt vmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[61:64], v[33:36], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[210:217], v[46:49], v[33:36], v[210:217] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[33:36], v206 offset:3072
	ds_load_b128 v[206:209], v208 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[40:43], v[54:57], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[210:217], v[148:151], v[54:57], v[210:217] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v57, v229
	v_mov_b32_e32 v229, v167
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v253, off, off offset:76
	scratch_load_b32 v37, off, off offset:72
	scratch_load_b32 v192, off, off offset:68
	scratch_load_b32 v205, off, off offset:60
	scratch_load_b32 v166, off, off offset:56
	scratch_load_b32 v167, off, off offset:52
	scratch_load_b32 v168, off, off offset:44
	v_cvt_f32_i32_e32 v56, v228
	v_mov_b32_e32 v228, v178
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v195, off, off offset:64
	scratch_load_b32 v178, off, off offset:48
	v_cvt_f32_i32_e32 v39, v211
	v_cvt_f32_i32_e32 v44, v216
	v_cvt_f32_i32_e32 v45, v217
	v_cvt_f32_i32_e32 v54, v226
	v_cvt_f32_i32_e32 v55, v227
	v_cvt_f32_i32_e32 v211, v242
	v_mov_b32_e32 v242, v189
	v_cvt_f32_i32_e32 v216, v247
	v_cvt_f32_i32_e32 v217, v248
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[46:49], v[33:36], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[61:64], v[33:36], v[136:143] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v33, v9
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v11
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[148:151], v[206:209], v[1:8] neg_lo:[1,1,0]
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v151, off, off offset:24
	scratch_load_b32 v150, off, off offset:20
	scratch_load_b32 v149, off, off offset:16
	scratch_load_b32 v148, off, off offset:12
	v_wmma_i32_16x16x16_iu8 v[136:143], v[40:43], v[206:209], v[136:143] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v12
	v_cvt_f32_i32_e32 v12, v13
	v_cvt_f32_i32_e32 v13, v14
	v_cvt_f32_i32_e32 v14, v15
	v_cvt_f32_i32_e32 v15, v16
	v_cvt_f32_i32_e32 v16, v210
	v_cvt_f32_i32_e32 v40, v212
	v_cvt_f32_i32_e32 v41, v213
	v_cvt_f32_i32_e32 v42, v214
	v_cvt_f32_i32_e32 v43, v215
	v_cvt_f32_i32_e32 v46, v218
	v_cvt_f32_i32_e32 v47, v219
	v_cvt_f32_i32_e32 v48, v220
	v_cvt_f32_i32_e32 v49, v221
	v_cvt_f32_i32_e32 v61, v233
	v_mov_b32_e32 v233, v173
	v_mov_b32_e32 v173, v188
	v_cvt_f32_i32_e32 v62, v234
	v_mov_b32_e32 v234, v174
	v_cvt_f32_i32_e32 v63, v235
	v_mov_b32_e32 v235, v175
	v_cvt_f32_i32_e32 v64, v236
	v_mov_b32_e32 v236, v179
	v_cvt_f32_i32_e32 v206, v237
	v_mov_b32_e32 v237, v180
	v_cvt_f32_i32_e32 v207, v238
	v_mov_b32_e32 v238, v181
	v_cvt_f32_i32_e32 v208, v239
	v_dual_mov_b32 v239, v182 :: v_dual_mov_b32 v182, v99
	v_mov_b32_e32 v99, v101
	v_dual_mov_b32 v101, v102 :: v_dual_mov_b32 v102, v103
	v_mov_b32_e32 v103, v157
	v_dual_mov_b32 v157, v158 :: v_dual_mov_b32 v158, v159
	v_dual_mov_b32 v159, v160 :: v_dual_mov_b32 v160, v161
	v_dual_mov_b32 v161, v162 :: v_dual_mov_b32 v162, v163
	v_mov_b32_e32 v163, v164
	v_mov_b16_e64 v164.l, v165.l
	v_mov_b16_e64 v165.l, v187.l
	v_cvt_f32_i32_e32 v209, v240
	v_mov_b32_e32 v240, v183
	v_cvt_f32_i32_e32 v210, v241
	v_mov_b32_e32 v241, v184
	v_mov_b32_e32 v184, v100
	v_cvt_f32_i32_e32 v212, v243
	v_mov_b32_e32 v243, v185
	v_mov_b16_e64 v185.l, v0.l
	v_cvt_f32_i32_e32 v213, v244
	v_mov_b32_e32 v244, v186
	v_cvt_f32_i32_e32 v214, v245
	v_mov_b32_e32 v245, v33
	v_cvt_f32_i32_e32 v215, v246
	v_cvt_f32_i32_e32 v218, v249
	v_cvt_f32_i32_e32 v219, v136
	v_cvt_f32_i32_e32 v220, v137
	v_cvt_f32_i32_e32 v221, v138
	v_cvt_f32_i32_e32 v222, v139
	v_cvt_f32_i32_e32 v223, v140
	v_cvt_f32_i32_e32 v224, v141
	v_cvt_f32_i32_e32 v225, v142
	v_cvt_f32_i32_e32 v226, v143
	v_cvt_f32_i32_e32 v227, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_11:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s49, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s49, s0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 7
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s48, s48, s27
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s0, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s50
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v33, v102, s1, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v103, s0, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v35, v99, s0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v36, v254, s0, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v34, v33, s[28:31], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v33, v101, s0, 1
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	s_clause 0x3
	buffer_load_u16 v38, v1, s[12:15], 0 offen
	buffer_load_u16 v82, v33, s[12:15], 0 offen
	buffer_load_u16 v35, v35, s[12:15], 0 offen
	buffer_load_u16 v36, v36, s[12:15], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v1.h, v65.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v100, v31, v1
	v_mul_f32_e32 v102, v29, v1
	v_mul_f32_e32 v136, v27, v1
	v_mul_f32_e32 v138, v25, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v100, v100, v161, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v102, v102, v159, v133
	v_fma_f32 v136, v136, v157, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v100, v135, v100, s3
	v_cndmask_b32_e64 v102, v133, v102, s3
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt vmcnt(5)
	v_lshrrev_b32_e32 v33, 1, v0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v99, v32, v1 :: v_dual_lshlrev_b32 v38, 16, v38
	v_mul_f32_e32 v101, v30, v1
	v_mul_f32_e32 v103, v28, v1
	v_mul_f32_e32 v137, v26, v1
	v_mul_f32_e32 v139, v24, v1
	v_mul_f32_e32 v140, v23, v1
	v_mul_f32_e32 v141, v22, v1
	v_mul_f32_e32 v142, v21, v1
	v_mul_f32_e32 v143, v20, v1
	v_mul_f32_e32 v144, v19, v1
	v_mul_f32_e32 v145, v18, v1
	v_mul_f32_e32 v146, v17, v1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v1.h, v185.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v99, v99, v162, v128
	v_fma_f32 v101, v101, v160, v134
	v_fma_f32 v103, v103, v158, v132
	v_fma_f32 v137, v137, v184, v130
	v_fma_f32 v139, v139, v154, v127
	v_fma_f32 v140, v140, v153, v126
	v_fma_f32 v141, v141, v152, v125
	v_fma_f32 v142, v142, v151, v124
	v_fma_f32 v143, v143, v150, v123
	v_fma_f32 v144, v144, v149, v122
	v_fma_f32 v145, v145, v148, v121
	v_fma_f32 v146, v146, v147, v120
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v148, v31, v1
	v_mul_f32_e32 v149, v30, v1
	v_mul_f32_e32 v150, v29, v1
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v152, v27, v1 :: v_dual_lshlrev_b32 v35, 16, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v138, v138, v155, v129
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v147, v32, v1
	v_mul_f32_e32 v151, v28, v1
	v_mul_f32_e32 v153, v26, v1
	v_mul_f32_e32 v154, v25, v1
	v_mul_f32_e32 v155, v24, v1
	v_mul_f32_e32 v184, v23, v1
	v_mul_f32_e32 v185, v22, v1
	v_mul_f32_e32 v186, v21, v1
	v_mul_f32_e32 v187, v20, v1
	v_mul_f32_e32 v188, v19, v1
	v_mul_f32_e32 v189, v18, v1
	v_mul_f32_e32 v190, v17, v1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v1.h, v165.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v99, v128, v99, s3
	v_cndmask_b32_e64 v101, v134, v101, s3
	v_cndmask_b32_e64 v103, v132, v103, s3
	v_cndmask_b32_e64 v128, v131, v136, s3
	v_cndmask_b32_e64 v130, v130, v137, s3
	v_cndmask_b32_e64 v129, v129, v138, s3
	v_cndmask_b32_e64 v127, v127, v139, s3
	v_cndmask_b32_e64 v125, v125, v141, s3
	v_cndmask_b32_e64 v124, v124, v142, s3
	v_cndmask_b32_e64 v123, v123, v143, s3
	v_cndmask_b32_e64 v122, v122, v144, s3
	v_cndmask_b32_e64 v121, v121, v145, s3
	v_cndmask_b32_e64 v120, v120, v146, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v131, v147, v255, v119
	v_fma_f32 v132, v148, v182, v118
	v_fma_f32 v133, v149, v201, v117
	v_fma_f32 v134, v150, v199, v116
	v_fma_f32 v135, v151, v198, v115
	v_fma_f32 v136, v152, v178, v114
	v_fma_f32 v137, v153, v177, v113
	v_fma_f32 v138, v154, v176, v112
	v_fma_f32 v139, v155, v194, v111
	v_fma_f32 v141, v185, v173, v109
	v_fma_f32 v142, v186, v172, v108
	v_fma_f32 v143, v187, v171, v107
	v_fma_f32 v144, v188, v170, v106
	v_fma_f32 v145, v189, v169, v105
	v_fma_f32 v146, v190, v168, v104
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v147, v32, v1
	v_mul_f32_e32 v148, v31, v1
	v_mul_f32_e32 v150, v29, v1
	v_mul_f32_e32 v152, v27, v1
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v149, v30, v1 :: v_dual_lshlrev_b32 v36, 16, v36
	v_mul_f32_e32 v151, v28, v1
	v_mul_f32_e32 v153, v26, v1
	v_mul_f32_e32 v154, v25, v1
	v_mul_f32_e32 v155, v24, v1
	v_mul_f32_e32 v168, v23, v1
	v_mul_f32_e32 v169, v22, v1
	v_mul_f32_e32 v170, v21, v1
	v_mul_f32_e32 v171, v20, v1
	v_mul_f32_e32 v172, v19, v1
	v_mul_f32_e32 v173, v18, v1
	v_mul_f32_e32 v174, v17, v1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v1.h, v164.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v112, v112, v138, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v138, v154, v236, v91
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v119, v119, v131, s3
	v_cndmask_b32_e64 v118, v118, v132, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v17, v17, v1
	v_mul_f32_e32 v28, v28, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v91, v91, v138, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v27, v27, v1
	v_mul_f32_e32 v26, v26, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v138, v17, v156, v66
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v17, 16, v34
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v25, v25, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v28, v28, v192, v77
	v_fma_f32 v27, v27, v37, v76
	v_fma_f32 v26, v26, v253, v75
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v163, v17 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v25, v25, v252, v74
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v31, v1
	v_mul_f32_e32 v30, v30, v1
	v_mul_f32_e32 v29, v29, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v77, v28, s3
	v_cndmask_b32_e64 v76, v76, v27, s3
	v_cndmask_b32_e64 v75, v75, v26, s3
	v_cndmask_b32_e64 v74, v74, v25, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[25:28], v200 offset:41472
	v_mul_f32_e32 v32, v32, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v31, v31, v167, v80
	v_fma_f32 v30, v30, v166, v79
	v_fma_f32 v29, v29, v205, v78
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v66, v138, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v32, v32, v230, v81
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v80, v31, s3
	v_cndmask_b32_e64 v79, v79, v30, s3
	v_cndmask_b32_e64 v78, v78, v29, s3
	v_cndmask_b32_e64 v117, v117, v133, s3
	v_cndmask_b32_e64 v34, v81, v32, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[29:32], v200 offset:41488
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v116, v116, v134, s3
	v_cndmask_b32_e64 v115, v115, v135, s3
	v_cndmask_b32_e64 v114, v114, v136, s3
	v_cndmask_b32_e64 v113, v113, v137, s3
	v_cndmask_b32_e64 v107, v107, v143, s3
	v_cndmask_b32_e64 v105, v105, v145, s3
	v_cndmask_b32_e64 v104, v104, v146, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v138, v25, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v133, v149, v241, v96
	v_fma_f32 v135, v151, v239, v94
	v_fma_f32 v136, v152, v238, v93
	v_fma_f32 v137, v153, v237, v92
	v_fma_f32 v16, v138, v16, v74
	v_fma_f32 v143, v171, v234, v86
	v_fma_f32 v145, v173, v232, v84
	v_fma_f32 v146, v174, v231, v83
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v24, v24, v1
	v_mul_f32_e32 v23, v23, v1
	v_mul_f32_e32 v22, v22, v1
	v_mul_f32_e32 v21, v21, v1
	v_mul_f32_e32 v20, v20, v1
	v_mul_f32_e32 v19, v19, v1
	v_mul_f32_e32 v171, v28, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v132, v148, v243, v97
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v173, v30, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v134, v150, v240, v95
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v174, v31, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v131, v147, v244, v98
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v74, v16, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v18, v18, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v97, v97, v132, s3
	v_cndmask_b32_e64 v96, v96, v133, s3
	v_cndmask_b32_e64 v98, v98, v131, s3
	v_cndmask_b32_e64 v95, v95, v134, s3
	v_cndmask_b32_e64 v94, v94, v135, s3
	v_cndmask_b32_e64 v93, v93, v136, s3
	v_cndmask_b32_e64 v92, v92, v137, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v131, v24, v251, v73
	v_fma_f32 v132, v23, v250, v72
	v_fma_f32 v133, v22, v229, v71
	v_fma_f32 v134, v21, v228, v70
	v_fma_f32 v135, v20, v204, v69
	v_fma_f32 v136, v19, v203, v68
	v_fma_f32 v137, v18, v202, v67
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[17:20], v200 offset:40960
	ds_load_b128 v[21:24], v200 offset:40976
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v81, 16, v82
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v126, v126, v140, s3
	v_cndmask_b32_e64 v111, v111, v139, s3
	v_cndmask_b32_e64 v71, v71, v133, s3
	v_cndmask_b32_e64 v70, v70, v134, s3
	v_cndmask_b32_e64 v69, v69, v135, s3
	v_cndmask_b32_e64 v109, v109, v141, s3
	v_cndmask_b32_e64 v108, v108, v142, s3
	v_cndmask_b32_e64 v106, v106, v144, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v141, v169, v196, v88
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v84, v84, v145, s3
	v_cndmask_b32_e64 v73, v73, v131, s3
	v_cndmask_b32_e64 v72, v72, v132, s3
	v_cndmask_b32_e64 v68, v68, v136, s3
	v_cndmask_b32_e64 v67, v67, v137, s3
	v_cndmask_b32_e64 v88, v88, v141, s3
	v_cndmask_b32_e64 v86, v86, v143, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v141, v28, v38
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v133, v20, v38
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v134, v21, v38
	v_mul_f32_e32 v135, v22, v38
	v_dual_mul_f32 v150, v22, v81 :: v_dual_mul_f32 v163, v20, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v140, v184, v193, v110
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v165, v22, v35
	v_mul_f32_e32 v22, v22, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v139, v155, v195, v90
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v82, v17, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v110, v110, v140, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v136, v23, v38
	v_mul_f32_e32 v137, v24, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v90, v90, v139, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v139, v26, v38
	v_mul_f32_e32 v145, v17, v81
	v_mul_f32_e32 v149, v21, v81
	v_dual_mul_f32 v151, v23, v81 :: v_dual_mul_f32 v160, v17, v35
	v_mul_f32_e32 v164, v21, v35
	v_dual_mul_f32 v166, v23, v35 :: v_dual_mul_f32 v17, v17, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v140, v168, v197, v89
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v21, v21, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v144, v172, v233, v85
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v23, v23, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v142, v170, v235, v87
	v_fma_f32 v11, v133, v11, v69
	v_fma_f32 v12, v134, v12, v70
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v89, v140, s3
	v_cndmask_b32_e64 v85, v85, v144, s3
	v_cndmask_b32_e64 v87, v87, v142, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v131, v18, v38
	v_mul_f32_e32 v132, v19, v38
	v_mul_f32_e32 v140, v27, v38
	v_mul_f32_e32 v142, v29, v38
	v_mul_f32_e32 v143, v30, v38
	v_mul_f32_e32 v144, v31, v38
	v_dual_mul_f32 v38, v32, v38 :: v_dual_mul_f32 v155, v27, v81
	v_mul_f32_e32 v170, v27, v35
	v_mul_f32_e32 v27, v27, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v14, v136, v14, v72
	v_fma_f32 v15, v137, v15, v73
	v_fma_f32 v37, v139, v39, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v69, v11, s2
	v_cndmask_b32_e64 v12, v70, v12, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v159, v31, v81
	v_mul_f32_e32 v31, v31, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v135, v13, v71
	v_fma_f32 v39, v140, v40, v76
	v_fma_f32 v40, v141, v41, v77
	v_fma_f32 v41, v142, v42, v78
	v_fma_f32 v42, v143, v43, v79
	v_fma_f32 v38, v38, v45, v34
	v_fma_f32 v3, v27, v3, v128
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v72, v14, s2
	v_cndmask_b32_e64 v15, v73, v15, s2
	v_cndmask_b32_e64 v27, v75, v37, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v12, v12, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v83, v146, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v147, v19, v81
	v_mul_f32_e32 v153, v25, v81
	v_mul_f32_e32 v154, v26, v81
	v_mul_f32_e32 v157, v29, v81
	v_mul_f32_e32 v158, v30, v81
	v_mul_f32_e32 v161, v18, v35
	v_mul_f32_e32 v162, v19, v35
	v_mul_f32_e32 v167, v24, v35
	v_mul_f32_e32 v168, v25, v35
	v_mul_f32_e32 v169, v26, v35
	v_mul_f32_e32 v172, v29, v35
	v_mul_f32_e32 v35, v32, v35
	v_mul_f32_e32 v29, v29, v36
	v_mul_f32_e32 v30, v30, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v43, v144, v44, v80
	v_fma_f32 v7, v31, v7, v100
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v71, v13, s2
	v_cndmask_b32_e64 v31, v79, v42, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v152, v24, v81
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v34, v38, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v156, v28, v81 :: v_dual_max_f32 v71, 0, v11
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v72, 0, v12 :: v_dual_max_f32 v11, v14, v14
	v_max_f32_e32 v12, v15, v15
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v146, v18, v81
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v14, v27, v27
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v148, v20, v81
	v_mul_f32_e32 v81, v32, v81
	v_mul_f32_e32 v32, v32, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v29, v5, v102
	v_fma_f32 v6, v30, v6, v101
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v77, v40, s2
	v_cndmask_b32_e64 v30, v78, v41, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v32, v8, v99
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v80, v43, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v28, v28, v36
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v74, 0, v11 :: v_dual_max_f32 v75, 0, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v45, v146, v47, v84
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v77, 0, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v47, v148, v49, v86
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v11, v29, v29 :: v_dual_max_f32 v12, v30, v30
	v_max_f32_e32 v14, v32, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v18, v18, v36
	v_mul_f32_e32 v19, v19, v36
	v_mul_f32_e32 v20, v20, v36
	v_mul_f32_e32 v24, v24, v36
	v_mul_f32_e32 v25, v25, v36
	v_mul_f32_e32 v26, v26, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v36, v82, v245, v66
	v_fma_f32 v9, v131, v9, v67
	v_fma_f32 v44, v145, v46, v83
	v_fma_f32 v46, v147, v48, v85
	v_fma_f32 v4, v28, v4, v103
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v76, v39, s2
	v_cndmask_b32_e64 v39, v86, v47, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v32, 0, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v48, v149, v50, v87
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v78, 0, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v50, v151, v52, v89
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v80, 0, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v52, v153, v54, v91
	v_fma_f32 v2, v26, v2, v130
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v66, v36, s2
	v_cndmask_b32_e64 v9, v67, v9, s2
	v_cndmask_b32_e64 v36, v83, v44, s2
	v_cndmask_b32_e64 v37, v84, v45, s2
	v_cndmask_b32_e64 v44, v91, v52, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v14, v39, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v85, v46, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v11, v36, v36 :: v_dual_max_f32 v12, v37, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v132, v10, v68
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v83, 0, v14 :: v_dual_max_f32 v14, v44, v44
	v_max_f32_e32 v9, v9, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v25, v25, v227, v129
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v89, v50, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v39, 0, v11 :: v_dual_max_f32 v44, 0, v14
	v_max_f32_e32 v70, 0, v9
	v_max_f32_e32 v9, v13, v13
	v_max_f32_e32 v13, v16, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v68, v10, s2
	v_cndmask_b32_e64 v68, v129, v25, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v25, v26, v26
	v_max_f32_e32 v73, 0, v9
	v_max_f32_e32 v9, v28, v28
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v49, v150, v51, v88
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v76, 0, v13 :: v_dual_max_f32 v13, v31, v31
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v51, v152, v53, v90
	v_fma_f32 v53, v154, v55, v92
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v29, 0, v9
	v_max_f32_e32 v9, v34, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v55, v156, v57, v94
	v_fma_f32 v57, v158, v59, v96
	v_fma_f32 v59, v81, v61, v98
	v_fma_f32 v81, v165, v208, v109
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v88, v49, s2
	v_cndmask_b32_e64 v47, v94, v55, s2
	v_cndmask_b32_e64 v49, v96, v57, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v131, v167, v210, v111
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v109, v81, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v81, 0, v12 :: v_dual_max_f32 v12, v42, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v54, v155, v56, v93
	v_fma_f32 v56, v157, v58, v95
	v_fma_f32 v58, v159, v60, v97
	v_fma_f32 v60, v160, v62, v104
	v_fma_f32 v62, v162, v64, v106
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v87, v48, s2
	v_cndmask_b32_e64 v46, v93, v54, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v69, 0, v25 :: v_dual_max_f32 v42, 0, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v106, v62, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v12, v47, v47
	v_max_f32_e32 v14, v49, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v90, v51, s2
	v_cndmask_b32_e64 v51, v98, v59, s2
	v_cndmask_b32_e64 v52, v104, v60, s2
	v_cndmask_b32_e64 v59, v111, v131, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v11, v41, v41
	v_max_f32_e32 v47, 0, v12
	v_max_f32_e32 v49, 0, v14
	v_dual_max_f32 v14, v54, v54 :: v_dual_max_f32 v79, 0, v13
	v_dual_max_f32 v13, v38, v38 :: v_dual_max_f32 v38, 0, v9
	v_max_f32_e32 v9, v40, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v164, v207, v108
	v_fma_f32 v82, v166, v209, v110
	v_fma_f32 v134, v170, v213, v114
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v92, v53, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v12, v52, v52
	v_max_f32_e32 v54, 0, v14
	v_max_f32_e32 v14, v59, v59
	v_dual_max_f32 v40, 0, v9 :: v_dual_max_f32 v41, 0, v11
	v_max_f32_e32 v11, v46, v46
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v61, v161, v63, v105
	v_fma_f32 v63, v163, v206, v107
	v_fma_f32 v136, v172, v215, v116
	v_fma_f32 v21, v21, v223, v124
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v95, v56, s2
	v_cndmask_b32_e64 v50, v97, v58, s2
	v_cndmask_b32_e64 v56, v108, v64, s2
	v_cndmask_b32_e64 v58, v110, v82, s2
	v_cndmask_b32_e64 v62, v114, v134, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v82, 0, v13 :: v_dual_max_f32 v13, v43, v43
	v_dual_max_f32 v9, v45, v45 :: v_dual_max_f32 v46, 0, v11
	v_dual_max_f32 v11, v51, v51 :: v_dual_max_f32 v52, 0, v12
	v_max_f32_e32 v12, v57, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v132, v168, v211, v112
	v_fma_f32 v35, v35, v218, v119
	v_fma_f32 v18, v18, v220, v121
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v105, v61, s2
	v_cndmask_b32_e64 v55, v107, v63, s2
	v_cndmask_b32_e64 v64, v116, v136, s2
	v_cndmask_b32_e64 v21, v124, v21, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v51, 0, v11
	v_max_f32_e32 v11, v56, v56
	v_max_f32_e32 v43, 0, v13
	v_dual_max_f32 v57, 0, v12 :: v_dual_max_f32 v12, v62, v62
	v_max_f32_e32 v45, 0, v9
	v_max_f32_e32 v9, v50, v50
	v_max_f32_e32 v13, v48, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v135, v171, v214, v115
	v_fma_f32 v137, v173, v216, v117
	v_fma_f32 v23, v23, v225, v126
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v112, v132, s2
	v_cndmask_b32_e64 v35, v119, v35, s2
	v_cndmask_b32_e64 v18, v121, v18, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v50, 0, v9
	v_dual_max_f32 v48, 0, v13 :: v_dual_max_f32 v9, v55, v55
	v_dual_max_f32 v59, 0, v14 :: v_dual_max_f32 v14, v64, v64
	v_max_f32_e32 v13, v53, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v17, v17, v219, v120
	v_fma_f32 v19, v19, v221, v122
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v63, v115, v135, s2
	v_cndmask_b32_e64 v66, v117, v137, s2
	v_cndmask_b32_e64 v23, v126, v23, s2
	v_cndmask_b32_e64 v2, v130, v2, s2
	v_cndmask_b32_e64 v3, v128, v3, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v37, 0, v12 :: v_dual_max_f32 v34, 0, v14
	v_dual_max_f32 v53, 0, v13 :: v_dual_max_f32 v12, v35, v35
	v_max_f32_e32 v13, v58, v58
	v_dual_max_f32 v14, v18, v18 :: v_dual_max_f32 v55, 0, v9
	v_dual_max_f32 v9, v60, v60 :: v_dual_max_f32 v2, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v133, v169, v212, v113
	v_fma_f32 v22, v22, v224, v125
	v_fma_f32 v24, v24, v226, v127
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v120, v17, s2
	v_cndmask_b32_e64 v19, v122, v19, s2
	v_cndmask_b32_e64 v4, v103, v4, s2
	v_cndmask_b32_e64 v5, v102, v5, s2
	v_cndmask_b32_e64 v6, v101, v6, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v60, 0, v9 :: v_dual_max_f32 v9, v66, v66
	v_max_f32_e32 v30, 0, v12
	v_dual_max_f32 v58, 0, v13 :: v_dual_max_f32 v13, v63, v63
	v_max_f32_e32 v4, v4, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.h, v1.l
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v3, v3, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v138, v174, v217, v118
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v61, v113, v133, s2
	v_cndmask_b32_e64 v22, v125, v22, s2
	v_cndmask_b32_e64 v24, v127, v24, s2
	v_cndmask_b32_e64 v7, v100, v7, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v36, 0, v13
	v_max_f32_e32 v13, v17, v17
	v_max_f32_e32 v17, 0, v2
	v_dual_max_f32 v15, 0, v3 :: v_dual_mul_f32 v32, v32, v32
	v_dual_max_f32 v2, v5, v5 :: v_dual_max_f32 v3, v6, v6
	v_max_f32_e32 v35, 0, v9
	v_dual_max_f32 v9, v19, v19 :: v_dual_mul_f32 v18, v69, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v20, v20, v222, v123
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v118, v138, s2
	v_cndmask_b32_e64 v8, v99, v8, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v28, 0, v14
	v_max_f32_e32 v56, 0, v11
	v_max_f32_e32 v12, v21, v21
	v_max_f32_e32 v11, v61, v61
	v_max_f32_e32 v27, 0, v13
	v_dual_max_f32 v26, 0, v9 :: v_dual_max_f32 v9, v24, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v24.l, v18.h
	v_mov_b16_e32 v24.h, v1.l
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v13, v22, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v123, v20, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v22, 0, v12 :: v_dual_max_f32 v61, 0, v11
	v_max_f32_e32 v5, v8, v8
	v_max_f32_e32 v11, v67, v67
	v_dual_max_f32 v14, v23, v23 :: v_dual_max_f32 v23, 0, v13
	v_dual_max_f32 v13, 0, v4 :: v_dual_max_f32 v4, v7, v7
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v7, s27, v0
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v10, v10, v10
	v_dual_max_f32 v8, 0, v5 :: v_dual_max_f32 v31, 0, v11
	v_max_f32_e32 v11, v20, v20
	v_max_f32_e32 v19, 0, v14
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v14, v70, v70
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v10, 0, v10
	v_max_f32_e32 v20, 0, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.h, v1.l
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v9, 0, v4 :: v_dual_add_nc_u32 v4, s35, v7
	v_max_f32_e32 v25, 0, v11
	v_max_f32_e32 v11, v68, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.l, v14.h
	v_mov_b16_e32 v21.h, v1.l
	v_mov_b16_e32 v62.h, v1.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v63, v72, v72 :: v_dual_max_f32 v16, 0, v11
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v11, 0, v2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v2, s48, s33, v33
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v33, v10, v10 :: v_dual_and_b32 v10, 1, v24
	v_dual_mul_f32 v24, v71, v71 :: v_dual_and_b32 v21, 1, v21
	v_mul_f32_e32 v44, v44, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v62.l, v33.h
	v_add3_u32 v18, v18, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v10, v14, v21, 0x7fff
	v_mov_b16_e32 v14.l, v24.h
	v_mov_b16_e32 v14.h, v1.l
	v_and_b32_e32 v21, 1, v62
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v62, v73, v73
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v18.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v42, v42, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v18, v33, v21, 0x7fff
	v_mov_b16_e32 v21.l, v62.h
	v_mov_b16_e32 v33.l, v63.h
	v_mov_b16_e32 v33.h, v1.l
	v_mov_b16_e32 v21.h, v1.l
	v_add3_u32 v14, v24, v14, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v24, v74, v74
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v14.l, v18.h
	v_and_b32_e32 v18, 1, v33
	v_and_b32_e32 v21, 1, v21
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v33, v75, v75
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v24.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v65, v76, v76
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v63, v63, v18, 0x7fff
	v_add3_u32 v18, v62, v21, 0x7fff
	v_mov_b16_e32 v21.l, v33.h
	v_mov_b16_e32 v21.h, v1.l
	v_and_b32_e32 v62, 1, v64
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v64, v77, v77
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v63.h
	v_mov_b16_e32 v63.l, v65.h
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v24, v24, v62, 0x7fff
	v_mov_b16_e32 v62.l, v64.h
	v_mov_b16_e32 v63.h, v1.l
	v_mov_b16_e32 v62.h, v1.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v29, v29, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v21, v33, v21, 0x7fff
	v_mov_b16_e32 v21.l, v24.h
	v_and_b32_e32 v24, 1, v63
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v48, v48, v48 :: v_dual_and_b32 v33, 1, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v62.l, v29.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v63, v65, v24, 0x7fff
	v_add3_u32 v24, v64, v33, 0x7fff
	v_mov_b16_e32 v33.l, v32.h
	v_mov_b16_e32 v33.h, v1.l
	v_and_b32_e32 v62, 1, v62
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v64, v79, v79 :: v_dual_mul_f32 v65, v78, v78
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v24.l, v63.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v62, v29, v62, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v63.l, v64.h
	v_mov_b16_e32 v66.l, v65.h
	v_mov_b16_e32 v63.h, v1.l
	v_add3_u32 v29, v32, v33, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v33, v80, v80 :: v_dual_max_f32 v12, 0, v3
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v3, s26, v7
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v62.h
	v_and_b32_e32 v32, 1, v66
	v_and_b32_e32 v62, 1, v63
	v_mov_b16_e32 v63.l, v33.h
	.loc	1 388 15 is_stmt 1              ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v39, v39, v39
	v_dual_mul_f32 v40, v40, v40 :: v_dual_add_nc_u32 v5, 0x80, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v65, v65, v32, 0x7fff
	v_add3_u32 v32, v64, v62, 0x7fff
	v_mov_b16_e32 v62.l, v38.h
	v_mov_b16_e32 v62.h, v1.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v64, v81, v81 :: v_dual_and_b32 v63, 1, v63
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v65.h
	v_mov_b16_e32 v66.l, v39.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v62, 1, v62
	v_add3_u32 v63, v33, v63, 0x7fff
	v_mov_b16_e32 v65.l, v64.h
	v_mov_b16_e32 v65.h, v1.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v41, v41, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v38, v62, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v38, v82, v82
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v63.h
	v_and_b32_e32 v62, 1, v66
	v_and_b32_e32 v63, 1, v65
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v65, v83, v83
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v38.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v43, v43, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v39, v39, v62, 0x7fff
	v_add3_u32 v62, v64, v63, 0x7fff
	v_mov_b16_e32 v63.l, v65.h
	v_mov_b16_e32 v63.h, v1.l
	v_and_b32_e32 v64, 1, v66
	v_mov_b16_e32 v62.l, v39.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v45, v45, v45 :: v_dual_mul_f32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v39, 1, v63
	v_add3_u32 v38, v38, v64, 0x7fff
	v_mov_b16_e32 v63.l, v41.h
	v_mov_b16_e32 v64.l, v40.h
	v_mov_b16_e32 v64.h, v1.l
	v_add3_u32 v39, v65, v39, 0x7fff
	v_mov_b16_e32 v39.l, v38.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v34, v34, v34 :: v_dual_and_b32 v63, 1, v63
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v64
	v_mov_b16_e32 v64.l, v42.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v30, v30, v30
	v_mul_f32_e32 v28, v28, v28
	v_mul_f32_e32 v26, v26, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v40, v38, 0x7fff
	v_add3_u32 v40, v41, v63, 0x7fff
	v_mov_b16_e32 v41.l, v43.h
	v_mov_b16_e32 v41.h, v1.l
	v_and_b32_e32 v63, 1, v64
	v_mov_b16_e32 v40.l, v38.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v22, v22, v22
	v_mul_f32_e32 v20, v20, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v41
	v_add3_u32 v41, v42, v63, 0x7fff
	v_mov_b16_e32 v63.l, v44.h
	v_mov_b16_e32 v63.h, v1.l
	v_mov_b16_e32 v42.l, v45.h
	v_mov_b16_e32 v42.h, v1.l
	v_add3_u32 v38, v43, v38, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v43, v46, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v41.h
	v_and_b32_e32 v41, 1, v63
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v46, v47, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v42, 1, v42
	v_mov_b16_e32 v47.l, v43.h
	v_mov_b16_e32 v47.h, v1.l
	v_add3_u32 v41, v44, v41, 0x7fff
	v_mov_b16_e32 v44.l, v46.h
	v_mov_b16_e32 v44.h, v1.l
	v_add3_u32 v42, v45, v42, 0x7fff
	v_and_b32_e32 v45, 1, v47
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v47, v49, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.l, v41.h
	v_and_b32_e32 v41, 1, v44
	v_mov_b16_e32 v49.h, v1.l
	v_add3_u32 v43, v43, v45, 0x7fff
	v_mov_b16_e32 v44.l, v47.h
	v_mov_b16_e32 v45.l, v48.h
	v_mov_b16_e32 v45.h, v1.l
	v_add3_u32 v41, v46, v41, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v46, v50, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v41.l, v43.h
	v_and_b32_e32 v44, 1, v44
	v_and_b32_e32 v43, 1, v45
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v45, v51, v51
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v49.l, v46.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v50, v52, v52
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v47, v44, 0x7fff
	v_add3_u32 v43, v48, v43, 0x7fff
	v_mov_b16_e32 v47.l, v45.h
	v_mov_b16_e32 v47.h, v1.l
	v_and_b32_e32 v48, 1, v49
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v49, v53, v53
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.l, v43.h
	v_mov_b16_e32 v51.h, v1.l
	v_and_b32_e32 v43, 1, v47
	v_add3_u32 v46, v46, v48, 0x7fff
	v_mov_b16_e32 v47.l, v49.h
	v_mov_b16_e32 v48.l, v50.h
	v_mov_b16_e32 v48.h, v1.l
	v_add3_u32 v43, v45, v43, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v45, v54, v54
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v43.l, v46.h
	v_and_b32_e32 v47, 1, v47
	v_and_b32_e32 v46, 1, v48
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v48, v55, v55
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v51.l, v45.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v52, v56, v56
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v47, v49, v47, 0x7fff
	v_add3_u32 v46, v50, v46, 0x7fff
	v_mov_b16_e32 v49.l, v48.h
	v_mov_b16_e32 v49.h, v1.l
	v_and_b32_e32 v50, 1, v51
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v51, v57, v57
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v47.l, v46.h
	v_mov_b16_e32 v53.h, v1.l
	v_and_b32_e32 v46, 1, v49
	v_add3_u32 v45, v45, v50, 0x7fff
	v_mov_b16_e32 v49.l, v51.h
	v_mov_b16_e32 v50.l, v52.h
	v_mov_b16_e32 v50.h, v1.l
	v_add3_u32 v46, v48, v46, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v48, v58, v58
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.l, v45.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v16, v16, v16 :: v_dual_and_b32 v49, 1, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v45, 1, v50
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v50, v59, v59
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v53.l, v48.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v49, v51, v49, 0x7fff
	v_mov_b16_e32 v51.h, v1.l
	v_add3_u32 v45, v52, v45, 0x7fff
	v_mov_b16_e32 v51.l, v50.h
	v_and_b32_e32 v52, 1, v53
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v54, v60, v60 :: v_dual_mul_f32 v53, v61, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v49.l, v45.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v12, v12, v12 :: v_dual_and_b32 v45, 1, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v48, v48, v52, 0x7fff
	v_mov_b16_e32 v52.l, v54.h
	v_mov_b16_e32 v52.h, v1.l
	v_mov_b16_e32 v51.l, v53.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v37, v37, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v45, v50, v45, 0x7fff
	v_mov_b16_e32 v45.l, v48.h
	v_and_b32_e32 v48, 1, v52
	v_and_b32_e32 v50, 1, v51
	v_mov_b16_e32 v51.l, v37.h
	v_mov_b16_e32 v52.l, v36.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v17, v17, v17 :: v_dual_and_b32 v0, 16, v242
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v48, v54, v48, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v8, v8, v8 :: v_dual_and_b32 v51, 1, v51
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v50, v53, v50, 0x7fff
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v50.l, v48.h
	v_and_b32_e32 v48, 1, v52
	v_add3_u32 v37, v37, v51, 0x7fff
	v_mov_b16_e32 v52.l, v34.h
	v_mov_b16_e32 v51.h, v1.l
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v6, s34, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v36, v36, v48, 0x7fff
	v_mov_b16_e32 v36.l, v37.h
	v_and_b32_e32 v37, 1, v52
	.loc	1 388 15 is_stmt 1              ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v25, v25, v25
	v_mul_f32_e32 v19, v19, v19
	v_mul_f32_e32 v11, v11, v11
	v_mul_f32_e32 v13, v13, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v34, v37, 0x7fff
	v_mov_b16_e32 v37.l, v30.h
	v_mov_b16_e32 v37.h, v1.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v35, v35, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v51.l, v35.h
	v_and_b32_e32 v48, 1, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add3_u32 v35, v35, v48, 0x7fff
	v_mov_b16_e32 v35.l, v34.h
	v_and_b32_e32 v34, 1, v37
	v_mov_b16_e32 v37.l, v28.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v31, v31, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v30, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v34, 1, v37
	v_mov_b16_e32 v51.l, v31.h
	v_mov_b16_e32 v37.l, v26.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v27, v27, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v28, v34, 0x7fff
	v_and_b32_e32 v48, 1, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v34, 1, v37
	v_mov_b16_e32 v37.l, v19.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v23, v23, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v31, v48, 0x7fff
	v_mov_b16_e32 v48.l, v27.h
	v_mov_b16_e32 v48.h, v1.l
	v_add3_u32 v26, v26, v34, 0x7fff
	v_mov_b16_e32 v34.l, v22.h
	v_mov_b16_e32 v30.l, v31.h
	v_mov_b16_e32 v34.h, v1.l
	v_and_b32_e32 v31, 1, v48
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v27, v27, v31, 0x7fff
	v_mov_b16_e32 v31.l, v25.h
	v_mov_b16_e32 v31.h, v1.l
	v_mov_b16_e32 v28.l, v27.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v27, 1, v31
	v_add3_u32 v25, v25, v27, 0x7fff
	v_mov_b16_e32 v25.l, v26.h
	v_and_b32_e32 v26, 1, v37
	v_mov_b16_e32 v31.l, v23.h
	v_cndmask_b32_e32 v37, v35, v50, vcc_lo
	v_cndmask_b32_e32 v35, v50, v35, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v19, v19, v26, 0x7fff
	v_and_b32_e32 v27, 1, v31
	v_and_b32_e32 v31, 1, v34
	v_mov_b16_e32 v26.l, v16.h
	v_mov_b16_e32 v26.h, v1.l
	v_mov_b16_e32 v34.l, v20.h
	v_add3_u32 v23, v23, v27, 0x7fff
	v_add3_u32 v22, v22, v31, 0x7fff
	v_mov_b16_e32 v22.l, v17.h
	v_and_b32_e32 v26, 1, v26
	v_and_b32_e32 v27, 1, v34
	v_cndmask_b32_e32 v34, v46, v45, vcc_lo
	v_mov_b16_e32 v23.l, v22.h
	v_mov_b16_e32 v22.h, v1.l
	v_add3_u32 v16, v16, v26, 0x7fff
	v_mov_b16_e32 v16.l, v11.h
	v_cndmask_b32_e32 v26, v42, v44, vcc_lo
	v_add3_u32 v20, v20, v27, 0x7fff
	v_and_b32_e32 v22, 1, v22
	v_mov_b16_e32 v27.h, v1.l
	v_mov_b16_e32 v31.l, v13.h
	v_mov_b16_e32 v31.h, v1.l
	v_mov_b16_e32 v20.l, v19.h
	v_add3_u32 v17, v17, v22, 0x7fff
	v_mov_b16_e32 v17.l, v16.h
	v_mov_b16_e32 v16.h, v1.l
	v_mov_b16_e32 v22.l, v8.h
	v_mov_b16_e32 v22.h, v1.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v15, v15, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v19, 1, v31
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v13, v13, v19, 0x7fff
	v_add3_u32 v11, v11, v16, 0x7fff
	v_and_b32_e32 v16, 1, v22
	v_mov_b16_e32 v27.l, v15.h
	v_cndmask_b32_e32 v22, v39, v38, vcc_lo
	v_mov_b16_e32 v19.l, v9.h
	v_mov_b16_e32 v19.h, v1.l
	v_add3_u32 v0, v8, v16, 0x7fff
	v_dual_cndmask_b32 v8, v10, v18 :: v_dual_and_b32 v27, 1, v27
	v_cndmask_b32_e32 v16, v29, v33, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v15, v15, v27, 0x7fff
	v_mov_b16_e32 v15.l, v12.h
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v13.l, v15.h
	v_mov_b16_e32 v15.h, v1.l
	v_and_b32_e32 v1, 1, v19
	v_and_b32_e32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v9, v1, 0x7fff
	v_add3_u32 v9, v12, v15, 0x7fff
	v_mov_b16_e32 v9.l, v11.h
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e32 v0.l, v1.h
	v_cndmask_b32_e32 v1, v18, v10, vcc_lo
	v_cndmask_b32_e32 v10, v14, v21, vcc_lo
	v_dual_cndmask_b32 v18, v40, v62 :: v_dual_cndmask_b32 v19, v62, v40
	v_cndmask_b32_e32 v40, v9, v17, vcc_lo
	v_cndmask_b32_e32 v9, v17, v9, vcc_lo
	v_mov_b32_e32 v17, 0x5410
	v_cndmask_b32_e32 v11, v21, v14, vcc_lo
	v_cndmask_b32_e32 v21, v38, v39, vcc_lo
	v_dual_cndmask_b32 v39, v20, v25 :: v_dual_cndmask_b32 v20, v25, v20
	v_mov_b32_e32 v25, 0x7632
	v_cndmask_b32_e32 v15, v33, v29, vcc_lo
	v_cndmask_b32_e32 v27, v43, v41, vcc_lo
	v_cndmask_b32_e32 v29, v41, v43, vcc_lo
	v_dual_cndmask_b32 v41, v0, v13 :: v_dual_cndmask_b32 v0, v13, v0
	v_permlanex16_b32 v13, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v8, 0x1054, v17, vcc_lo
	v_cndmask_b32_e32 v17, 0x3276, v25, vcc_lo
	v_permlanex16_b32 v25, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v12, v24, v32, vcc_lo
	v_cndmask_b32_e32 v14, v32, v24, vcc_lo
	v_lshl_or_b32 v8, v8, 8, v8
	v_lshl_or_b32 v10, v17, 8, v17
	v_cndmask_b32_e32 v32, v47, v49, vcc_lo
	v_cndmask_b32_e32 v38, v30, v36, vcc_lo
	v_cndmask_b32_e32 v30, v36, v30, vcc_lo
	v_and_b32_e32 v8, 0x540054, v8
	v_and_b32_e32 v10, 0x760076, v10
	v_cndmask_b32_e32 v24, v44, v42, vcc_lo
	v_dual_cndmask_b32 v36, v23, v28 :: v_dual_cndmask_b32 v23, v28, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v8, v8, 4, v8
	v_lshl_or_b32 v10, v10, 4, v10
	v_cndmask_b32_e32 v31, v49, v47, vcc_lo
	v_permlanex16_b32 v28, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v43, 0x5040504, v8
	v_and_b32_e32 v44, 0x7060706, v10
	v_permlanex16_b32 v19, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v33, v45, v46, vcc_lo
	v_permlanex16_b32 v22, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v34, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v35, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v8, v13, v1, v43
	v_perm_b32 v9, v13, v1, v44
	v_perm_b32 v10, v25, v11, v43
	v_perm_b32 v11, v25, v11, v44
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v1, v2, v7, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v12, v28, v14, v43
	v_perm_b32 v13, v28, v14, v44
	v_perm_b32 v14, v16, v15, v43
	v_perm_b32 v15, v16, v15, v44
	v_permlanex16_b32 v42, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v16, v17, v18, v43
	v_perm_b32 v17, v17, v18, v44
	v_perm_b32 v18, v19, v21, v43
	v_perm_b32 v19, v19, v21, v44
	v_add_lshl_u32 v7, v2, v6, 1
	v_perm_b32 v20, v22, v24, v43
	v_perm_b32 v21, v22, v24, v44
	v_perm_b32 v22, v26, v27, v43
	v_perm_b32 v23, v26, v27, v44
	v_perm_b32 v24, v29, v31, v43
	v_perm_b32 v25, v29, v31, v44
	v_perm_b32 v28, v34, v37, v43
	v_perm_b32 v29, v34, v37, v44
	v_perm_b32 v30, v35, v38, v43
	v_perm_b32 v31, v35, v38, v44
	v_perm_b32 v34, v45, v39, v43
	v_perm_b32 v35, v45, v39, v44
	v_perm_b32 v38, v0, v41, v43
	v_perm_b32 v39, v0, v41, v44
	v_add_lshl_u32 v0, v5, v6, 1
	v_perm_b32 v26, v32, v33, v43
	v_perm_b32 v27, v32, v33, v44
	s_clause 0x2
	buffer_store_b128 v[8:11], v1, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v1, s[24:27], 0 offen offset:256
	buffer_store_b128 v[16:19], v7, s[24:27], 0 offen
	v_add_lshl_u32 v1, v2, v4, 1
	v_add_lshl_u32 v4, v5, v4, 1
	v_perm_b32 v32, v42, v36, v43
	v_perm_b32 v33, v42, v36, v44
	v_add_lshl_u32 v2, v2, v3, 1
	v_perm_b32 v36, v46, v40, v43
	v_perm_b32 v37, v46, v40, v44
	v_add_lshl_u32 v3, v5, v3, 1
	s_clause 0x4
	buffer_store_b128 v[20:23], v0, s[24:27], 0 offen
	buffer_store_b128 v[24:27], v1, s[24:27], 0 offen
	buffer_store_b128 v[28:31], v4, s[24:27], 0 offen
	buffer_store_b128 v[32:35], v2, s[24:27], 0 offen
	buffer_store_b128 v[36:39], v3, s[24:27], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 120
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
		.amdhsa_next_free_sgpr 52
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 120
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20036
; TotalNumSgprs: 54
; NumVgprs: 256
; ScratchSize: 120
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 54
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 120
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc128_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 29
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
